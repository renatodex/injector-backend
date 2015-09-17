class Injection < ActiveRecord::Base
  belongs_to :account
  belongs_to :injection_type
  has_many :page_injections

  scope :sumary, -> { limit(5).order(created_at: :desc) }
end
