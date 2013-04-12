class Shopping_cart

  attr_accessor :goods

  def initialize
    @goods = []
  end

  def add_good id, quantity
    good = []
    good[0] = id
    good[1] = quantity.to_i
    @goods << good unless existing_good?(good[0], good[1])
  end

  def existing_good? id, quantity
    @goods.each do |g|
      if g[0] == id
        g[1] += quantity.to_i
        return true
      end
    end
    false
  end

  def remove_good id
    counter = 0
    @goods.each do |g|
      if g[0] == id
        @goods.delete_at(counter)
      end
    counter += 1
    end
  end
end 