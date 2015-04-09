class Team
  include Mongoid::Document
  field :place, type: String
  field :team_id, type: String
  field :name, type: String
  field :color, type: String
  field :registered_email,type: String
  field :captian_id ,type: String
  field :created_at, type: Integer ,:default => Time.now.to_i
end
