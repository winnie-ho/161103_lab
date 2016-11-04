# 1. For a given person, return their favourite tv show
def person_favourite_tv_show(person)
return person[:favourites][:tv_show]
end

# 2. For a given person, check if they like a particular food
def person_food_likes(person, food)
  if person[:favourites][:things_to_eat].include?(food)
    return true
  end
end


# 3. Allow a new friend to be added to a given person
def add_friend(person, new_friend)
  return person[:friends]<<new_friend
end


# 4. Allow a friend to be removed from a given person
def remove_friend(person, enemy)
  person[:friends].delete(enemy)
  return person[:friends]
end

# 5. Find the total of everyone's money
def total_money(people)
  total = 0
for person in @people
  total +=person[:monies]
end
  return total
end


# 6. For two given people, allow the first person to loan a given value of money to the other

def loan_money(loaner, debter, loan)
  loaner[:monies]=loaner[:monies]-loan
  debter[:monies]=debter[:monies]+loan
end


# 7. Find the set of everyone's favourite food joined together
def everyones_favourite_food(people)
  all_food=[]
  for person in @people
    all_food << person[:favourites][:things_to_eat]
  end
  return all_food
end

# 8. Find people with no friends
def no_friends (people)
  for person in @people
    if person[:friends].length<=0
      return person
    end
  end
end


# INSANE
# Find the people who have the same favourite tv show