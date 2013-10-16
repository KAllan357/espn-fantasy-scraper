module ESPN
  module Scraper
    class Scoreboard

      def initialize
      end

      def scrape
        data = Wombat.crawl do
          base_url "http://games.espn.go.com"
          path "/boxscorequick?leagueId=717417&teamId=7&scoringPeriodId=6&seasonId=2013&view=scoringperiod&version=quick"

          tables "css=playerTableTable tableBody", :list

          players "css=pncPlayerRow", :iterator do
            name "css=playertablePlayerName"
          end
        end
        puts data

      end
    end
  end
end