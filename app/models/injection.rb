class Injection < ActiveRecord::Base
  belongs_to :account
  belongs_to :injection_type
  has_many :page_injections

  scope :sumary, -> { limit(5).order(created_at: :desc).as_json(methods: :injection_type_name) }

  def injection_type_name
    self.injection_type.name
  end
end
