
u1 = User.create!(username: "robindao", email: "nhinhdao.vn@gmail.com", image: 'https://i.imgur.com/vBHAwZo.jpg?1', password: 'nhinh12345', password_confirmation: 'nhinh12345')

t1 = Timetable.create!(name: 'New York Summer 2019', user_id: u1.id)

# p1 = Place.create!(user_id: u1.id, name: 'Cold Stone NorthBergen', category: 'Ice Cream', contact: '(212) 535-7710', location: '1000 5th Ave, New York, NY 10028', rating: 4,
#   photos: [
# "https://s3-media3.fl.yelpcdn.com/bphoto/0bNjfMqzeBt7EdIkZCIq8Q/o.jpg",
# "https://s3-media2.fl.yelpcdn.com/bphoto/dCl3VVvUj9Q8VLOjNYAQBA/o.jpg",
# "https://s3-media2.fl.yelpcdn.com/bphoto/iENR-EfzIqkHPN42-kWpww/o.jpg"
# ])

# r1 = Review.create!(place_id: p1.id, user_name: "Yolanda R.", text: "So, you like museums? Then the Met is a dream come true. It's one of the largest museums ever and you can easily make a weekend out of it if you really...",
#       rating: 5, time_created: '2019-03-29')