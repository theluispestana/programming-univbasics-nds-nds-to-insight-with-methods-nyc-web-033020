$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  inner_index = 0
  total_gross = 0
  while inner_index < director_data[:movies].length do
    total_gross += director_data[:movies][inner_index][:worldwide_gross]
    inner_index += 1
  end
  total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  # pp directors_database
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  outer_index = 0
  while outer_index < nds.length do
    result[nds[outer_index][:name]] = gross_for_director(nds[outer_index])
    outer_index += 1
  end
  # Be sure to return the result at the end!
  pp result
  result
end
