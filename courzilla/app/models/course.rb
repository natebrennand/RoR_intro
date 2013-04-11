class Course
  include Mongoid::Document
  field :name, type: String
  field :professor, type: String
end
