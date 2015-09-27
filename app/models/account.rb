class Account < ActiveRecord::Base
  has_many :pages
  has_many :injections

  scope :your_pages, ->(token) { find_by_token(token).pages }
  scope :your_injections, ->(token) { find_by_token(token).injections }
end
