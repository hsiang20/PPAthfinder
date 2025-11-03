import random
import argparse

class RandomRTLGenerator:
    def __init__(self, config):
        """
        Initialize the random RTL generator with configuration parameters.
        
        Parameters from the paper:
        - num_temps: Number of temporaries (1-10) - EXACT number, not max
        - num_terms: Max number of terms on RHS of = (1-10)
        - case_prob: Probability of a case statement (0-0.2)
        - if_prob: Probability of an if statement (0-0.2)
        - temp_prob: Probability of using temporary term (0-0.2)
        - const_prob: Probability term will be constant (0-0.2)
        - negconst_prob: Probability of a negative constant (0-0.2)
        - negation_prob: Probability a term will be negated (0-0.2)
        - inp_width: Maximum input operand width (3-16)
        - out_width: Maximum output operand width (1-64)
        - mixed_prob: Probability of signed/unsigned mixing (0-1)
        - outtrunc_prob: Probability of a bit-truncated output (0-0.2)
        - outlong_prob: Probability of a bit-extended output (0-0.2)
        - reusesop_prob: Probability of SOP reuse (0-0.2)
        - lowertrunc_prob: Probability of lower-bit truncation (0-0.2)
        - uppertrunc_prob: Probability of upper-bit truncation (0-0.2)
        - typecast_prob: Probability of a typecast (0-0.5)
        - compare_prob: Probability of a compare operation (0-0.2)
        - conditional_prob: Probability of a conditional operation (0-0.2)
        - shift_prob: Probability of a shift operation (0-0.2)
        - random_seed: Random seed (1-10)
        """
        self.config = config
        random.seed(config['random_seed'])
        
        self.inp_width = config['inp_width']
        self.out_width = config['out_width']
        self.num_temps = config['num_temps']  # Use exact value, not random
        
        self.temps = []
        self.temp_widths = {}
        self.defined_temps = []  # Track temporaries that have been assigned
        self.used_input_bits = set()
        self.defined_output_bits = set()
        
    def prob_event(self, prob):
        """Return True with given probability."""
        return random.random() < prob
    
    def get_random_width(self, min_w=1, max_w=32):
        """Get a random bit width."""
        max_w = max(self.inp_width, self.out_width)
        return random.randint(min_w, max_w)
    
    def get_operand(self, current_width=None, force_input=False, only_defined=False):
        """Generate a random operand (input bit slice, temp, or constant)."""
        if current_width is None:
            current_width = self.get_random_width()
        
        # Force input usage if requested
        if force_input:
            return self._get_input_operand(current_width)
        
        # Get available temps (only those that have been assigned already)
        available_temps = self.defined_temps if only_defined else self.temps
        
        # Decide operand type
        if available_temps and self.prob_event(self.config['temp_prob']):
            # Use a temporary
            temp = random.choice(available_temps)
            temp_width = self.temp_widths[temp]
            
            # Possibly truncate or extend
            if self.prob_event(self.config['lowertrunc_prob']) and temp_width > 1:
                high = random.randint(1, temp_width - 1)
                return f"{temp}[{high}:0]", high + 1
            elif self.prob_event(self.config['uppertrunc_prob']) and temp_width > 1:
                low = random.randint(1, temp_width - 1)
                return f"{temp}[{temp_width-1}:{low}]", temp_width - low
            else:
                return temp, temp_width
        
        elif self.prob_event(self.config['const_prob']):
            # Use a constant
            is_neg = self.prob_event(self.config['negconst_prob'])
            max_val = (1 << current_width) - 1
            if is_neg and current_width > 1:
                val = -random.randint(1, max(1, max_val // 2))
                return f"-{current_width}'d{-val}", current_width
            else:
                val = random.randint(0, max_val)
                return f"{current_width}'d{val}", current_width
        
        else:
            # Use input bit slice
            return self._get_input_operand(current_width)
    
    def _get_input_operand(self, current_width):
        """Get an input operand and mark bits as used."""
        if self.inp_width == 1:
            self.used_input_bits.add(0)
            return "input_data", 1
        else:
            # Select random bit range
            width = min(current_width, self.inp_width)
            high = random.randint(width - 1, self.inp_width - 1)
            low = high - width + 1
            for i in range(low, high + 1):
                self.used_input_bits.add(i)
            if width == self.inp_width:
                return "input_data", width
            else:
                return f"input_data[{high}:{low}]", width
    
    def match_widths(self, expr1, width1, expr2, width2):
        """
        Match the widths of two expressions by padding or truncating.
        Returns (new_expr1, new_expr2, matched_width)
        """
        if width1 == width2:
            return expr1, expr2, width1
        
        target_width = max(width1, width2)
        
        # Pad expr1 if needed
        if width1 < target_width:
            pad = target_width - width1
            expr1 = f"{{{pad}'b0, {expr1}}}"
        elif width1 > target_width:
            expr1 = f"({expr1})[{target_width-1}:0]"
        
        # Pad expr2 if needed
        if width2 < target_width:
            pad = target_width - width2
            expr2 = f"{{{pad}'b0, {expr2}}}"
        elif width2 > target_width:
            expr2 = f"({expr2})[{target_width-1}:0]"
        
        return expr1, expr2, target_width
    
    def generate_expression(self, target_width, force_input=False, only_defined=False):
        """Generate a random combinational expression."""
        num_terms = random.randint(1, self.config['num_terms'])
        
        ops = ['+', '-', '*', '&', '|', '^']
        
        # Add comparison operators
        if self.prob_event(self.config['compare_prob']):
            ops.extend(['<', '>', '<=', '>=', '==', '!='])
        
        # Add shift operators
        if self.prob_event(self.config['shift_prob']):
            ops.extend(['<<', '>>'])
        
        # Start with first operand
        expr, width = self.get_operand(target_width, force_input=force_input, only_defined=only_defined)
        
        for i in range(num_terms - 1):
            op = random.choice(ops)
            # Force at least one input usage per expression
            use_input = force_input and (i == 0 or random.random() < 0.3)
            operand, op_width = self.get_operand(target_width, force_input=use_input, only_defined=only_defined)
            
            # Handle signed/unsigned mixing
            if self.prob_event(self.config['mixed_prob']):
                if self.prob_event(0.5):
                    expr = f"$signed({expr})"
                else:
                    expr = f"$unsigned({expr})"
            
            # Apply negation
            if self.prob_event(self.config['negation_prob']):
                operand = f"(~{operand})"
            
            # Match widths before applying operation
            expr, operand, matched_width = self.match_widths(expr, width, operand, op_width)
            
            expr = f"({expr} {op} {operand})"
            
            # Update width based on operation
            if op in ['<', '>', '<=', '>=', '==', '!=']:
                width = 1
            elif op in ['<<', '>>']:
                width = matched_width
            else:
                width = matched_width + 1
        
        # Handle typecasting
        if self.prob_event(self.config['typecast_prob']):
            if self.prob_event(0.5):
                expr = f"$signed({expr})"
            else:
                expr = f"$unsigned({expr})"
        
        # Truncate or extend to target width
        if width > target_width and self.prob_event(self.config['outtrunc_prob']):
            expr = f"({expr})[{target_width-1}:0]"
        elif width < target_width and self.prob_event(self.config['outlong_prob']):
            pad = target_width - width
            expr = f"{{{pad}'b0, {expr}}}"
        
        return expr, width
    
    def post_process_bitselects(self, lines):
        """
        Post-process the generated RTL to fix expressions like (expr)[bit].
        Creates intermediate temporaries for complex expressions that need bit selection.
        """
        import re
        
        processed_lines = []
        extra_temps = []
        temp_counter = 0
        
        # First pass: collect all expressions and their bit indices
        # Map from expression to list of bit indices used
        expr_to_bits = {}
        expr_to_temp_name = {}
        
        # Pattern to match both:
        # - assign output_data[X] or output_data[X:Y] = (complex_expression)[bit:bit];
        # - assign temp_X = (complex_expression)[bit:bit];
        # Where complex_expression contains parentheses or operators
        pattern = r'(\s*assign\s+(?:output_data\[\d+(?::\d+)?\]|temp_\d+)\s*=\s*)\((.+)\)\[(\d+(?::\d+)?)\]\s*;'
        
        for line in lines:
            match = re.match(pattern, line)
            if match:
                expression = match.group(2)  # The complex expression
                bit_index_str = match.group(3)  # The bit being selected (could be "N" or "N:M")
                
                # Parse bit index to get the highest bit needed
                if ':' in bit_index_str:
                    high_bit, low_bit = map(int, bit_index_str.split(':'))
                    max_bit = max(high_bit, low_bit)
                else:
                    max_bit = int(bit_index_str)
                
                # Check if this is a complex expression that needs fixing
                # Simple identifiers (like temp_2) should NOT be treated as complex
                is_simple_identifier = (
                    '(' not in expression and 
                    not any(op in expression for op in ['+', '-', '*', '&', '|', '^', '<<', '>>', '<', '>', '==', '!=', '$signed', '$unsigned'])
                )
                
                if not is_simple_identifier:
                    if expression not in expr_to_bits:
                        expr_to_bits[expression] = []
                        expr_to_temp_name[expression] = f"bitsel_temp_{temp_counter}"
                        temp_counter += 1
                    expr_to_bits[expression].append(max_bit)
        
        # Second pass: generate logic declarations with correct widths
        for expression, bit_indices in expr_to_bits.items():
            temp_name = expr_to_temp_name[expression]
            # Width needs to be at least max(bit_indices) + 1
            width = max(bit_indices) + 1
            extra_temps.append(f"    logic [{width-1}:0] {temp_name};  // Auto-generated for bit-select")
            extra_temps.append(f"    assign {temp_name} = ({expression});")
        
        # Third pass: replace problematic assignments
        for line in lines:
            match = re.match(pattern, line)
            if match:
                prefix = match.group(1)  # "    assign output_data[X] = " or "    assign temp_X = "
                expression = match.group(2)  # The complex expression
                bit_index_str = match.group(3)  # The bit being selected (could be "N" or "N:M")
                
                # Check if this is a complex expression that needs fixing
                if expression in expr_to_temp_name:
                    temp_name = expr_to_temp_name[expression]
                    processed_lines.append(f"{prefix}{temp_name}[{bit_index_str}];")
                else:
                    # Simple identifier - remove parentheses
                    processed_lines.append(f"{prefix}{expression}[{bit_index_str}];")
            else:
                processed_lines.append(line)
        
        # Insert extra temps after the main temp declarations
        if extra_temps:
            # Find where to insert (after the last "logic [" declaration)
            insert_idx = 0
            for i, line in enumerate(processed_lines):
                if line.strip().startswith("logic [") and "temp_" in line:
                    insert_idx = i + 1
            
            # If we found temp declarations, insert after them
            if insert_idx > 0:
                # Add a blank line and then the extra temps
                extra_temps.insert(0, "")
                processed_lines = processed_lines[:insert_idx] + extra_temps + processed_lines[insert_idx:]
            else:
                # No temp declarations found, insert after module declaration
                for i, line in enumerate(processed_lines):
                    if line.strip() == ");":
                        insert_idx = i + 1
                        break
                extra_temps.insert(0, "")
                processed_lines = processed_lines[:insert_idx] + extra_temps + processed_lines[insert_idx:]
        
        return processed_lines

    def generate_rtl(self):
        """Generate the complete random RTL module."""
        lines = []
        lines.append(f"module top (")
        lines.append(f"    input logic [{self.inp_width-1}:0] input_data,")
        lines.append(f"    output logic [{self.out_width-1}:0] output_data")
        lines.append(f");")
        lines.append("")
        
        # Generate exactly num_temps temporaries
        for i in range(self.num_temps):
            temp_name = f"temp_{i}"
            temp_width = self.get_random_width()
            self.temps.append(temp_name)
            self.temp_widths[temp_name] = temp_width
            lines.append(f"    logic [{temp_width-1}:0] {temp_name};")
        
        if self.temps:
            lines.append("")
        
        # Generate assignments for temporaries
        for temp in self.temps:
            target_width = self.temp_widths[temp]
            
            # Conditional assignment - only use previously defined temps
            if self.prob_event(self.config['conditional_prob']):
                cond, _ = self.get_operand(1, only_defined=True)
                expr_true, width_true = self.generate_expression(target_width, only_defined=True)
                expr_false, width_false = self.generate_expression(target_width, only_defined=True)
                # Match widths of true and false branches
                expr_true, expr_false, _ = self.match_widths(expr_true, width_true, expr_false, width_false)
                lines.append(f"    assign {temp} = {cond} ? {expr_true} : {expr_false};")
            else:
                expr, _ = self.generate_expression(target_width, only_defined=True)
                lines.append(f"    assign {temp} = {expr};")
            
            # Mark this temp as defined for subsequent assignments
            self.defined_temps.append(temp)
        
        lines.append("")
        
        # Generate output assignments to cover all bits
        output_assignments = []
        remaining_bits = list(range(self.out_width))
        
        while remaining_bits:
            # Decide how many bits to assign
            max_bits = min(len(remaining_bits), self.get_random_width(max_w=16))
            num_bits = random.randint(1, max_bits)
            
            # Select bits to assign (prefer contiguous ranges)
            if self.prob_event(0.9) and len(remaining_bits) >= num_bits:
                # Try to pick contiguous bits
                start_idx = random.randint(0, len(remaining_bits) - num_bits)
                bits_to_assign = sorted(remaining_bits)[start_idx:start_idx + num_bits]
                for bit in bits_to_assign:
                    remaining_bits.remove(bit)
                    self.defined_output_bits.add(bit)
            else:
                # Pick random bits
                bits_to_assign = []
                for _ in range(min(num_bits, len(remaining_bits))):
                    bit = random.choice(remaining_bits)
                    bits_to_assign.append(bit)
                    remaining_bits.remove(bit)
                    self.defined_output_bits.add(bit)
            
            bits_to_assign.sort(reverse=True)
            
            # Check if we need to force input usage
            unused_bits = set(range(self.inp_width)) - self.used_input_bits
            force_input = len(unused_bits) > 0 and (len(remaining_bits) < 3 or random.random() < 0.4)
            
            # Generate expression for these bits - can use all defined temps now
            expr, _ = self.generate_expression(num_bits, force_input=force_input, only_defined=False)
            
            # Helper to check if expression needs parentheses for bit-select
            def needs_parens_for_bitselect(expr):
                """Check if expression is complex and needs parentheses for bit indexing."""
                expr = expr.strip()
                # Already has outer parentheses
                if expr.startswith('(') and expr.endswith(')'):
                    return False
                # Simple identifier (temp_0, input_data, etc.) or already has bit slice
                if '[' not in expr or expr.count('[') == expr.count(']') == 1:
                    # Check if it looks like identifier or identifier[slice]
                    base = expr.split('[')[0]
                    if base.replace('_', '').replace('input', '').replace('temp', '').replace('data', '').isdigit() or base == 'input_data' or base.startswith('temp_'):
                        return False
                return True
            
            # Generate clean assignment - only contiguous ranges on LHS
            if len(bits_to_assign) == 1:
                output_assignments.append(f"    assign output_data[{bits_to_assign[0]}] = {expr};")
            else:
                high = bits_to_assign[0]
                low = bits_to_assign[-1]
                if high == low + len(bits_to_assign) - 1:
                    # Contiguous range - simple assignment
                    output_assignments.append(f"    assign output_data[{high}:{low}] = {expr};")
                else:
                    # Non-contiguous - assign individually with smart parenthesis handling
                    for i, bit in enumerate(bits_to_assign):
                        if needs_parens_for_bitselect(expr):
                            output_assignments.append(f"    assign output_data[{bit}] = ({expr})[{i}];")
                        else:
                            output_assignments.append(f"    assign output_data[{bit}] = {expr}[{i}];")
        
        # If there are still unused input bits, modify existing assignments to include them
        unused_bits = set(range(self.inp_width)) - self.used_input_bits
        if unused_bits:
            # Modify existing output assignments by ORing in unused input bits
            for unused_bit in sorted(unused_bits):
                # Pick a random assignment to modify
                if output_assignments:
                    idx = random.randint(0, len(output_assignments) - 1)
                    line = output_assignments[idx]
                    # Extract the assignment (before the semicolon)
                    # Pattern: "    assign output_data[...] = expr;"
                    if " = " in line and line.endswith(";"):
                        parts = line.split(" = ", 1)
                        prefix = parts[0]  # "    assign output_data[...]"
                        expr = parts[1][:-1]  # expression without semicolon
                        # Modify the expression to include the unused input bit
                        modified_expr = f"({expr} | input_data[{unused_bit}])"
                        output_assignments[idx] = f"{prefix} = {modified_expr};"
                        self.used_input_bits.add(unused_bit)
        
        lines.extend(output_assignments)
        
        lines.append("")
        lines.append("endmodule")
        
        # Post-process to fix bit-select expressions
        lines = self.post_process_bitselects(lines)
        
        return "\n".join(lines)


# Example usage
if __name__ == "__main__":
    config = {
        'num_temps': 4,
        'num_terms': 4,
        'temp_prob': 0.3,
        'const_prob': 0.1,
        'negconst_prob': 0.1,
        'negation_prob': 0.1,
        'inp_width': 16,
        'out_width': 32,
        'mixed_prob': 0.3,
        'outtrunc_prob': 0.1,
        'outlong_prob': 0.1,
        'lowertrunc_prob': 0.1,
        'uppertrunc_prob': 0.1,
        'typecast_prob': 0.2,
        'compare_prob': 0.1,
        'conditional_prob': 0.15,
        'shift_prob': 0.1,
        'random_seed': 1
    }

    parser = argparse.ArgumentParser(description='Generate random RTL modules')
    parser.add_argument('-o', '--output', type=str, help='Output Verilog file path (if not specified, prints to stdout)')
    args = parser.parse_args()
    
    generator = RandomRTLGenerator(config)
    rtl_code = generator.generate_rtl()
    if args.output:
        with open(args.output, 'w') as f:
            f.write(rtl_code)
        print(f"Verilog module written to {args.output}")
    else:
        print(rtl_code)
    print(f"\n// Statistics:")
    print(f"// Input width: {generator.inp_width}")
    print(f"// Output width: {generator.out_width}")
    print(f"// Number of temps: {generator.num_temps}")
    print(f"// Used input bits: {len(generator.used_input_bits)}/{generator.inp_width}")
    print(f"// Defined output bits: {len(generator.defined_output_bits)}/{generator.out_width}")