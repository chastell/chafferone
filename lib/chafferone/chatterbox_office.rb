module Chafferone class ChatterboxOffice
  Entry = Struct.new :source, :weight

  def initialize posts: []
    @posts = posts
  end

  def turnover
    posts.group_by(&:source).map { |source, posts| Entry[source, posts.size] }
      .sort_by(&:weight).reverse
  end

  attr_reader :posts
  private     :posts
end end
