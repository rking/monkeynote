class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :label
      t.string :url

      t.timestamps
    end
  end
end
