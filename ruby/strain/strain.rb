class Array
  def keep
    each_with_object([]) do |obj, array|
      array << yield(obj)
    end
    def discard
      each_with_object([]) do |obj, array|
        array << yield(obj)
      end
  end
end
