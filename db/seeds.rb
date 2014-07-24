# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
json = ActiveSupport::JSON.decode(File.read('db/seeds/registrants.json'))

json.each do |a|
  EventRegistrant.create!({
      :ImportID => a['ImportID'],
      :FirstName => a['FirstName'],
      :LastName => a['LastName'],
      :Addr1 => a['Addr1'],
      :Addr2 => a['Addr2'],
      :City => a['City'],
      :State => a['State'],
      :DonorCategory => a['DonorCategory'],
      :NextAskAmount => a['NextAskAmount'],
      :TotalIdentifiedAssets => a['TotalIdentifiedAssets'],
      :CurrentMajor1kDonor => a['CurrentMajor1kDonor'],
      :MajorDonorWith1MMinAssets => a['MajorDonorWith1MMinAssets'],
      :MajorUnderPerformer => a['MajorUnderPerformer'],
      :MajorUnderPerformingByAmount => a['MajorUnderPerformingByAmount'],
      :AnnualDonorWith1MMinAssets => a['AnnualDonorWith1MMinAssets'],
      :AnnualUnderPerformer => a['AnnualUnderPerformer'],
      :AnnualUnderPerformingByAmount => a['AnnualUnderPerformingByAmount']
  })
end