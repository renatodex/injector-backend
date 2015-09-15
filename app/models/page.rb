class Page < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections

  scope :sumary, -> { limit(5).order(created_at: :desc).as_json(methods: :total_injections) }

  def total_injections
    self.page_injections.count
  end
end
