class Item < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum category: [:museum, :exhibition, :farm, :musical, :natural, :temple, :science, :others]
  enum area: [ :seoul, :gg, :gw, :cb, :cn, :gb, :gn, :jb, :jn, :jeju ]

  def self.generate_seed
    items = ['블루베리 체험농장', '뮤지컬', 'VR 체험관', '어린이 박물관', '낭만 미술관', '갯벌 체험']
    items.each_with_index do |title, i|
      self.create(title: 'title', content: 'content', image: open("app/assets/images/c#{i}.png"), price: 123300, area: i, category: i)
    end
  end

end
