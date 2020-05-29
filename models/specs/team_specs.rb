require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../team.rb")

class TestTeam < MiniTest::Test

    def setup()

        options1 = {
            'name' => 'Westwood FC'
        }

        @team1 = Team.new(options1)

    end

    def test_team_name
        assert_equal('Westwood FC', @team1.name)
    end

end
