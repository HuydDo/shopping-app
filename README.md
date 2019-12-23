# Shopping App
This Rails app create online order, review, and add item for sale.

## Prerequisites
The setups steps expect following tools installed on the system.

  Github
  Ruby 2.6.1
  Rails 6.0.1

  Check your Ruby version
  `ruby -v`
  The ouput should start with something like ruby 2.6.1
  
  If not, install the right ruby version using rbenv

  ```rbenv install 2.5.1```

  Check your Rails version
  `rails -v`
  The ouput should start with something like 
  Rails 6.0.1

  Check your Yarn version
  `yarn -v`
  The ouput should start with something like
  1.19.2
  
  If not, install right yarn version
  `pwd`
    /home/huyddo
  `curl --compressed -o- -L https://yarnpkg.com/install.sh | bash`

  `cd shopping-app`
  
  `Install webpacker`
  `rails webpacker:install`
  
## Installation 
1. Check out the repository
   `git clone git@github.com:HuydDo/shopping-app.git`

   Change dir to shopping-app 
   
   `cd shopping-app`


2. Install the gems required by the applications
   `bundle install`

3. Start the Rails server
   You can start the rails server using the command given below.

   `bundle exec rails s`
  And now you can visit the site with the URL http://localhost:3000

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'sunny-sailor-0759'/best_laptop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).