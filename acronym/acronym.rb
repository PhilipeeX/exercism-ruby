=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
    def self.abbreviate(string)
        acronym = []
        string.gsub(/[,-]/, ' ').split(' ').each do |palavra|
            acronym << palavra[0].upcase
        end
        acronym.join
    end
end