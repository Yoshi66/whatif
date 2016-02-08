namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
     make_users
   end
end


  def make_users
    9.times do |n|
      name = Faker::Name.name
      email = Faker::Internet.email
      password = '11112222'
      password_confirmation = '11112222'
      title = ["what if A is B","what if B is C","what if C is D","what if D is E","what if E is F","what if F is G", "what if G is H","what if H is I","what if I is K"]
      content = Faker::Lorem.paragraph
      User.create!(name: name,
                   email: email,
                    password: password,
                   password_confirmation: password_confirmation)
      User.find_by(name: name).posts.create!(title:title[n], content: content)
    end
  end
