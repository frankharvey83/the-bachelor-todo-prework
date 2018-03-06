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
              winner.split[0]
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
