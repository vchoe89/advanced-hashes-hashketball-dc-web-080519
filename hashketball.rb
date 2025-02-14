require "pry"


# def game_hash
#   {
#     home: {
#       :team_name => "Brooklyn Nets",
#       :colors => ["Black", "White"],
#       :players => [
#         "Alan Anderson" => {
#           :number => 0,
#           :shoe => 16,
#           :points => 22,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 3,
#           :blocks => 1,
#           :slam_dunks => 1
#         },
#         "Reggie Evans" => {
#           :number => 30,
#           :shoe => 14,
#           :points => 12,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 12,
#           :blocks => 12,
#           :slam_dunks => 7
#         },
#         "Brook Lopez" => {
#           :number => 11,
#           :shoe => 17,
#           :points => 17,
#           :rebounds => 19,
#           :assists => 10,
#           :steals => 3,
#           :blocks => 1,
#           :slam_dunks => 15
#         },
#         "Mason Plumlee" => {
#           :number => 1,
#           :shoe => 19,
#           :points => 26,
#           :rebounds => 12,
#           :assists => 6,
#           :steals => 3,
#           :blocks => 8,
#           :slam_dunks => 5
#         },
#         "Jason Terry" => {
#           :number => 31,
#           :shoe => 15,
#           :points => 19,
#           :rebounds => 2,
#           :assists => 2,
#           :steals => 4,
#           :blocks => 11,
#           :slam_dunks => 1
#         }
#       }
#     },
#     away: {
#       :team_name => "Charlotte Hornets",
#       :colors => ["Turquoise", "Purple"],
#       :players => {
#         "Jeff Adrien" => {
#           :number => 4,
#           :shoe => 18,
#           :points => 10,
#           :rebounds => 1,
#           :assists => 1,
#           :steals => 2,
#           :blocks => 7,
#           :slam_dunks => 2
#         },
#         "Bismack Biyombo" => {
#           :number => 0,
#           :shoe => 16,
#           :points => 12,
#           :rebounds => 4,
#           :assists => 7,
#           :steals => 7,
#           :blocks => 15,
#           :slam_dunks => 10
#         },
#         "DeSagna Diop" => {
#           :number => 2,
#           :shoe => 14,
#           :points => 24,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 4,
#           :blocks => 5,
#           :slam_dunks => 5
#         },
#         "Ben Gordon" => {
#           :number => 8,
#           :shoe => 15,
#           :points => 33,
#           :rebounds => 3,
#           :assists => 2,
#           :steals => 1,
#           :blocks => 1,
#           :slam_dunks => 0
#         },
#         "Kemba Walker" => {
#           :number => 33,
#           :shoe => 15,
#           :points => 6,
#           :rebounds => 12,
#           :assists => 12,
#           :steals => 22,
#           :blocks => 5,
#           :slam_dunks => 12
#         }
#       }
#     }
#   }
# end

def game_hash
  {
    away: { 
      team_name: 'Charlotte Hornets',
      colors: %w[Turquoise Purple],
      players: [
        { player_name: 'Jeff Adrien',
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 },
        { player_name: 'Bismack Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10 },
        { player_name: 'DeSagna Diop',
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5 },
        { player_name: 'Ben Gordon',
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
        { player_name: 'Kemba Walker',
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12 }
      ] },
    home: { 
      team_name: 'Brooklyn Nets',
      colors: %w[Black White],
      players: [
        { player_name: 'Alan Anderson',
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1 },
        { player_name: 'Reggie Evans',
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7 },
        { player_name: 'Brook Lopez',
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15 },
        { player_name: 'Mason Plumlee',
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5 },
        { player_name: 'Jason Terry',
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1 }
      ]
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




def shoe_size(player_name)
  game_hash.each do |location, team_info|
    team_info[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end
  end
end







def num_points_scored(player_name)
  game_hash.each do |location, team_info|
    team_info[:players].each do |player|
      # player is now the entire player hash
      if player[:player_name] == player_name
        return player[:points]
      end
    end
  end
end



def player_numbers(team)
  numbers = []
  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if data == team
        game_hash[location][:players].each do |player|
          numbers << player[:number]
        end
      end
    end
  end
return numbers
end


def player_stats(player_name)
  game_hash.each do |location, team_info|
    # you know the vibes
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == player_name
            player.delete(:player_name)
            return player
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0

  game_hash.each do |location, team_info|
    team_info[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end

  rebounds
end


def most_points_scored
  player = ""
  most_points = 0

  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute.to_s == "players"
        data.each do |current_player|
          if current_player[:points] > most_points
            most_points = current_player[:points]
            player = current_player[:player_name]
          end
        end
      end
    end
  end

  player
end


def winning_team
  home_team_name = game_hash[:home][:team_name]
  away_team_name = game_hash[:away][:team_name]
  home_team_points = 0
  away_team_points = 0

  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if location == :home
            home_team_points += player[:points]
          else
            away_team_points += player[:points]
          end
        end
      end
    end
  end

  home_team_points > away_team_points ? home_team_name : away_team_name
end


def player_with_longest_name
  player = ""

  game_hash.each do |location, team_info|
    team_info.each do |attribute, data|
      if attribute == :players
        data.each do |current_player|
          if current_player[:player_name].length > player.length
            player = current_player[:player_name]
          end
        end
      end
    end
  end

  player
end

def long_name_steals_a_ton?
  long_name = ""
  most_steals = 0
  most_steals_name = ""

  game_hash.each do |location, team_info|
    team_info[:players].each do |player|
      if player[:player_name].length > long_name.length
        long_name = player[:player_name]
      end

      if player[:steals] > most_steals
        most_steals = player[:steals]
        most_steals_name = player[:player_name]
      end
    end
  end

  long_name == most_steals_name ? true : false
end

