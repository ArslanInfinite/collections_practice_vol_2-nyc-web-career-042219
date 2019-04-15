# your code goes here
def begins_with_r(arrayay)
  arrayay.all? do |arrayay|
    arrayay[0] == 'r'
  end
end

def contain_a(arrayay)
  a_arrayay = []
  arrayay.each do |arrayay|
    i = 0
    while i < array.length
      if array[i].include?('a')
        a_arrayay << array
      end #end if
      i += 1
    end #end while

  end #end arrayay
  a_arrayay
end

def first_wa(arrayay)
  #use detect to return first true
  # wa_arrayay = []

  arrayay.detect do |array|
    # if array[0] == "w" && array[1] == "a"
      # wa_arrayay << array
    # end
    array[0] == "w" && array[1] == "a"
  end

  # wa_arrayay.first
end

def remove_non_strings(arrayay)

  arrayay.select do |array|
    array.class == String
  end
end

def count_elements(arrayay)
  #count how many times something appears in the arrayay
  #if v = v, count it then add it to the hash and remove the value and key

  dup_name = nil

  arrayay.each do |key|
    key[:count] = 1
    key.each do |k, v|

      if dup_name == v || dup_name == nil
        dup_name = v #sets dup_name outside of loop
        key[:count] += 1
      end #end if

    end
  end

  arrayay.uniq

end

def merge_data(arrayay1, arrayay2)

 #if name == details
 #name[motto_name] = details
 #start with arrayay2 first

  # arrayay2.each do |name_hash|
  #   name_hash.each do |name, data|
  #     arrayay1.each do |hash|
  #       hash.each do |motto_name, details|
  #         if hash[:first_name] == name
  #           name_hash[name][motto_name] = details
  #         end
  #         # binding.pry
  #       end #hash
  #     end #arrayay1
  #   end #name_hash
  # end #arrayay2

  #  [{
  #    :awesomeness=>10,
  #    :first_name=>"blake",
  #    :height=>"74",
  #    :last_name=>"johnson",
  #    :motto=>"Have a koala..."
  #  }, {
  #    :first_name=>"ashley",
  #    :height=>60,
  #    :last_name=>"dubs",
  #    :motto=>"I dub thee, 'Lady Brett Ashley'."
  # }]

  #if key[:first_name] == name
  #key[detail_key] = detail_value
  arrayay1.each do |key|
    arrayay2.each do |name_hash|
      name_hash.each do |name, data|
        data.each do |detail_key, detail_value|
          if key[:first_name] == name
            key[detail_key] = detail_value
            # binding.pry
          end #end if
        end #data
      end #name_hash
    end #arrayay2
  end #arrayay1

  arrayay1
end

def find_cool(arrayay)
  arrayay.select do |hash|
    hash[:temperature] === "cool"
  end #arrayay
end

def organize_schools(arrayay)
  new_hash = {}
  arrayay.each do |school, location_hash|
    location_hash.each do |location, city|
      if !new_hash.has_key?(city)
        school_arrayay = []
        school_arrayay << school
        new_hash[city] = school_arrayay
      else
        new_hash[city] << school
      end #end if
      # binding.pry
    end #location_hash
  end #arrayay
  new_hash
end
