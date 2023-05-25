
class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  class ArgumentError < StandardError
  end
  
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  # ALLOWED_OPERATIONS.any? { |operacao| operacao == operation }
  # "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  def self.calculate(first_operand, second_operand, operation)
    if ALLOWED_OPERATIONS.any? { |operacao| operacao == operation }
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    else
      raise UnsupportedOperation
    end
  end
  
end
