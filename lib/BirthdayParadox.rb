# What is the probability of 2 or more people sharing a birthday, given a group of n people?
def give_prob_with_n_people(n)
  return 0 if n < 2
  prob = 1.0
  n = n-1
  n.times do |i|
    prob *= ((364.0 - i)/365.0)
  end
  (1 - prob)
end

# How many people need be in a group until it is more likely than not that 2 people share a birthday?
def most_likely
  prob = 0
  num_people = 1
  until prob > 0.5
    num_people += 1
    prob = give_prob_with_n_people(num_people)
  end
  num_people
end
