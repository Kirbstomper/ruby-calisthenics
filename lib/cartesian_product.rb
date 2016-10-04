#class CartesianProduct
 # include Enumerable
   # YOUR CODE HERE
   
#end

class CartesianProduct
    include Enumerable
    def initialize(num_1,num_2)
        @num_1 = num_1
        @num_2 = num_2
    end

    def each()
        if block_given?
            alls1,alls2 = @num_1.size, @num_2.size
            (0...alls1).each do |i|
                (0...alls2).each do |j|
                    output = [@num_1[i],@num_2[j]]
                    yield output
                end
            end
       
        end
    end    
end

