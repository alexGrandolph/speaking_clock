require 'rspec'
require './lib/speaking_clock'
require 'pry'
RSpec.describe 'Speaking Clock Challenge' do
  
  it 'Returns the correct time on the hour' do

    time1 = '1:00'
    time2 = '8:00'
    time3 = '11:00'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)

    expect(speaker1).to eq("one o'clock")
    expect(speaker2).to eq("eight o'clock")
    expect(speaker3).to eq("eleven o'clock")
  end
  
  
  it 'Returns time past the hour (not including quarter) up to 25 minutes past' do

    time1 = '4:05'
    time2 = '3:10'
    time3 = '5:20'
    time3 = '6:25'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)

    expect(speaker1).to eq("five past four")
    expect(speaker2).to eq("ten past three")
    expect(speaker3).to eq("twenty past five")
    expect(speaker4).to eq("twenty five past six")
  end

end