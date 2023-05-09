=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end

# modulo que determina se um ano é considerado 'leap' ou não de acordo com a(s) especificações/ lógica
module Year
  def self.leap?(ano)
    if ano % 4 == 0
      if ano % 100 == 0 && ano % 400 == 0
        true
      elsif ano % 100 == 0
        false
      else
        true
      end
    else
      false
    end
  end
end
