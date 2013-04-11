class Shopping_cart

  attr_accessor :id, :quantity, :goods, :good

  def initialize
    @id = id
    @quantity = quantity
    @goods = []
  end

  def add_good id
    good = []
    good[0] = id
    good[1] = 1
    @goods << good unless existing_good?(good[0])
  end

  def existing_good? id
    @goods.each do |g|
      if g[0] == id
        g[1] += 1
        return true
      end
    end
    false
  end

end