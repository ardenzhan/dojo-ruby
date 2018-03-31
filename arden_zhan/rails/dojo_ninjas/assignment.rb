# How would you only retrieve the first_name of the ninjas that belong to the second dojo and order the result by created_at DESC order?
Ninja.where(dojo: Dojo.second).select("first_name").order(created_at: :desc)

# Delete the second dojo. How could you adjust your model so that it automatically removes all of the ninjas associated with that dojo?
has_many :ninjas, dependent: :destroy
Dojo.second.destroy