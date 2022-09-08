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

    elsif diggit_arr.last.to_i >= 35
      minutes_until = 60 - diggit_arr.last.to_i
      hour = diggit_arr[0].to_i + 1
      first_string = "#{re_humanize(minutes_until)}"
      second_string = "to #{re_humanize(hour)}"
    end 

    "#{first_string} #{second_string}"
  
  end 
  
  
end

      # number_to_subtract = diggit_arr.last.to_i
      # first string = "#{60 - re_humanize(number_to_subtract)}"