require 'rspec'
require './lib/speaking_clock'
require 'pry'
RSpec.describe 'Speaking Clock Challenge' do
  it 'Returns the correct string for given digit time' do

    time1 = '1:00'
    time2 = '2:05'
    time3 = '3:10'
    time4 = '6:25'

    speaker = SpeakingClock.new
    speaker1 = speaker.speak(time1)
    speaker2 = speaker.speak(time2)
    speaker3 = speaker.speak(time3)
    speaker4 = speaker.speak(time4)

    expect(speaker).to be_a SpeakingClock
    expect(speaker1).to eq("one o'clock")
    expect(speaker2).to eq("five past two")
    expect(speaker3).to eq("ten past three")
    expect(speaker4).to eq("twenty five past six")

  end
end