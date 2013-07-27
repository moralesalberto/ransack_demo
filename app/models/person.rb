class Person < ActiveRecord::Base

  def self.find_or_create_people
    if Person.count < 1
      100.times do 
        p = Person.new
        p.first = Faker::Name.name.split(" ")[0]
        p.last = Faker::Name.name.split(" ")[1]
        p.email = Faker::Internet.email
        p.save!
      end
    end
  end
end
