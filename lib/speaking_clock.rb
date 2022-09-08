require 'humanize'

class SpeakingClock

  def self.re_humanize(number)
   number.humanize.gsub('-', ' ')
  end 

  def self.speak(digits)
    diggit_arr = digits.split(":")
    
    if diggit_arr.last.end_with?('0')  || diggit_arr.last.end_with?('5') 
      if diggit_arr.last == "00"
        first_string = "#{diggit_arr[0].to_i.humanize}"
        second_string = "o'clock"
        "#{first_string} #{second_string}"
      
      elsif diggit_arr.last.to_i <= 25
        past_the_hour(diggit_arr)
      
      elsif diggit_arr.last.to_i >= 35
        to_the_hour(diggit_arr)
      end 
    else 
      first_string = "#{re_humanize(diggit_arr[0].to_i)}"
      second_string = "#{re_humanize(diggit_arr.last.to_i)}"
      "#{first_string} #{second_string}"
    end

  end 

  private

    def self.past_the_hour(diggit_arr)
      first_string = "#{re_humanize(diggit_arr.last.to_i)}"
      second_string = "past #{diggit_arr[0].to_i.humanize}"
      "#{first_string} #{second_string}"
    end 

    def self.to_the_hour(diggit_arr)
      minutes_until = 60 - diggit_arr.last.to_i
      hour = diggit_arr[0].to_i + 1
      first_string = "#{re_humanize(minutes_until)}"
      second_string = "to #{re_humanize(hour)}"
      "#{first_string} #{second_string}"
    end 
  
  
end
