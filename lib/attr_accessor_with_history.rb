class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
      #Returns nil if no value has been set. If setting word, creates the history array and adds one element 'nil'
    def #{attr_name}_history
    if #{attr_name} == nil 
      return nil
    else
        if @#{attr_name}_history == nil
          @#{attr_name}_history = [nil]
        end
        return @#{attr_name}_history
      end
    end
      #Add previous value if there is one to the history, and sets the new value
      def #{attr_name}=(value)
        if #{attr_name} != nil
          #{attr_name}_history<< #{attr_name}
        end
      @#{attr_name} = value
      end
    }
  end
   
end
  



