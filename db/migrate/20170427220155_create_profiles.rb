class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
    	t.string :breeder_name
    	t.string :dog_breed
        t.string :location
    	t.string :email
    	t.string :phone_number
    	t.string :website
    	t.integer :review_count
    	t.timestamps
    end
  end
end
