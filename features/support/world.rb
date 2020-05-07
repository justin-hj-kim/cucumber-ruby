module KnowsTheDomain
    def driver
        @driver ||= Selenium::WebDriver.for :firefox
    end

    def wait
        @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    end
    
end

World(KnowsTheDomain)