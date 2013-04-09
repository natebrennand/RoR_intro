class Upload
  include Mongoid::Document
  field :upload_time, type: DateTime
  field :title, type: String
  field :url, type: String
  embedded_in :lecture, :inverse_of => :uploads
end
