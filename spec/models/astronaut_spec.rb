require 'rails_helper'

describe Astronaut, type: :model do
  context 'validations' do
      astronaut = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 34, job: 'Arch-nemesis of Emperor Zerg')

      it {should validate_presence_of(:name)}
      it {should validate_presence_of(:age)}
      it {should validate_presence_of(:job)}
    end
    describe 'has many space missions' do
      it {should have_many(:space_missions)}
      it {should have_many(:missions).through(:space_missions)}
    end
    describe 'calculations' do
      it 'can find the average age of all astronauts present on page' do
        astronaut_1 = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 10, job: 'Arch-nemesis of Emperor Zerg')
        astronaut_2 = Astronaut.create(name: "Boba Fett", age: 20, job: 'Bounty Hunter for Jabba the Hutt')

        average_age = Astronaut.average_age.to_f

        expect(average_age).to eq(15.0)
      end
    end
end






# mission = Mission.create(name: 'The Final Frontier', trip_length: 47)
# space_mission = SpaceMission.create(astronaut_id: 1, mission_id: 1)
# astronaut = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 34, job: 'Arch-nemesis of Emperor Zerg')
