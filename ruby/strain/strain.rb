class Array
  def keep
    each_with_object([]) do |obj, array|
      array << obj if yield(obj) == true
    end
  end
    def discard
      each_with_object([]) do |obj, array|
        array << obj if yield(obj) == false
      end
    end
  end
