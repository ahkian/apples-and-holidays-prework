require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |v, k|
    k << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |v, k|
    k << supply
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  answer = []
  holiday_hash[:winter].each do |k, v|
    v.each do |el|
      answer << el
    end
  end
  answer
end

def all_supplies_in_holidays(holiday_hash)
  str1 = ""
  str2 = ""
  str3 = ""
  holiday_hash.each do |season, holidays|
    str1 << season.to_s.capitalize! + ":"
    holidays.each do |holiday, supplies|
      holiday = holiday.to_s.split("_")
      holiday.each {|word| word.capitalize!}
      holiday = holiday.join(" ").to_s
      str2 << holiday + ": "
      supplies.each do |el|
        i = 0
        while i < supplies.length - 1
          str3 << supplies[i] + ", "
          i += 1
        end
      end
      str3 << supplies[-1]
      puts str1
      puts str2 + str3
      str2 = ""
      str3 = ""
    end
    str1 = ""
  end
end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
