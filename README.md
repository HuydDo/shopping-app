Prerequisites
The setups steps expect following tools installed on the system.

  Github
  Ruby 2.6.1
  Rails 6.0.1

  Check your Ruby version
  ruby -v
  The ouput should start with something like ruby 2.6.1
  
  If not, install the right ruby version using rbenv

  rbenv install 2.5.1

  Check your Rails version
  rails -v
  The ouput should start with something like 
  Rails 6.0.1

  Check your Yarn version
  yarn -v
  The ouput should start with something like
  1.19.2
  
  If not, install right yarn version
  pwd
    /home/huyddo
  curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

  cd to cd shopping-app
  
  Install webpacker
  rails webpacker:install
  
  
1. Check out the repository
   git clone git@github.com:HuydDo/shopping-app.git
   cd shopping-app


2. Install the gems required by the applications
   bundle install

3. Start the Rails server
   You can start the rails server using the command given below.

   bundle exec rails s
  And now you can visit the site with the URL http://localhost:3000
