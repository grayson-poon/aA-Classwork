# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({username: 'Mike Tran'})
user2 = User.create({username: 'Nike Brown'})
user3 = User.create({username: 'Bike Snip'})

user44 = User.create({username: 'destroy'}) # user 4 to be destroyed


artwork1 = Artwork.create({title: "mona lisa", image_url: "monalisa.com", artist_id: 1})
artwork2 = Artwork.create({title: "dog", image_url: "dog.com", artist_id: 2})
artwork3 = Artwork.create({title: "mona lisa", image_url: "monalisa.com", artist_id: 3})
artwork4 = Artwork.create({title: "cats", image_url: "cats.com", artist_id: 2})

artwork55 = Artwork.create({title: "destroy", image_url: "destroy.com", artist_id: 4}) # artwork 5 to be destroyed


artshare1 = ArtworkShare.create({artwork_id: 1, viewer_id: 1})
artshare2 = ArtworkShare.create({artwork_id: 2, viewer_id: 1})
artshare3 = ArtworkShare.create({artwork_id: 3, viewer_id: 2})
artshare4 = ArtworkShare.create({artwork_id: 1, viewer_id: 3})

comment1 = Comment.create({body: "first comment", user_id: 1, artwork_id: 2})
comment2 = Comment.create({body: "second comment", user_id: 1, artwork_id: 3})
comment3 = Comment.create({body: "third comment", user_id: 3, artwork_id: 4})
comment4 = Comment.create({body: "fourth comment", user_id: 2, artwork_id: 1})

commentd1 = Comment.create({body: "destroy", user_id: 4, artwork_id: 5}) # comments for artwork 5 that will be destroyed
commentd2 = Comment.create({body: "destroy", user_id: 1, artwork_id: 5})
commentd3 = Comment.create({body: "destroy", user_id: 2, artwork_id: 5})

commentd4 = Comment.create({body: "destroy", user_id: 4, artwork_id: 1}) # comments that belong to user 4 who will be destroyed
commentd5 = Comment.create({body: "destroy", user_id: 4, artwork_id: 2})
commentd6 = Comment.create({body: "destroy", user_id: 4, artwork_id: 3})

like1 = Like.create({user_id: 1, artwork_id: 1})
like2 = Like.create({user_id: 1, comment_id: 1})



