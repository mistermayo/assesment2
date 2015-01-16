require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end
end
  describe("#name") do
    it("returns the name of the contact") do
      test_contact = Contact.new({ :name => "Bill", :number => 4154105984 })
      expect(test_contact.name()).to(eq("Bill"))
    end
  end

  describe("#number") do
    it("returns the number of the contact") do
      test_contact = Contact.new({ :name => "Bill", :number => 4154105984 })
      expect(test_contact.number()).to(eq((4154105984)))
    end
  end
describe(".clear") do
    it("empties out all of the saved contacta") do
      Contact.new({ :name => "Bill", :number => 4154105984 }).save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a contact to the array of saved contacts") do
      test_contact1 = Contact.new({ :name => "Bill", :number => 4154105984 })
      test_contact1.save()
      expect(Contact.all()).to(eq([test_contact1]))
    end
  end

 describe(".find") do
    it("returns a contact by the persons name") do
      test_contact1 = Contact.new({ :name => "Bill", :number => 4154105984 })
      test_contact1.save()
      test_contact2 = Contact.new({ :name => "Ralph", :number => 2704569872 })
      test_contact2.save()
      expect(Contact.find("Bill")).to(eq([test_contact1]))
    end
end
