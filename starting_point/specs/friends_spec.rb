require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

#example of test
  # def test_name
  #   assert_equal("Marc", @person5[:name])
  # end

  def test_favourite_tv_show
    result = person_favourite_tv_show(@person5)
    assert_equal("Scrubs",result)
  end

  def test_person_food_likes
    result = person_food_likes(@person5,"spinach")
    assert_equal(true, result)
  end

  def test_add_friend
    result = add_friend(@person4, "Rebecca")
    assert_equal(["Rick", "Jay", "Marc", "Rebecca"],result)
  end

  def test_remove_friend
    result = remove_friend(@person1, "Val")
    assert_equal(["Jay","Keith","Marc"],result)
  end

  def test_total_money
    result = total_money(@people)
    assert_equal(143,result)
  end

  def test_loan_money
    result = loan_money(@person5,@person4, 10)
    assert_equal(30,@person4[:monies])
    assert_equal(90,@person5[:monies])
  end

  def  test_everyones_favourite_food
    result = everyones_favourite_food(@people)
    assert_equal([["charcuterie"], ["soup", "bread"], ["ratatouille","stew"],["spaghetti"],["spinach"]],result)
  end

  def test_no_friends
    result = no_friends(@people)
    assert_equal(@person5,result)
  end

end


























