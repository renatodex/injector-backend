class Account < ActiveRecord::Base
  has_many :pages
  has_many :injections
end
