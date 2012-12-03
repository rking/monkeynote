class CreateLeafs < ActiveRecord::Migration
  def change
    create_table :leafs do |t|
      t.string :label
      t.string :url

      t.timestamps
    end
  end
end
