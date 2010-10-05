class CreateMentions < ActiveRecord::Migration
  def self.up
    create_table :mentions do |t|
      t.belongs_to :tweet
      t.belongs_to :user

      t.timestamps
    end
  end

  def self.down
    drop_table :mentions
  end
end
