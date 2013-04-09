class Course
  include Mongoid::Document
  field :call_number, type: String
  field :course_title, type: String
  field :location, type: String
  field :time_slot, type: Time
  field :professor, type: String
end
