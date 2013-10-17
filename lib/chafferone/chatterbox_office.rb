module Chafferone class ChatterboxOffice
  def initialize posts: []
    @posts = posts
  end

  def turnover
    posts.group_by(&:source).map do |source, posts|
      { source: source, weight: posts.size }
    end.sort_by { |elem| elem[:weight] }.reverse
  end

  attr_reader :posts
  private     :posts
end end
