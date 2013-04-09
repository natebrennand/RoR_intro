class Assignment
  include Mongoid::Document
  field :points, type: BigDecimal
  field :due_date, type: String
  field :Date, type: String
  field :belongs_to, type: Course
end
