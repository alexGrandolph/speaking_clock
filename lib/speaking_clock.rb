require 'humanize'

class SpeakingClock

  def self.re_humanize(number)
   number.humanize.gsub('-', ' ')
  end 

  def self.speak(digits)
    diggit_arr = digits.split(":")
    if diggit_arr.last == "00"
      first_string = "#{diggit_arr[0].to_i.humanize}"
      second_string = "o'clock"
    elsif diggit_arr.last.to_i <= 25
      first_string = "#{re_humanize(diggit_arr.last.to_i)}"
      second_string = "past #{diggit_arr[0].to_i.humanize}"
    end 

    "#{first_string} #{second_string}"
  
  end 
  
  
end

