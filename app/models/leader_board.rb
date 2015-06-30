class LeaderBoard < ActiveRecord::Base

  validates :name, :score, presence: true

end
