source 'https://rubygems.org'

ruby '1.9.3', :group => :production

gem 'rails', '3.2.6'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

# Gems for production
group :production do
  gem 'pg'
end

# Gems for development and test
group :development, :test do
  gem 'rb-readline'
  gem 'sqlite3'
end

gem 'haml'
gem 'jquery-rails'
gem 'bootstrap-sass', '>= 2.3.0.0'
gem 'pjax_rails'