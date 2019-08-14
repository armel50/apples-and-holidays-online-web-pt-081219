require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 
  holiday_hash[:winter].each do |holyday, array_of_supply|
    array_of_supply << supply 
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
 all_supplies =  holiday_hash[:winter].collect{ |key,val| val}
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
  
      puts "#{season.to_s.capitalize}:"
  
    holiday.each do |key,val|
 
        supply = val.join(", ")
    
        capitalized_holiday =  key.to_s.split("_").collect{|el| el.capitalize}.join(" ") 
      
        puts "  #{capitalized_holiday}: #{supply}" 
   
    end
    
  end

end

def all_holidays_with_bbq(holiday_hash)
  
  result = []
  
   holiday_hash.each do |season, holiday|
      holiday.each do |key, val|
       result << key if val.include?("BBQ")
     end
  end
  result
end







