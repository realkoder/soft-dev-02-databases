# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# db/seeds.rb

users = [
  {
    fullname: "Alice Example",
    email: "alice@example.com",
    provider: "email",
    uid: "alice-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Loves cooking and experimenting with new recipes.",
    last_signed_in_at: nil
  },
  {
    fullname: "Bob Example",
    email: "bob@example.com",
    provider: "email",
    uid: "bob-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Big fan of Italian cuisine.",
    last_signed_in_at: nil
  },
  {
    fullname: "Charlie Example",
    email: "charlie@example.com",
    provider: "email",
    uid: "charlie-uid",
    password: "password123",
    image_src: "https://via.placeholder.com/150",
    bio: "Enjoys baking bread on weekends.",
    last_signed_in_at: nil
  }
]
users.each do |attrs|
  user = User.find_or_initialize_by(email: attrs[:email])
  user.update!(attrs)
end

