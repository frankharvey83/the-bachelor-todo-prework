require 'pry'

def get_first_name_of_season_winner(data, season)
winner = ""

  data.each do |season_num, array|
    if season_num == season
    array.each do |hash|
      if hash["status"] == "Winner"
          hash.each do |key, value|
            if key == "name"
              winner << value
              end
            end
          end
        end
      end
    end
  winner.split[0]
end

def get_contestant_name(data, occupation)
  winner = ""

    data.each do |season_num, array|
      array.each do |hash|
        if hash["occupation"] == occupation
            hash.each do |key, value|
              if key == "name"
                winner << value
              end
          end
        end
      end
    end
  winner
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season_num, array|
    array.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
       end
     end
   end
  counter
end

def get_occupation(data, hometown)
    data.each do |season_num, array|
      array.each do |hash|
        if hash["hometown"] == hometown
          hash.each do |key, value|
            if key == "occupation"
              return value
                end
              end
            end
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
