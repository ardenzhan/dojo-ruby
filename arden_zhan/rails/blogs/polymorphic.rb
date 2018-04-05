# Created new Comment polymorphic model
rails g model Comment content:string commentable:references{polymorphic}

# Added relationship to each model (user, blog, post, message)
has_many :comments, as: :commentable

# CRUD comments on each model
# Figure out how to eager load polymorphic relations
User.first.comments.create!(content: "another comment on first user")
Comment.create!(commentable_id: 1, commentable_type: "User", content: "test comment")
Comment.create!(commentable: Message.first, content: "comment")

Comment.where(commentable: User.first)
Comment.find(1).update(content: "edited content")
User.first.comments.destroy(Comment.find(4))