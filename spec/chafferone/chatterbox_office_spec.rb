require_relative '../spec_helper'

module Chafferone describe ChatterboxOffice do
  describe '#turnover' do
    it 'returns the list of sources weighted by participation' do
      jruby, rubinius = fake(:source), fake(:source)
      posts = [fake(:post, source: jruby), fake(:post, source: rubinius),
        fake(:post, source: jruby), fake(:post, source: rubinius),
        fake(:post, source: jruby)]
      ChatterboxOffice.new(posts: posts).turnover.must_equal [
        { source: jruby,    weight: 3 },
        { source: rubinius, weight: 2 },
      ]
    end
  end
end end
