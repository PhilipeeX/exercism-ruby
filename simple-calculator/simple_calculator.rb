require 'pry-byebug'
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  begin
    def self.calculate(first_operand, second_operand, operation)
          binding.pry
      if operation == "/" && second_operand == 0
        return "Division by zero is not allowed."
      elsif first_operand.class != Integer || second_operand.class != Integer
        raise ArgumentError, "O valores de entrada devem ser números"
      elsif 
        "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
      end
    end
  rescue => e
    raise UnsupportedOperation
  end
end