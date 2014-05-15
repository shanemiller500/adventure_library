class CreateLibaries < ActiveRecord::Migration
  def change
    create_table :libaries do |t|
      t.string :url

      t.timestamps
    end
  end
end
