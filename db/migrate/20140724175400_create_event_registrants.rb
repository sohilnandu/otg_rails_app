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
      t.integer :CurrentMajor1kDonor
      t.integer :MajorDonorWith1MMinAssets
      t.integer :MajorUnderPerformer
      t.integer :MajorUnderPerformingByAmount
      t.integer :AnnualDonorWith1MMinAssets
      t.integer :AnnualUnderPerformer
      t.integer :AnnualUnderPerformingByAmount

      t.timestamps
    end
  end
end
