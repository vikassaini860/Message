class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|

      t.timestamps null: false
      t.string :data
      t.string :owner
    end
  end

  
end
