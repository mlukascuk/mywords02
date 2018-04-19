class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.integer :owner_id
      t.string :target
      t.string :word_class
      t.text :target_sample_0
      t.text :target_sample_1
      t.text :target_sample_2
      t.string :native
      t.text :native_sample_0
      t.text :native_sample_1
      t.text :native_sample_2
      t.date :created
      t.integer :learn_state
      t.date :next_schedule
      t.date :last_schedule
      t.string :image

      t.timestamps
    end
  end
end
