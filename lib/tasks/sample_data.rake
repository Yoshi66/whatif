namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
     make_users
   end
end


  def make_users
    10.times do
      name = Faker::Name.name
      email = Faker::Internet.email
      password = '11112222'
      password_confirmation = '11112222'
      content = Faker::Lorem.paragraph
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password_confirmation)
      User.find_by(name: name).posts.create!(content: content)
    end


  end
