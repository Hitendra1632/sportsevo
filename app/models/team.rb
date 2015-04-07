class Team
  include Mongoid::Document
  field :place, type: String
  field :teamid, type: String
  field :teamname, type: String
  field :teamcolor, type: String
  field :registered_email,type: String
  field :captain_id ,type: String
  field :created_at, type: Integer ,:default => Time.now.to_i
end
