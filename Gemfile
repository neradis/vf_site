source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '~> 3.2.3'
gem 'refinerycms', '~> 2.1.0'

gem 'activerecord-postgresql-adapter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'haml-rails'
  gem "coffee-rails"
  gem 'uglifier', '>= 1.0.3'
end

#remote deployment
group :development do
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-postgresql', '~> 3.0'
  gem 'capistrano-rails', '~> 1.1.1'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'rvm1-capistrano3'
end

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'
#  gem 'refinerycms-blog', '~> 2.1.0'
#  gem 'refinerycms-inquiries', '~> 2.1.0'
#  gem 'refinerycms-search', '~> 2.1.0'
#  gem 'refinerycms-page-images', '~> 2.1.0'
