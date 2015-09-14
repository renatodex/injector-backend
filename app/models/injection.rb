class Injection < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections

  scope :sumary, -> { limit(5).order(created_at: :desc) } 
end
