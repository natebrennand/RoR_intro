class Assignment
  include Mongoid::Document
  field :title, type: String
  field :points, type: Integer
  belongs_to :lecture
end
