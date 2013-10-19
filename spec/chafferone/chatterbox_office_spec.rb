require_relative '../spec_helper'

module Chafferone describe ChatterboxOffice do
  describe '#turnover' do
    it 'returns the list of authors weighted by participation' do
      jruby = fake :author
      rubix = fake :author
      posts = [fake(:post, author: jruby), fake(:post, author: rubix),
        fake(:post, author: jruby), fake(:post, author: rubix),
        fake(:post, author: jruby)]
      ChatterboxOffice.new(posts: posts).turnover.must_equal [
        ChatterboxOffice::Entry[jruby, 3],
        ChatterboxOffice::Entry[rubix, 2],
      ]
    end
  end
end end
