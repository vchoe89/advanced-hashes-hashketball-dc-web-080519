require "pry"


def game_hash
  {
    home: {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    away: {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Kemba Walker" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def team_colors(team_name)
  hash = game_hash
  array = []
  hash.each do |location, attributes|
    if hash[location].values.include?(team_name)
      attributes.each do |attribute, info|
        if attribute == :colors
          return info
        end
      end
    end
  end
end




def team_names
    array = []
    game_hash.each do |team_playing, data|
        data.each do |key, value|
            if key == :team_name
                array.push(value)
            end
        end
    end
    return array
end

def shoe_size(player)
  array2 = []
  game_hash.each do |location, team_data|
      team_data.each do |attribute, values|
          if attribute == :players
            values.each do |person, data|
              data.each do |i, j|
                if person == player && i == :shoe
                  array2.push(j)
                end

              end
            end
          end
      end
  end
  return array2[0]
end



def num_points_scored(player_name)
  player_points = 0
  game_hash.collect do |team, stats|
    stats[:players].collect do |player, data|
      if player == player_name

        player_points = data[:points]
    end 
  end 
end 
player_points
end 

# def player_numbers(team)
#   array2 = []
#   game_hash.each do |location, team_data|
#       team_data.each do |attribute, values|
#           if attribute == :players
#             values.each do |person, data|
#               data.each do |i, j|
#                 if i == :number
#                   array2.push(j)
#                 end

#               end
#             end
#           end
#       end
#   end
#   return array2
# end 

def player_numbers(team)
  numbers = []

  game_hash.each do |location, team_info|
    # location = home/away
    team_info.each do |attribute, data|
      # attribute = :team_name, :colors, :players
      if data == team
        game_hash[location][:players].each do |player|
          numbers << player[:number]
        end
      end
    end
  end
  
  numbers
end



([1,2,5].reduce(:+).to_f / [1,2,3].length.to_f)


# def player_stats(player_name)
#   player_stats = {}
#   game_hash.each do |team, team_details_hash|
#     team_details_hash[:players].each do |stats|

#       if stats[:name] == player_name
#         stats.delete(:name)
#         player_stats = stats
#       end
#     end
#   end
#   player_stats
# end

def player_stats(player_name)
  game_hash.keys.each do |team|
    if game_hash[team][:players].keys.include?(player_name)
      return game_hash[team][:players][player_name]
    end 
  end 
end 

def big_shoe_rebounds
  big_shoes_guy = 0
  rebounds = 0
    game_hash.each do | team, team_details_hash|
      team_details_hash[:players].each do | stats |
        if stats[:shoe] > big_shoes_guy
          big_shoes_guy = stats[:shoe]
          rebounds = stats[:rebounds]
        end
      end
    end
  rebounds
end





