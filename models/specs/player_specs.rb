require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../player.rb")

class TestPlayer < MiniTest::Test

    def setup()

        options1 = {
            'first_name' => 'Sam',
            'second_name' => 'Cassie',
            'age' => 23,
            'position' => 'CM'
        }

        options2 = {
            'first_name' => 'Pete',
            'second_name' => 'Smith',
            'age' => 20,
            'position' => 'CF',
        }

        @player1 = Player.new(options1)
        @player2 = Player.new(options2)

    end

    def test_player1_first_name
        assert_equal('Sam', @player1.first_name)
    end


end
