# Have the first 3 blogs be owned by the first user
User.first.update(blogs: Blog.where("id <= 3"))

# Have the 4th blog you create be owned by the second user
Blog.fourth.owners.create!(user: User.second)

# Have the 5th blog you create be owned by the last user
Blog.fifth.owners.create!(user: User.last)

# Have the third user own all of the blogs that were created.
User.third.update(blogs: Blog.all)

# Have the first user create 3 posts for the blog with an id of 2. 
# BAD: Post.create(user: User.first, blog_id: 2)
# GOOD: Post.create(user: User.first, blog: Blog.find(2)). 
# Again, you should never reference the foreign key in Rails
User.first.posts.create!(title: "Title", content: "Content", blog: Blog.find(2))

# Have the second user create 5 posts for the last Blog.
User.second.posts.create!(blog: Blog.last, title: "Title", content: "Content")

# Have the 3rd user create several posts for different blogs.
User.third.posts.create!(blog: Blog.third, title: "Title", content: "content")

# Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
User.third.messages.create!(post: Post.first, message: "Message")
User.third.messages.create!(post: Post.second, message: "Message")

# Have the 4th user create 3 messages for the last post you created.
User.fourth.messages.create!(post: Post.last, message: "message")

# Change the owner of the 2nd post to the last user.
Post.second.update(user: User.last)

# Change the 2nd post's content to be something else.
Post.second.update(content: "some other content")

# Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.third.blogs

# Retrieve all posts that were created by the 3rd user
User.third.posts

# Retrieve all messages left by the 3rd user
User.third.messages
Message.joins(:user).where("users.id = 3")

# Retrieve all posts associated with the blog id 5 as well as who left these posts.
Blog.find(5).posts.joins(:user).select("posts.*", "users.*")
Post.joins(:user, :blog).where("blogs.id = 5").select("posts.*", "users.*")

# Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
Message.joins(:user).where(post: Blog.find(5).posts).select("messages.*", "users.first_name", "users.last_name")

# Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.owners.joins(:user).select("owners.*", "users.*")
Blog.first.users

# Change it so that the first blog is no longer owned by the first user.
Owner.joins(:blog, :user).find_by("blogs.id = 1 AND users.id = 1").destroy #1 load
Blog.find(1).users.destroy(User.find(1)) #3 loads

