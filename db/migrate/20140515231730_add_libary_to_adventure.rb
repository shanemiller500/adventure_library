class AddLibaryToAdventure < ActiveRecord::Migration
  def change
    add_reference :adventures, :libary, index: true
  end
end
