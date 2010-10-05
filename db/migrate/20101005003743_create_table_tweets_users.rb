class CreateTableTweetsUsers < ActiveRecord::Migration
  def self.up
    create_table :tweets_users, :id => false do |t|
      t.belongs_to :tweet
      t.belongs_to :user
    end
  end

  def self.down
    drop_table :tweets_users
  end
end
