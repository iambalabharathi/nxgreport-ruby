require "test/unit"
require "./lib/nxgreport.rb"

class TestNxgReport < Test::Unit::TestCase
    
    def setup()
        @expected_default_report_location = "./NxgReport.html"
        File.delete(@expected_default_report_location) if File.file?(@expected_default_report_location)
        @nxg_report = NxgReport.new()
    end

    def test_nxg_report_global_variable_is_not_nil()
        assert_not_nil($NxgReport)
    end

    def test_default_location()
        @nxg_report.setup()
        assert_equal(@expected_default_report_location, @nxg_report.nxg_report_path())
    end

    def test_report_folder_is_created_if_not_exists()
        @nxg_report.setup(location: "./new/test/index.html")
        folder = File.dirname(@nxg_report.nxg_report_path)
        assert(File.directory?(folder))
    end

    def test_default_report_title()
        @nxg_report.setup()
        assert_equal("Features Summary", @nxg_report.title)
    end

    def test_default_auto_open_state_is_false() 
        @nxg_report.setup()
        assert(!@nxg_report.auto_open) 
    end
    
end