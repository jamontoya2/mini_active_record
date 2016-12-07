require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

# chef = Chef.find(1)
# meal = Meal.find(1)

chef = Chef.create(first_name:"juan", last_name:"Montoya", email: "jamontoya2@hotmail.com", phone: "4646461164", birthday: Time.now)
chef = Chef.find(22)
chef = Chef.where('first_name = "juan"')
p chef = Chef.all.last

meal = Meal.create(name: "empanadas", chef_id: 22)
meal = Meal.find(96)
meal = Meal.where('name = "empanadas"')
meal = Meal.all
#p Chef.all.last


# meal = Meal.create(name: "chilaquiles", chef_id: 1)
# p Meal.all.last 


#Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
# assert chef[:first_name] == 'Ferran'
# assert chef[:last_name] == 'Adria'


puts "finished"
