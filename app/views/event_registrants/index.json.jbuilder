json.array!(@event_registrants) do |event_registrant|
  json.extract! event_registrant, :id, :ImportID, :FirstName, :LastName, :Addr1, :Addr2, :City, :State, :DonorCategory, :NextAskAmount, :TotalIdentifiedAssets, :CurrentMajor1kDonor, :MajorDonorWith1MMinAssets, :MajorUnderPerformer, :MajorUnderPerformingByAmount, :AnnualDonorWith1MMinAssets, :AnnualUnderPerformer, :AnnualUnderPerformingByAmount
  json.url event_registrant_url(event_registrant, format: :json)
end
