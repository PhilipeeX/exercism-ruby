=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end
require 'pry-byebug'
module ListOps
    def self.arrays(arrays)
        arrays.size
    end

    def self.reverser(array)
        # binding.pry
        i = array.length - 1
        new_array = []
        while i >= 0
            new_array << array[i]
            i -= 1
        end
        return new_array
    end

    def self.concatter(array1, array2)
        i = 0
        while i < array2.length
            array1.push(array2[i])
            i += 1
        end
        return array1
    end

    def self.mapper(array)
        if block_given?
            i = 0
            while i < array.length
                array[i] = yield(array[i])
                i += 1
            end
        end
        return array
    end

end

