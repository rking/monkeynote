class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :label
    end

    create_table :leaves_tags do |t|
      t.integer :leaf_id
      t.integer :tag_id
    end
  end
end
