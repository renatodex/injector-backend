class Page < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections
  has_many :injections, through: :page_injection
end
