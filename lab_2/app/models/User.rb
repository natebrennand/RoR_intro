class User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :uni, type: String
  field :major, type: String
  field :has_many, type: Courses
end
