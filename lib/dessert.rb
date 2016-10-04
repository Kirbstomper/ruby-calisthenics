class Dessert
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    return calories<200
  end
  def name=(name)
    @name = name
  end
  def name
    return @name
  end
  
  def calories
    return @calories
  end
  
  def calories=(calories)
    @calories = calories
  end
  
  def delicious?
    # your code here
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  
  end
  
  def flavor
    return @flavor
  end
  
  def flavor=(flavor)
    @flavor = flavor
    @name = "#{flavor} jelly bean" #Changed the name to match the new flavor
  end
  
  def delicious?
    return (flavor != "licorice")#Returns if its delicious or not by checking if the flavor is licorice
  end
end
