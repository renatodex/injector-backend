class Page < ActiveRecord::Base
  belongs_to :account
  has_many :page_injections

  validates :name, presence: true
  validates_presence_of :account

  scope :sumary, -> { limit(5).order(created_at: :desc).as_json(methods: :total_injections) }

  def total_injections
    self.page_injections.count
  end
end
