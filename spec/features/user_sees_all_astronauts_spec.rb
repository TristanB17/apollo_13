require 'rails_helper'

describe 'user-index' do
  it 'can display astronaut info' do
    astronaut_1 = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 34, job: 'Arch-nemesis of Emperor Zerg')
    astronaut_2 = Astronaut.create(name: "Boba Fett", age: 32, job: 'Bounty Hunter for Jabba the Hutt')

    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_1.age)
    expect(page).to have_content(astronaut_1.job)
    expect(page).to have_content(astronaut_2.name)
    expect(page).to have_content(astronaut_2.age)
    expect(page).to have_content(astronaut_2.job)
  end
  it 'can see the average age of all astronauts' do
    astronaut_1 = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 10, job: 'Arch-nemesis of Emperor Zerg')
    astronaut_2 = Astronaut.create(name: "Boba Fett", age: 20, job: 'Bounty Hunter for Jabba the Hutt')

    visit '/astronauts'

    expect(page).to have_content(15)
  end
  it 'can view astronauts and their missions in alphabetical order' do

    astronaut_1 = Astronaut.create(name: "Buzz Lightyear of Star Command", age: 10, job: 'Arch-nemesis of Emperor Zerg')
    astronaut_2 = Astronaut.create(name: "Boba Fett", age: 20, job: 'Bounty Hunter for Jabba the Hutt')

  end
end
