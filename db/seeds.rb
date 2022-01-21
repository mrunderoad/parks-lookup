class Seed

  def self.begin
    seed = Seed.new
    seed.generate_business
  end

  def generate_business
    20.times do |i|
      business = Business.create!(
        name: Faker::Restaurant.name,
        content: Faker::ChuckNorris.fact,
        kind: Faker::Restaurant.type
      )
      puts "Business #{i}: Name is #{business.name}, Type is #{business.type} and content is #{business.content}"
    end
  end
end

Seed.begin



