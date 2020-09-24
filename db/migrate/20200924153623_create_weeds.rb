class CreateWeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :weeds do |t|
      t.string :strain
      t.string :type
      t.string :brand

      t.timestamps
    end
  end
end
