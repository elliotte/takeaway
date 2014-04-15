class Menu
  def initialize dishes=[]
    @dishes = dishes
  end

  def empty?
    @dishes.empty?
  end

  def list_dishes
    @dishes
  end
end
