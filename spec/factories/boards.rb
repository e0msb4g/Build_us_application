FactoryBot.define do
  factory :board do
    association :user
    title            {'ビルヂングについて'}
    prefecture_id    {3}
    municipality     {'岐阜市柳津町'}
    edaban           {'1丁目21番地'}
    building_name    {'岐阜ビル'}
    question         {'岐阜は海無し県ですか？'}
    impressions      {'最高の街です'}
  end
end
