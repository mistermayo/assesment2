class Contact
  @@contacts = []
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @number = attributes.fetch(:number)
    @id = @@contacts.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:number) do
    @number
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:find) do |identification|
    found_contacts = []
    @@contacts.each() do |contact|
      if contact.name().eql?(identification)
        found_contacts.push(contact)
      end
    end

     found_contacts
  end
end
