class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :coding_bootcamp_id
      t.string :name

      t.timestamps
    end
  end
end
