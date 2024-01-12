=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

# Spit out rows and columns from a given matrix
class Matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def row(index)
    if @matrix.include?("\n")
      rows = @matrix.split(/\n/)
      selected_row = rows[index - 1]
    else
      selected_row = @matrix
    end

    selected_row.scan(/\d+/).map(&:to_i)
  end

  def column(index)

  end
end
