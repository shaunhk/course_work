require('minitest/autorun')
require('minitest/rg')
require_relative('../pet')
require_relative('../pets_shop.rb')

class PetShopTest < MiniTest::Test

  def setup()

    @new_pet = Pet.new("Bors The Younger", :cat, "Cornish Rex", 700)

    @pet1 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
    @pet2 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
    @pet3 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
    @pet4 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
    @pet5 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
    @pet6 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)

    @pets = [@pet1, @pet2, @pet3, @pet4, @pet5, @pet6]

    @pet_shop = PetShop.new("Camelot of Pets", @pets, 1000 )

  end

  def test_pet_shop_has_name()
    assert_equal("Camelot of Pets", @pet_shop.name)
  end

  def test_pet_shop_cash()
    assert_equal(1000, @pet_shop.cash)
  end

  def test_pet_shop_pets_sold()
    assert_equal(0, @pet_shop.pets_sold)
  end

  def test_pet_shop_stock_count()
    assert_equal(6, @pet_shop.stock_count())
  end

  def test_increase_pets_sold()
    @pet_shop.increase_pets_sold()
    assert_equal(1, @pet_shop.pets_sold)
  end

  def test_can_add_pet_to_stock()
    @pet_shop.add_pet(@new_pet)
    assert_equal(7, @pet_shop.stock_count())
  end

  def test_can_find_name()
    found_pet = @pet_shop.find_by_name("Sir Percy")
    assert_equal("Sir Percy", found_pet.name)
  end

end
