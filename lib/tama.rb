require('pry')
class Tama

  def initialize (satiety, happiness, perkiness)
    @satiety = satiety
    @happiness = happiness
    @perkiness = perkiness
    # @status = status
  end

  def satiety
    @satiety
  end

  def happiness
    @happiness
  end

  def perkiness
    @perkiness
  end

  def alive?
    @satiety != 0 && @happiness != 0 && @perkiness != 0
  end

  def add_happiness
    @happiness += 1
  end

  def add_perkiness
    @perkiness += 1
  end

  def add_satiety
    @satiety += 1
  end

  def time_happens
    if Time.now.sec % 3 == 0
      @satiety -= 1
      @happiness-= 1
      @perkiness -= 1
    end
  end

  # def sub_status
  #   @satiety -= 1
  #   @happiness-= 1
  #   @perkiness -= 1
  # end

end
