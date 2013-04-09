class Assignment

	include Mongoid::Document

	field :points,	type: BigDecimal
	field :due_date,type: Date

	belongs_to :course

end