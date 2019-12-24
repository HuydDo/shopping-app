# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.delete_all
item_list = [
  [ "Cambridge Soundworks Ultra Portable Wireless Bluetooth Speaker", 21.99, "Lightweight, portable and water resistant, this clear sounding speaker is perfect for music on the go",nil ],
  [ "Birchbox", 45.00, "Birchbox 3-Month Subscription Gift Card",nil  ],
  [ "Amazon Prime", 39.99, "Purchase a three-month Prime gift membership",nil  ],
  [ "Yet Rambler Mug", 34.99, "Hands down, the best way to keep it hot or cold on the go",nil ],
  [ "Anthropologie Lumi Monogram Scented Candle", 28.00, "A monogrammed candle, with the scent of tropical fruits and island berries",nil  ],
  [ "Set Of 4 R2-D2 Bowls", 27.89, "For Star Wars loving kids or adults",nil  ],
  [ "Sling Beverage Cooler", 24.99, "No, they’re not headed to yoga, but they are transporting a six-pack with ease",nil  ],
  [ "Mantraband ", 35.00, "Motivational phrases and reminders are engraved onto gold, rose gold or silver cuffs.  Zen",nil  ],
  [ "Kiehl's Skincare Starter Set", 49.99, "Perfect for the guy always on-the-go, this set includes the Ultimate Man Body Scrub Soap, Facial Fuel Energizing Moisture Treatment, Ultimate Brushless Shave Cream, and the Facial Fuel Energizing Face Wash" ,nil],
  [ "Sentimental Sand Custom Karma Bracelet", 48.00, "Choose your sentimental sand, from a list of beach options",nil  ]
]

item_list.each do |name, price, description|
  Item.create( name: name, price: price, description: description, user_id: nil )
end