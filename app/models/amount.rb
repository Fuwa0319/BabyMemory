class Amount < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ちょこっと' },
    { id: 3, name: '少なめ' },
    { id: 4, name: '普通' },
    { id: 5, name: '多め' }
  ]

  include ActiveHash::Associations
  has_many :pees
  has_many :poops
  end