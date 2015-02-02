# require('rspec')
# require('phone')
# require('contact')
#
# describe(Phone) do
#   before() do
#     Phone.clear()
#   end
# end
#
#   describe('#add_number') do
#     it("adds a new number to the contact") do
#       test_contact = Contact.new({ :name => "Bill", :number => 4154105984 })
#       new_number = (55454)
#       test_contact.merge(new_number)
#       test_contact.save()
#       expect(test_contact.add_number()).to(eq([test_contact]))
#     end
#   end
#
#   describe('#id') do
#     it("returns the id of the ") do
#       test_dealership = Dealership.new("Bob's Used Cars")
#       expect(test_dealership.id()).to(eq(1))
#     end
#   end
#
#     describe("#save") do
#     it("adds a phone number to the array of saved contacts") do
#       test_phone = Phone.new({ :name => "Bill", :number => 4154105984 })
#       test_phone.save()
#       expect(Phone.all()).to(eq([test_phone]))
#     end
#   end
#
#   describe(".all") do
#     it("is empty at first") do
#       expect(Phone.all()).to(eq([]))
#     end
#   end
#
#   describe(".clear") do
#     it("empties out all of the saved contacts") do
#       Phone.new({ :name => "Bill", :number => 4154105984 }).save()
#       Phone.clear()
#       expect(Phone.all()).to(eq([]))
#     end
#   end
