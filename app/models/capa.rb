class Capa < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1日分' }, { id: 3, name: '2日分' }, { id: 4, name: '3日分' },
    { id: 5, name: '4日分' }, { id: 6, name: '5日分' }, { id: 7, name: '6日分' },
    { id: 8, name: '7日分' }, { id: 9, name: '8日分' }, { id: 10, name: '9日分' },
    { id: 11, name: '10日分' }, { id: 12, name: '11日分' }, { id: 13, name: '12日分' },
    { id: 14, name: '13日分' }, { id: 15, name: '14日分' }, { id: 16, name: '15日分' },
    { id: 17, name: '16日分' }, { id: 18, name: '17日分' }, { id: 19, name: '18日分' },
    { id: 20, name: '19日分' }, { id: 21, name: '20日分' }, { id: 22, name: '21日分' },
    { id: 23, name: '22日分' }, { id: 24, name: '23日分' }, { id: 25, name: '24日分' },
    { id: 26, name: '25日分' }, { id: 27, name: '26日分' }, { id: 28, name: '27日分' },
    { id: 29, name: '28日分' }, { id: 30, name: '29日分' }, { id: 31, name: '30日分' },
    { id: 32, name: '31日分' }, { id: 33, name: '32日分' }, { id: 34, name: '33日分' },
    { id: 35, name: '34日分' }, { id: 36, name: '35日分' }, { id: 37, name: '36日分' },
    { id: 38, name: '37日分' }, { id: 39, name: '38日分' }, { id: 40, name: '39日分' },
    { id: 41, name: '40日分' }, { id: 42, name: '41日分' }, { id: 43, name: '42日分' },
    { id: 44, name: '43日分' }, { id: 45, name: '44日分' }, { id: 46, name: '45日分' },
    { id: 47, name: '46日分' }, { id: 48, name: '47日分' }, { id: 49, name: '48日分' },
    { id: 50, name: '49日分' }, { id: 51, name: '50日分' }, { id: 52, name: '51日分' },
    { id: 53, name: '52日分' }, { id: 54, name: '53日分' }, { id: 55, name: '54日分' },
    { id: 56, name: '55日分' }, { id: 57, name: '56日分' }, { id: 58, name: '57日分' },
    { id: 59, name: '58日分' }, { id: 60, name: '59日分' }, { id: 61, name: '60日分' },
    { id: 62, name: '61日分' }, { id: 63, name: '62日分' }, { id: 64, name: '63日分' },
    { id: 65, name: '64日分' }, { id: 66, name: '65日分' }, { id: 67, name: '66日分' },
    { id: 68, name: '67日分' }, { id: 69, name: '68日分' }, { id: 70, name: '69日分' },
    { id: 71, name: '70日分' }
  ]
  include ActiveHash::Associations
  has_many :drugs
end