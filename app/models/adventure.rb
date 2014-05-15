class Adventure < ActiveRecord::Base
  has_many :libary
  belongs_to :pages
end
