class Hardness < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '下痢' },
    { id: 3, name: 'やわらかめ' },
    { id: 4, name: '普通' },
    { id: 5, name: 'かため' }
  ]

  include ActiveHash::Associations
  has_many :poops
  end