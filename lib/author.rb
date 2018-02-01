class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author=(self)
    @@post_count += 1
  end
  @@post_count = 0
  def add_post_by_title(post_name)
    post_name = Post.new(post_name)
    @posts << post_name
    post_name.author = self
    @@post_count += 1

  end

  def self.post_count
    @@post_count
  end

end
