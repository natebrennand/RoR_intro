class Student
  include Mongoid::Document
  field :name
  field :uni
  field :email
  field :role, type: Boolean, default: ->{ false }     # False : student, True : admin
  has_and_belongs_to_many :courses

  validates_uniqueness_of :uni

  attr_accessible :name, :uni, :email
end
