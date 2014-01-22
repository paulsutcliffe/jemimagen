#Coding: utf-8
require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

9.times do
  FactoryGirl.create :contacto
end

6.times do
  FactoryGirl.create :servicio
end
