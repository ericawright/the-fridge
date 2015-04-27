require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "generate dummy data for the app"
task "db:populate" do
  puts "Generating dummy data..."
  User.delete_all
  User.create!(username: 'henryjones', email: 'henry@jones.com', password: 'passy')
  User.create!(username: 'alicestevens', email: 'alice@stevens.com', password: 'passy')
  User.create!(username: 'billwithers', email: 'bill@withers.com', password: 'passy')
  User.create!(username: 'ninasimone', email: 'nina@simone.com', password: 'passy')

  
  Ingredient.delete_all
  Ingredient.create!(name: "cream soup")
  Ingredient.create!(name: "chicken")
  Ingredient.create!(name: "rice")
  Ingredient.create!(name: "cheese")
  Ingredient.create!(name: "broccoli")
  Ingredient.create!(name: "ham")
  Ingredient.create!(name: "bread")
  Ingredient.create!(name: "salt")
  Ingredient.create!(name: "pepper")
  Ingredient.create!(name: "salmon")

  Ingredient.create!(name: "sugar")
  Ingredient.create!(name: "dijon mustard")
  Ingredient.create!(name: "butter")
  Ingredient.create!(name: "teriyaki sauce")
  Ingredient.create!(name: "bacon bits")
  Ingredient.create!(name: "Parmesan cheese")
  Ingredient.create!(name: "garlic powder")
  Ingredient.create!(name: "onion powder")
  Ingredient.create!(name: "bread crumbs")
  Ingredient.create!(name: "squash")


  Ingredient.create!(name: "oil")
  Ingredient.create!(name: "garlic")
  Ingredient.create!(name: "bacon")
  Ingredient.create!(name: "onions")
  Ingredient.create!(name: "bell pepper")
  Ingredient.create!(name: "cabbage")
  Ingredient.create!(name: "potato")
  Ingredient.create!(name: "carrot")
  Ingredient.create!(name: "pork chop")
  Ingredient.create!(name: "mushroom")

  Ingredient.create!(name: "cream of mushroom soup")
  Ingredient.create!(name: "refried beans")
  Ingredient.create!(name: "tortilla")
  Ingredient.create!(name: "salsa")

  

  

   Recipe.delete_all
  Recipe.create!(name: "Chicken Divan", cook_time: 4500, ingred: "2 bunches broccoli
    2 -4 boneless skinless chicken breasts
    1 tablespoon extra virgin olive oil
    3 tablespoons butter
    3⁄4 cup cream soup
    1 cup shredded cheddar cheese
    salt and pepper", body: "Preheat oven to 325. 
Steam broccoli for 5 minutes until crisp-tender. Drain in colander.
In a medium frying pan, saute chicken breasts in olive oil until lightly browned, about 4-5 minutes per side. Remove from heat and drain on paper towls.
In a small saucepan, melt butter over medium heat. Whisk in flour and cook for 1-2 minutes to eliminate the taste of raw flour. Then gradually whisk in cream soup. Bring to a boil and then reduce to a simmer until the sauce is the consistency you desire. Add 3/4 of the cheese blend and whisk until combined. Add salt and pepper to taste.
In a 9x13 dish arrange chicken breasts (either whole or sliced) and broccoli. Pour sauce over top and sprinkle with remaining cheese. Cover with aluminum foil. Make several slits in the aluminum foil to allow the steam to escape.
Note: At this point, the dish can be frozen or refrigerated.
Bake in the oven for 30-45 minutes, taking off the aluminum foil for the last 10.", picture: 'http://s3.amazonaws.com/gmi-digital-library/04619119-584e-483d-a18d-0d57c55e8aa5.jpg').ingredients << Ingredient.find(2) <<Ingredient.find(3) << Ingredient.find(4) << Ingredient.find(5) << Ingredient.find(13)

  Recipe.create!(name: "Chicken Cordon Bleu", cook_time: 2700, ingred: "4 skinless, boneless chicken breast halves
 1/4 teaspoon salt
 1/8 teaspoon ground black pepper
 6 slices Swiss cheese
 4 slices cooked ham
 1/2 cup seasoned bread crumbs",
 body: "Preheat oven to 350 degrees F (175 degrees C). Coat a 7x11 inch baking dish with nonstick cooking spray.
Pound chicken breasts to 1/4 inch thickness.
Sprinkle each piece of chicken on both sides with salt and pepper. Place 1 cheese slice and 1 ham slice on top of each breast. Roll up each breast, and secure with a toothpick. Place in baking dish, and sprinkle chicken evenly with bread crumbs.
Bake for 30 to 35 minutes, or until chicken is no longer pink. Remove from oven, and place 1/2 cheese slice on top of each breast. Return to oven for 3 to 5 minutes, or until cheese has melted. Remove toothpicks, and serve immediately.", picture: 'http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2009/2/25/0/TU0609-1_Chicken-Cordon-Bleu_s4x3.jpg.rend.sni12col.landscape.jpeg').ingredients << Ingredient.find(2) << Ingredient.find(6) << Ingredient.find(4) << Ingredient.find(19)

  Recipe.create!(name: "Salmon with Brown Sugar Glaze", cook_time: 900, ingred: "1/4 cup packed light brown sugar
 2 tablespoons Dijon mustard
 4 (6 ounce) boneless salmon fillets
 salt and ground black pepper to taste",
 body: "Preheat the oven's broiler and set the oven rack at about 6 inches from the heat source; prepare the rack of a broiler pan with cooking spray.
Season the salmon with salt and pepper and arrange onto the prepared broiler pan. Whisk together the brown sugar and Dijon mustard in a small bowl; spoon mixture evenly onto top of salmon fillets.
Cook under the preheated broiler until the fish flakes easily with a fork, 10 to 15 minutes.", picture:'http://www.ezrapoundcake.com/wp-content/uploads/2008/09/salmon1.jpg').ingredients << Ingredient.find(10) << Ingredient.find(11) << Ingredient.find(12) 



  Recipe.create!(name: "Aimee's Quick Chicken", cook_time: 2100, ingred: "4 skinless, boneless chicken breast halves
 4 ounces Dijon mustard
 1/4 cup teriyaki sauce
 1/4 cup bacon bits
 1/2 cup grated Parmesan cheese",
 body: "Preheat oven to 400 degrees F (200 degrees C).
Place chicken in a 9x13 inch baking dish. Slather mustard evenly over chicken, then pour teriyaki sauce evenly over all. Sprinkle with bacon bits, then cover with cheese.
Bake at 400 degrees F (200 degrees C) for 30 minutes.", picture: 'http://carzycook.com/attachment.php?aid=3250').ingredients << Ingredient.find(2) << Ingredient.find(12) << Ingredient.find(14) << Ingredient.find(15) << Ingredient.find(16)

   Recipe.create!(name: "Easy Garlic Chicken", cook_time: 1200, ingred: "3 tablespoons butter
 4 skinless, boneless chicken breast halves
 2 teaspoons garlic powder
 1 teaspoon seasoning salt
 1 teaspoon onion powder",
 body: "Melt butter in a large skillet over medium high heat. Add chicken and sprinkle with garlic powder, seasoning salt and onion powder. Saute about 10 to 15 minutes on each side, or until chicken is cooked through and juices run clear.", picture: 'http://cdn.myktis.com/wp-content/uploads/sites/2/2012/06/picUn3GeF.jpg').ingredients << Ingredient.find(2) << Ingredient.find(13) << Ingredient.find(8) << Ingredient.find(17) << Ingredient.find(18)

    Recipe.create!(name: "Baked Dijon Salmon", cook_time: 1500, ingred: "4 (4 ounce) fillets salmon
 3 tablespoons prepared Dijon-style mustard
 salt and pepper to taste
 1/4 cup Italian-style dry bread crumbs
 1/4 cup butter, melted",
 body: "Preheat oven to 400 degrees F (200 degrees C). Line a shallow baking pan with aluminum foil.
Place salmon skin-side down on foil. Spread a thin layer of mustard on the top of each fillet, and season with salt and pepper. Top with bread crumbs, then drizzle with melted butter.
Bake in a preheated oven for 15 minutes, or until salmon flakes easily with a fork.", picture: 'http://food.sndimg.com/img/recipes/27/87/92/large/picOlAm6g.jpg').ingredients << Ingredient.find(2) << Ingredient.find(12) << Ingredient.find(14) << Ingredient.find(15) << Ingredient.find(16)

Recipe.create!(name: "Simple Roasted Butternut Squash", cook_time: 2400, ingred: "1 butternut squash - peeled, seeded, and cut into 1-inch cubes
 2 tablespoons olive oil
 2 cloves garlic, minced
 salt and ground black pepper to taste",
 body: "Preheat oven to 400 degrees F (200 degrees C).
Toss butternut squash with olive oil and garlic in a large bowl. Season with salt and black pepper. Arrange coated squash on a baking sheet.
Roast in the preheated oven until squash is tender and lightly browned, 25 to 30 minutes.", picture: 'http://www.inspiredtaste.net/wp-content/uploads/2013/10/Roasted-Butternut-Squash-Recipe-2.jpg').ingredients << Ingredient.find(20) << Ingredient.find(22)
 
 Recipe.create!(name: "Fried Cabbage", cook_time: 2700, ingred: "1 pound bacon, diced
 2 onions, chopped
 1 cup diced bell pepper
 1 head cabbage, chopped",
 body: "Cook and stir bacon, onions, and bell pepper together in a skillet over medium heat until bacon is just starting to brown, about 10 minutes. Add cabbage and cook, stirring frequently, until cabbage is tender and transparent, 20 to 30 minutes.", picture: 'http://thumbs.ifood.tv/files/image/2b/ac/557703-how-to-cook-fried-cabbage.jpg').ingredients << Ingredient.find(23) << Ingredient.find(24) << Ingredient.find(25) << Ingredient.find(26)

  Recipe.create!(name: "Quick and Easy Grilled Potatoes", cook_time: 1620, ingred: "2 large russet potatoes, scrubbed
 2 tablespoons olive oil
 salt and ground black pepper to taste.",
 body: "Poke each potato with the tines of a fork. Place the potatoes in a microwave oven, and cook on high power for about 5 minutes. Check about halfway through, and turn potatoes over for even cooking. Slice each potato in half the long way and cook potatoes another 2 minutes on high power.
Preheat a grill for medium heat.
Brush the potato tops with olive oil, and season with salt and pepper to taste.
Cook on prepared grill for 15 to 20 minutes, turning once.", picture: 'http://cdn.instructables.com/FSL/MAW3/HFSHE41E/FSLMAW3HFSHE41E.LARGE.jpg').ingredients << Ingredient.find(27) 
 


  Recipe.create!(name: "Glazed Carrots", cook_time: 1500, ingred: "2 pounds carrots, peeled and cut into sticks
 1/4 cup butter
 1/4 cup packed brown sugar
 1/4 teaspoon salt
 1/8 teaspoon ground white pepper",
 body: "Place carrots into a large saucepan, pour in enough water to reach depth of 1 inch, and bring to a boil. Reduce heat to low, cover, and simmer carrots until tender, 8 to 10 minutes. Drain and transfer to a bowl.
Melt butter in the same saucepan; stir brown sugar, salt, and white pepper into butter until brown sugar and salt have dissolved. Transfer carrots into brown sugar sauce; cook and stir until carrots are glazed with sauce, about 5 more minutes.", picture: 'http://www.bestcarrotrecipe.com/image-files/glazed-carrot-recipe.jpg').ingredients << Ingredient.find(28) 

   Recipe.create!(name: "Mushroom Pork Chops", cook_time: 2400, ingred: "
   4 pork chops
   salt and pepper to taste
   1 pinch garlic salt, or to taste
   1 onion, chopped
   1/2 pound fresh mushrooms, sliced
   1 (10.75 ounce) can condensed cream of mushroom soup",
   body: "Season pork chops with salt, pepper, and garlic salt to taste.
   In a large skillet, brown the chops over medium-high heat. Add the onion and mushrooms, and saute for one minute. Pour cream of mushroom soup over chops. Cover skillet, and reduce temperature to medium-low. Simmer 20 to 30 minutes, or until chops are cooked through.", picture: 'http://images.media-allrecipes.com/userphotos/250x250/714402.jpg').ingredients << Ingredient.find(29) << Ingredient.find(24) << Ingredient.find(30) << Ingredient.find(31) 


  Recipe.create!(name: "Mexican Casserole", cook_time: 1800, ingred: "1 (16 ounce) can refried beans
 3/4 onion, diced
 5 (10 inch) flour tortillas
 1 cup salsa
 2 cups shredded Cheddar or Colby Jack cheese",
 body: "Preheat oven to 375 degrees F (190 degrees C). Spray a 9-inch pie pan with non-stick cooking spray. In a saucepan, cook refried beans and onions (to soften them) on medium-high heat for about 5 minutes. Place one tortilla in the bottom of the greased pan. Spread about 1/3 cup of the bean mixture over it. Layer a few tablespoons of salsa over this. Then, place another tortilla over the salsa, and add more of the bean mixture. Follow the beans with a big handful of cheese, spreading evenly. repeat layers, spreading the ingredients evenly over the tortillas. On the top layer, make sure to use lots of salsa and cheese! Bake until the cheese is melted, approximately 15 to 20 minutes.", picture: 'http://images.media-allrecipes.com/userphotos/250x250/252212.jpg').ingredients << Ingredient.find(24) << Ingredient.find(32) << Ingredient.find(33) << Ingredient.find(34) << Ingredient.find(4) 


end
