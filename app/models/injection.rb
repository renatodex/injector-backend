class Injection < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections
end
