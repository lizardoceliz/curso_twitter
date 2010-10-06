class CreateRetweets < ActiveRecord::Migration
  def self.up
    create_table :retweets do |t|
      t.belongs_to :tweet
      t.belongs_to :user
      t.text :comment  #el texto del msj original mas el comentario no deben exceder los 140 caracteres

      t.timestamps
    end
  end

  def self.down
    drop_table :retweets
  end
end
