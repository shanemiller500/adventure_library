class Adventure < ActiveRecord::Base
  has_many :pages
  belongs_to :library
  accepts_nested_attributes_for :pages
  validates :guid, presence: true, length: { minimum: 6}
end