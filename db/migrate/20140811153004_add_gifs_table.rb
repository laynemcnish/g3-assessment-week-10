class AddGifsTable < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.string :title
    end
  end
end
