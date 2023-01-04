class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.string :menu_price

      t.timestamps
    end
  end
end
