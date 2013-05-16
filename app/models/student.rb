class Student

  include Mongoid::Document
  field :_id, type: String, default: ->{ uni }      # should change the object_id that's used in the url

  field :name
  field :uni
  field :email
  field :role, type: Boolean, default: ->{ false }     # False : student, True : admin
  has_and_belongs_to_many :courses
  validates_uniqueness_of :uni, :email
  attr_accessible :name, :uni, :email

end
