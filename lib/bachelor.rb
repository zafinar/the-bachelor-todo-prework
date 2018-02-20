def get_first_name_of_season_winner(data, season)
  data.each{|se, info|
      if se == season
      info.each{|person|
      puts person
      return person["name"].split(" ")[0]}
      end



    }


end

def get_contestant_name(data, occupation)
  data.each{|se, info|
  info.each{|person|
    if person["occupation"] == occupation
      return person["name"]
    end
  }
  }



end

def count_contestants_by_hometown(data, hometown)
count = 0
  data.each{|se, info|
    info.each{|person|
if person["hometown"] == hometown
  count += 1
end
    }}
count

end

def get_occupation(data, hometown)
  data.each{|se, info|
    info.each{|person|
        if person["hometown"] == hometown
          return person["occupation"]
        end
    }}

end

def get_average_age_for_season(data, season)
ages = []
  data.each{|se, info|
   if se == season
    info.each{|person|
    ages << person["age"].to_i

    }
  end
  }
sum = 0
ages.each{|a| sum +=a}
(sum.to_f / ages.length).round
  end
