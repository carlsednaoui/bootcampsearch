class CreateCodingBootcamps < ActiveRecord::Migration
  def change
    create_table :coding_bootcamps do |t|
      t.string :name

      t.timestamps
    end
  end
end
