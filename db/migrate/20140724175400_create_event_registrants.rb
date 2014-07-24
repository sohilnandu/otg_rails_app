class CreateEventRegistrants < ActiveRecord::Migration
  def change
    create_table :event_registrants do |t|
      t.integer :ImportID
      t.string :FirstName
      t.string :LastName
      t.string :Addr1
      t.string :Addr2
      t.string :City
      t.string :State
      t.string :DonorCategory
      t.string :NextAskAmount
      t.string :TotalIdentifiedAssets
      t.boolean :CurrentMajor1kDonor
      t.boolean :MajorDonorWith1MMinAssets
      t.boolean :MajorUnderPerformer
      t.integer :MajorUnderPerformingByAmount
      t.boolean :AnnualDonorWith1MMinAssets
      t.boolean :AnnualUnderPerformer
      t.integer :AnnualUnderPerformingByAmount

      t.timestamps
    end
  end
end
