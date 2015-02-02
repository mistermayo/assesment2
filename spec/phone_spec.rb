require('rspec')
require('phone')
require('contact')

describe(Phone) do
  before() do
    Phone.clear()
  end
end

  describe('#type') do
    it('returns the type of contact') do
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      expect(test_type.type()).to(eq('home'))
    end
  end

  describe('#number') do
    it('returns the new number') do
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      expect(test_type.number()).to(eq(7075559955))
    end
  end

  describe('#id') do
    it("returns the id of the contact") do
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      expect(test_type.id()).to(eq(1))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      Phone.new({:type => 'home', :number => 7075559955}).save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a contact to the list of saved contacts') do
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      test_type.save()
      expect(Phone.all()).to(eq([test_type]))
    end
  end

  describe('.find') do
    it('returns a contact by a given id number') do
      test_type = Phone.new({:type => 'home', :number => 7075559955})
      test_type.save()
      test_type2 = Phone.new({:type => 'home', :number => 7075559955})
      test_type2.save()
      expect(Phone.find(test_type.id())).to(eq(test_type))
    end
  end
