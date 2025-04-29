# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).
#INSERT INTO in SQL
new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "San Francisco"
new_company["state"] = "California"
new_company["url"] = "https://apple.com"
new_company.save

# puts new_company.inspect

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "Washington"
new_company["url"] = "https://amazon.com"
new_company.save

# puts new_company.inspect

new_company = Company.new
new_company["name"] = "Airbnb"
new_company["city"] = "San Francisco"
new_company["state"] = "California"
new_company["url"] = "https://airbnb.com"
new_company.save

# puts new_company.inspect

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

# 3. query companies table to find all row with California company
no_of_companies = Company.all.count
# puts "Companies: #{no_of_companies}"

# cali_companies = Company.where({"state" => "California"})

# puts cali_companies.count

# 4. query companies table to find single row for Apple
# apple = Company.where({"name" => "Apple"})[0]
# apple = Company.find_by({"name" => "Apple"})

# # 5. read a row's column value
# p apple["name"]
# p apple["city"]
# p apple["id"]

# # 6. update a row's column value
# apple["url"] = "hi.com"
# p apple
# apple.save
# p apple

# 7. delete a row

puts "Companies: #{no_of_companies}"
airbnb = Company.find_by({"name" => "Airbnb"})
p airbnb
airbnb.destroy
p airbnb
airbnb.save
p airbnb
no_of_companies = Company.all.count
puts "Companies: #{no_of_companies}"