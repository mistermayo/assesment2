
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone')
require('./lib/contact')

get('/') do
  @phone = Phone.all()
  erb(:index)
end

post('/phone') do
  name = params.fetch('name')
  Phone.new(name).save()
  @phone = Phone.all()
  erb(:index)
end

post('/contact') do
  name = params.fetch('name')
  number = params.fetch('number')
  @contact = Contact.new(name, number)
  @contact.save()
  @phone = Phone.find(params.fetch('phone_id').to_i())
  @phone.add_number(@contact)
  erb(:phone)
end

get('/contact/:id') do
  @contact = Contact.find(params.fetch('id'))
  erb(:contact)
end

get('/phone/:id') do
  @phone = Phone.find(params.fetch('id').to_i())
  erb(:phone)
end
