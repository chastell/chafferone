module Chafferone class ChatterboxOffice
  Entry = Struct.new :author, :weight

  def initialize posts: []
    @posts = posts
  end

  def turnover
    posts.group_by(&:author).map { |author, posts| Entry[author, posts.size] }
      .sort_by(&:weight).reverse
  end

  attr_reader :posts
  private     :posts
end end
