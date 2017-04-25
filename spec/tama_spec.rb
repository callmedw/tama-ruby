require 'rspec'
require 'tama'

describe (Tama) do
  describe('#satiety') do
    it("lets you see its satiety") do
      test_tama = Tama.new(3, 3, 3)
      expect(test_tama.satiety).to(eq(3))
    end
  end

  describe('#happiness') do
    it("lets you see its happiness") do
      test_tama = Tama.new(3, 1, 3)
      expect(test_tama.happiness).to(eq(1))
    end
  end

  describe('#perkiness') do
    it("lets you see its perkiness") do
      test_tama = Tama.new(3, 3, 1)
      expect(test_tama.perkiness).to(eq(1))
    end
  end

  describe('#alive?') do
    it("lets you see it is alive") do
      test_tama = Tama.new(3, 3, 3)
      expect(test_tama.alive?).to(eq(true))
    end
    it("lets you see it is dead") do
      test_tama = Tama.new(3, 3, 0)
      expect(test_tama.alive?).to(eq(false))
    end
  end

  describe('#add_happiness') do
    it("lets you add +1 to happiness") do
      test_tama = Tama.new(1, 1, 1)
      test_tama.add_happiness
      expect(test_tama.happiness).to(eq(2))
    end
  end

  describe('#add_perkiness') do
    it("lets you add +1 to perkiness") do
      test_tama = Tama.new(1, 1, 1)
      test_tama.add_perkiness
      expect(test_tama.perkiness).to(eq(2))
    end
  end

  describe('#add_satiety') do
    it("lets you add +1 to satiety") do
      test_tama = Tama.new(1, 1, 1)
      test_tama.add_satiety
      expect(test_tama.satiety).to(eq(2))
    end
  end

end
