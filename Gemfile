source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails",           "7.0.4"
gem "puma",            "5.6.4"
gem "pg",              "1.3.5"
gem "sassc-rails",     "2.1.2"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.0"
gem "turbo-rails",     "1.1.1"
gem "stimulus-rails",  "1.0.4"
gem "money-rails",     "< 2.0.0"
gem "jbuilder",        "2.11.5"
gem "bootsnap",        "1.12.0", require: false
gem "bootstrap-sass"
gem "simple_form"
gem "devise"

group :development, :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
end

group :development do
  gem "annotate"
  gem "web-console", "4.2.0"
end


group :production do
  # gem "pg", "1.3.5"
end
