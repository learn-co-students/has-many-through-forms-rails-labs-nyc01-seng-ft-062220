# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
Post.destroy_all
User.destroy_all
Post_category.destroy_all
Comment.destroy_all

user1 = User.create(username: "Win", email: "Wingg@gmail.com");

a = Category.create(name: "sports");
b = Category.create(name: "art");
c = Category.create(name: "nature");

one = Post.create(title: "No art", content: "Art is bad!");
two = Post.create(title: "Art is life", content: "Art is life! You know it!");
three = Post.create(title: "save planet", content: "Nature good!");
four = Post.create(title: "I love that!", content: "sport fun!");
five = Post.create(title: "coach?", content: "who is that coach? what team is good?");

#Comment.create(content: "whoa you are so right! great one!", user: user1, post: one);
#Comment.create(content: "Smart minds, do think alike lol ", user: user1, post: two);
#Comment.create(content: "couldnt agree more! haha ", user: user1, post: three);
#Comment.create(content: "Wow! your so amazing. Wait... am I talking to myself?", user: user1, post: four);

params = {Post: {
    title: "test", categories_attributes:[
        {name: 'Nature'},
        {name: 'Earth'}
    ]
} }

#Post_category.create(post: one, category: b, params[:category]);
#Post_category.create(post: two, category: b);
#Post_category.create(post: three, category: c);
#Post_category.create(post: four, category: a);
#Post_category.create(post: five, category: a);

puts "SUCCESS!"