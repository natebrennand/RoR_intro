class Upload
  include Mongoid::Document
  field :title, type: String
  belongs_to :lecture
end
