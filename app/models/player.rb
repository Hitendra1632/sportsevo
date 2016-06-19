class Player
  include Mongoid::Document
  field :name, type: String
  field :team_id, type: String
  field :phoneno,type: String
  field :email ,type: String
  field :designation, type: String 
end
 