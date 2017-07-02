def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash 
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets = Array.new
  # for pet in pet_shop[:pets]
  #   if pet[:breed] == breed
  #     pets.push(breed)
  #   end
  # end
  pet_shop[:pets].each { |pet| pets.push(breed) if (pet[:breed] == breed) }
  pets
end

def find_pet_by_name(pet_shop, name)
  # for pet in pet_shop[:pets]
  #   if pet[:name] == name
  #     return pet
  #   end
  # end
  pet_shop[:pets].each { |pet| return pet if (pet[:name] == name) }
  nil
end

def remove_pet_by_name(pet_shop, name)
  # for pet in pet_shop[:pets]
  #   if pet[:name] == name
  #     pet_shop[:pets].delete(pet)
  #   end
  # end
  pet_shop[:pets].delete_if { |pet| pet[:name] == name }
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet[:name]
end

# Optional

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    customer[:pets] << pet[:name]
    customer[:cash] -= pet[:price]
    pet_shop[:admin][:total_cash] += pet[:price]
    pet_shop[:admin][:pets_sold] += 1
  end
end
















