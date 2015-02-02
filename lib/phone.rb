# class Phone
#   @@phones
#
#   define_method(:initialize) do |add_number, contacts|
#     @add_number = add_number
#     @contacts = contacts
#   # end
#
#   define_method(:contacts) do
#     @contacts
#   end
#
#   define_method(:add_number) do
#     @add_number
#   end
#
#   define_method(:id) do
#     @id
#   end
#
#   define_singleton_method(:all) do
#     @@phones
#   end
#
#   define_method(:save) do
#     @@phones.push(self)
#   end
#
#   define_singleton_method(:clear) do
#     @@phones = []
#   end
# end
