namespace :fake do
  desc 'Make fake stuff'
  task :create => :environment do
    100.times do
      Item.create!(
        title: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph,
        price_in_cents: rand(100..20000),
        quantity_available: rand(5..25)
      )
    end
  end
end
