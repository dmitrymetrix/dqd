class CreateBytowkas < ActiveRecord::Migration
  def change
    create_table :bytowkas do |t|
      t.string :parametr
      t.integer :kosht
      t.integer :ilosc

      t.timestamps null: false
    end
  end
end
