
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if second_operand == 0
      raise "Division by zero is not allowed."
    end
    begin
      # require 'pry-byebug'; binding.pry
      if ALLOWED_OPERATIONS.any? {|operacao| operacao == operation}
        "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
      end
    rescue UnsupportedOperation => e
      puts "Operação não suportada: #{e.message}"
    end
  end
end