class MilkList < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '0' },
    { id: 3, name: '5' },
    { id: 4, name: '10' },
    { id: 5, name: '15' },
    { id: 6, name: '20' },
    { id: 7, name: '30' },
    { id: 8, name: '40' },
    { id: 9, name: '50' },
    { id: 10, name: '60' },
    { id: 11, name: '70' },
    { id: 12, name: '80' },
    { id: 13, name: '90' },
    { id: 14, name: '100' },
    { id: 15, name: '110' },
    { id: 16, name: '120' },
    { id: 17, name: '130' },
    { id: 18, name: '140' },
    { id: 19, name: '150' },
    { id: 20, name: '160' },
    { id: 21, name: '170' },
    { id: 22, name: '180' },
    { id: 23, name: '190' },
    { id: 24, name: '200' },
    { id: 25, name: '210' },
    { id: 26, name: '220' },
    { id: 27, name: '230' },
    { id: 28, name: '240' },
    { id: 29, name: '250' },
    { id: 30, name: '260' },
    { id: 31, name: '270' },
    { id: 32, name: '280' },
    { id: 33, name: '290' },
    { id: 34, name: '300' },
    { id: 35, name: '310' },
    { id: 36, name: '320' },
    { id: 37, name: '330' },
    { id: 38, name: '340' },
    { id: 39, name: '350' },
    { id: 40, name: '360' },
    { id: 41, name: '370' },
    { id: 42, name: '380' },
    { id: 43, name: '390' },
    { id: 44, name: '400' },
    { id: 45, name: '410' },
    { id: 46, name: '420' },
    { id: 47, name: '430' },
    { id: 48, name: '440' },
    { id: 49, name: '450' },
    { id: 50, name: '460' },
    { id: 51, name: '470' },
    { id: 52, name: '480' },
    { id: 53, name: '490' },
    { id: 54, name: '500' }
  ]

  include ActiveHash::Associations
  has_many :milks
  end