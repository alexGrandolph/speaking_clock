require 'humanize'

class SpeakingClock

  def self.re_humanize(number)
   number.humanize.gsub('-', ' ')
  end 

  def self.speak(digits)
    diggit_arr = digits.split(":")
    
    if diggit_arr.last.end_with?('0')  || diggit_arr.last.end_with?('5') 
      if diggit_arr.last == "00"
        double_zeros(diggit_arr)
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
      if diggit_arr.last == "15"
        "quarter past #{re_humanize(diggit_arr[0].to_i)}"
      else  
        first_string = "#{re_humanize(diggit_arr.last.to_i)}"
        second_string = "past #{re_humanize(diggit_arr[0].to_i)}"
        "#{first_string} #{second_string}"
      end   
    end 

    def self.to_the_hour(diggit_arr)
      hour = diggit_arr[0].to_i + 1
      if diggit_arr.last == "45"
        "quarter to #{re_humanize(hour)}"
      else  
        minutes_until = 60 - diggit_arr.last.to_i
        first_string = "#{re_humanize(minutes_until)}"
        second_string = "to #{re_humanize(hour)}"
        "#{first_string} #{second_string}"
      end 
    end 

    def self.double_zeros(diggit_arr)
      if diggit_arr[0] == '00'
        "midnight"
      elsif diggit_arr[0] == '12'
        "noon"
      else
        first_string = "#{re_humanize(diggit_arr[0].to_i)}"
        second_string = "o'clock"
        "#{first_string} #{second_string}"
      end   

    end 
  
end
