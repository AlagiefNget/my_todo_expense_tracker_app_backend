class Project < ApplicationRecord
  validates_presence_of :name
  
  belongs_to :client
  belongs_to :user
  has_many :charges, dependent: :destroy
end
