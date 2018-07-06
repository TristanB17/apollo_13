require 'rails_helper'

describe Astronaut, type: :model do
  describe 'validations' do
    astronaut = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 34, job: 'Arch-nemesis of Emperor Zerg')

    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:job)}
  end
end
