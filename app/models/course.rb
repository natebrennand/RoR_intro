class Course
  include Mongoid::Document
  field :call_number, type: Integer
  field :course_title
  field :start_time
  field :end_time
  field :days           # Day of the week it meets
  field :building
  field :room, type: Integer
  field :professor
  has_and_belongs_to_many :students
  has_many :lectures
end
