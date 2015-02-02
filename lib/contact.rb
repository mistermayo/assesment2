class Contact
  @@contacts = []
  attr_reader(:name, :numbers, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @numbers = []
    @id = @@contacts.length().+(1)
  end

  define_method(:add_number) do |new_number|
    @numbers.push(new_number)
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts = []
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
