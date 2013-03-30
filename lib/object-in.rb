require "object-in/version"

class Object
  def in?(array)

    unless array.is_a? Array
      raise TypeError, "Object#in? can only accept an array parameter"
    end

    array.include? self

  end
end
