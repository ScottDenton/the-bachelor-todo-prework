require "pry"
def get_first_name_of_season_winner(data, season)
  first_name = "unknown"
  data[season].each do |people|

      if people["status"] == "Winner"
        first_name =  people["name"]
      end
    end

  first_name.split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do|person|
    if person["occupation"] == occupation
      return person["name"]
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  result = 0
  data.each do |season, contestants|
    contestants.each do|person|
    if person["hometown"] == hometown
      result += 1
    end
    end
  end
  result
end

def get_occupation(data, hometown)
occupations = []
  data.each do |season, contestant|
    contestant.each do |person|
      if person["hometown"] == hometown
        occupations << person["occupation"]
    end
  end
end
occupations[0]
end

def get_average_age_for_season(data, season)
  ages = 0
  data[season].each do |person|
    persons_age = person["age"].to_f
    ages = ages + persons_age
  end
  average_age = (ages/ (data[season].length)).to_f.round
average_age.to_f.round
end
