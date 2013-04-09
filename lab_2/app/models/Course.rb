class Course

	include Mongoid::Document

	field :call_number,	type: Integer
	field :course_title,type: String
	field :location,	type: String
	field :time_slot,	type: Date
	field :professor,	type: String

	has_many :lectures
	has_many :assignments

end