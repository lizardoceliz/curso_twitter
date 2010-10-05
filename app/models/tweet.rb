class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :mentions
  has_many :users, :through => :mentions
  
  validates :user, :presence => true
  validates :body, :presence => true, :length => {:minimum => 0,  :maximun => 140}
end