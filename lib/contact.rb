class Contact
  @@contacts = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @number = attributes.fetch(:number)
    @id = attributes.fetch(:id)
  end

  define_method(:number) do
    @number
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
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
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(identification.to_i())
        found_contact = contact
      end
    end
    found_contact
  end
end
