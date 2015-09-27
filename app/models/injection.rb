class Injection < ActiveRecord::Base
  belongs_to :account
  belongs_to :injection_type
  has_many :page_injections

  validates :name, presence: true
  validates :html, presence: true
  validates_presence_of :injection_type
  validates_presence_of :account

  scope :sumary, -> { limit(5).order(created_at: :desc).as_json(methods: :injection_type_name) }

  def injection_type_name
    self.injection_type.name
  end
end
