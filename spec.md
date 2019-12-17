# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many Orders; Item has_many Orders) 
- [x] Include at least one belongs_to relationship (Order belongs_to User; Order belongs_to Item)
- [x] Include at least two has_many through relationships (User has_many Items through Orders; Item has_many Users through Orders)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g.  orders.quantity; orders.review)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. Order with validates :quantity, presence: true; User with validates :name, uniqueness: true - validates :name, presence: true)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include login (how e.g. Facebook)
- [x] Include logout (how e.g. Facebook)
- [x] Include third party signup/login (how e.g. Facebook/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes  items/2/orders)
edit, index
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

