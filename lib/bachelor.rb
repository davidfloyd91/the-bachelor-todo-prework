def get_first_name_of_season_winner(data, season)
  first_name = nil

  data.each do |a, b|
    if a == season
      b.each do |c|
        if c["status"] == "Winner"
          first_name = c["name"].split(" ")[0]
        end
      end
    end
  end

  first_name
end

def get_contestant_name(data, occupation)
  name = nil

  data.each do |a, b|
    b.each do |c|
      if c["occupation"] == occupation
        name = c["name"]
      end
    end
  end

  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |a, b|
    b.each do |c|
      if c["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  occupation_array = []

  data.each do |a, b|
    b.each do |c|
      if c["hometown"] == hometown
        occupation_array << c["occupation"]
      end
    end
  end

  occupation_array[0]
end

def get_average_age_for_season(data, season)
  ages = []

  data.each do |a, b|
    if a == season
      b.each do |c|
        ages << c["age"].to_f
      end
    end
  end

  sum = 0
  i = 0

  while i < ages.count
    sum += ages[i]
    i += 1
  end

  age = (sum / ages.count).round
end
