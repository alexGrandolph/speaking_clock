require 'rspec'
require './lib/speaking_clock'
require 'pry'
RSpec.describe 'Speaking Clock Challenge' do
  it 'Returns the correct time on the hour' do

    time1 = '1:00'
    time2 = '8:00'
    time3 = '11:00'

    speaker = SpeakingClock.new
    speaker1 = speaker.speak(time1)
    speaker2 = speaker.speak(time2)
    speaker3 = speaker.speak(time3)

    expect(speaker).to be_a SpeakingClock
    expect(speaker1).to eq("one o'clock")
    expect(speaker2).to eq("eight o'clock")
    expect(speaker3).to eq("eleven o'clock")
  end
end