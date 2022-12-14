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
    time4 = '6:25'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)
    speaker4 = SpeakingClock.speak(time4)

    expect(speaker1).to eq("five past four")
    expect(speaker2).to eq("ten past three")
    expect(speaker3).to eq("twenty past five")
    expect(speaker4).to eq("twenty five past six")
  end
  
  it 'Returns time to the hour (not including quarter) up to 25 minutes to' do

    time1 = '7:35'
    time2 = '8:40'
    time3 = '10:50'
    time4 = '11:55'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)
    speaker4 = SpeakingClock.speak(time4)

    expect(speaker1).to eq("twenty five to eight")
    expect(speaker2).to eq("twenty to nine")
    expect(speaker3).to eq("ten to eleven")
    expect(speaker4).to eq("five to twelve")
  end

  it 'If the minutes do not end in 0 or 5 it returns the exact time' do

    time1 = '6:32'
    time2 = '5:17'
    time3 = '11:47'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)

    expect(speaker1).to eq("six thirty two")
    expect(speaker2).to eq("five seventeen")
    expect(speaker3).to eq("eleven forty seven")

  end 

  it 'It returns noon or midnight when given' do

    time1 = '00:00'
    time2 = '12:00'
    time3 = '1:00'

    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)
    speaker3 = SpeakingClock.speak(time3)

    expect(speaker1).to eq("midnight")
    expect(speaker2).to eq("noon")
    expect(speaker3).to eq("one o'clock")

  end 

  it 'returns quarter until or quarter past for minutes equal to 15' do
    
    time1 = '4:15'
    time2 = '9:45'


    speaker1 = SpeakingClock.speak(time1)
    speaker2 = SpeakingClock.speak(time2)

    expect(speaker1).to eq("quarter past four")
    expect(speaker2).to eq("quarter to ten")


  end

end