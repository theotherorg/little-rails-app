class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :bgcolor, limit: 6
      t.string :bordercolor, limit: 6
      t.string :textcolor, limit: 6
      t.string :font, limit: 6

      t.timestamps
    end
  end
end
