class Student
  include Mongoid::Document
  field :name, type: String
  field :uni, type: String
end
