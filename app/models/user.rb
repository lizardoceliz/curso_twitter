class User < ActiveRecord::Base
  #validates_presence_of :name, :email
  #validates_uniqueness_of :email
  #validates_acceptance_of :terms_of_service
  
  has_many :tweets
  
  has_many :mentions
  has_many :network_tweets, :through => :mentions, :source => :tweet
  
  has_and_belongs_to_many :favorited_tweets, :class_name => "Tweet"
  
  has_many :retweets
  has_many :my_retweets, :through => :retweets
    
  validates :name, :presence  => true
  validates :email, :presence => true, :uniqueness => true
  validates :terms_of_service, :acceptance => true
end
