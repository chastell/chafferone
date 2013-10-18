require_relative '../spec_helper'

module Chafferone describe ChatterboxOffice do
  describe '#turnover' do
    it 'returns the list of sources weighted by participation' do
      jruby = fake :source
      rubix = fake :source
      posts = [fake(:post, source: jruby), fake(:post, source: rubix),
        fake(:post, source: jruby), fake(:post, source: rubix),
        fake(:post, source: jruby)]
      ChatterboxOffice.new(posts: posts).turnover.must_equal [
        ChatterboxOffice::Entry[jruby, 3],
        ChatterboxOffice::Entry[rubix, 2],
      ]
    end
  end
end end
