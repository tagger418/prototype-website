source "https://rubygems.org"

before_install:
  - echo "BEFORE INSTALL START"
  - gem uninstall bundler
  - gem install bundler --version '2.0.1'
  - echo "BEFORE INSTALL END"

gem "rack"
gem "sinatra"
gem "travis"

group :test do
  gem "rspec"
  gem "rack-test"
end