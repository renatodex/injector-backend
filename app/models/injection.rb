class Injection < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections
  has_many :pages, through: :page_injections
end
