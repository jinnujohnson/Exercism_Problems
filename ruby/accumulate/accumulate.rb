#class Array
  def accumulate
    each_with_object([]) do |obj, array|
      array << yield(obj)
    end
  end
#end
