require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#name") do
    it("returns the name of the contact") do
      test_contact = Contact.new({ :name => "Bill", :number => 4154105984, :id => 1 })
      expect(test_contact.name()).to(eq("Bill"))
    end
  end

  describe('#add_number') do
    it('adds a new number to the list of stored numbers') do
      test_contact = Contact.new({ :name => "Bill", :number => 4154105984, :id => 1 })
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      test_contact.add_number(test_type)
      expect(test_contact.numbers()).to(eq([test_type]))
    end
  end

  describe('#id') do
    it('returns the id of a contact') do
      test_contact = Contact.new({ :name => "Billy" })
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacta") do
      Contact.new({ :name => "Bill", :number => 4154105984, :id => 1 }).save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a contact to the array of saved contacts") do
      test_contact1 = Contact.new({ :name => "Bill", :number => 4154105984, :id => 1 })
      test_contact1.save()
      expect(Contact.all()).to(eq([test_contact1]))
    end
  end

  describe(".find") do
    it("returns a contact by the persons id number") do
      test_contact1 = Contact.new({ :name => "Bill" })
      test_contact1.save()
      test_contact2 = Contact.new({ :name => "Ralph" })
      test_contact2.save()
      expect(Contact.find(test_contact1.id())).to(eq(test_contact1))
    end
  end
end
