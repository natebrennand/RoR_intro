class User 
	include Mongoid::Document
	attr_accessor :name, :year, :uni

	field :name, type: String
	field :year, type: Integer
	field :uni, typ: String

	def initialize(attributes = {})
		@name = attributes[:name]
		@year = attribute[:year]
		@uni = attribute[:uni]
	end

end

