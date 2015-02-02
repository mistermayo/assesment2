class Phone
  @@phones = []
  attr_reader(:type, :number, :id)


  define_method(:initialize) do |attributes|
    @type = attributes[:type]
    new_number = attributes[:number]
    @number = new_number.to_i()
    @id = @@phones.length() + 1
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:all) do
    @@phones
  end
  
  define_singleton_method(:clear) do
    @@phones = []
  end

  define_singleton_method(:find) do |id|
    found_number = nil
    @@phones.each() do |new_number|
      if new_number.id().eql?(id.to_i())
        found_number = new_number
      end
    end
    found_number
  end
end
