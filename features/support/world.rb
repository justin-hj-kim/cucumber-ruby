module KnowsTheDomain
    def driver
        
        #chromedriver_path = File.join(File.absolute_path('C:\Users\justin.kim\Desktop\sele', File.dirname(__FILE__)),"chromedriver.exe")
        #Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path
        @driver ||= Selenium::WebDriver.for :firefox
        #@driver ||= Selenium::WebDriver.for :internet_explorer



        #@username = 'justin.kim%40smartbear.com' 
        #@authkey = 'u44408308a592b5e' 
        # Defining capabilities of the test session, such as browser, OS, and resolution
        #@caps ||= Selenium::WebDriver::Remote::Capabilities.new
        #@caps["name"] = "Basic Example" # A name for your test
        #@caps["build"] = "1.0"  #Versioning data for your site or application as you test
        #@caps["browser_api_name"] = "Safari10" #You can get a full list of browser, OS, and resolution combinations from our API
        #@caps["os_api_name"] = "Mac10.12" 
        #@caps["screen_resolution"] = "1024x768" 
        #@caps["record_video"] = "true"
        #@caps["record_network"] = "false"      
        #@driver ||= Selenium::WebDriver.for(:remote, :url => "http://#{@username}:#{@authkey}@hub.crossbrowsertesting.com:80/wd/hub", :desired_capabilities => @caps)
        
        #@chromedriver_path = File.join(File.absolute_path('C:\Users\justin.kim\Desktop\sele', File.dirname(__FILE__)),"chromedriver.exe")
        #Selenium::WebDriver::Chrome::Service.driver_path = @chromedriver_path
        #@driver ||= Selenium::WebDriver.for :chrome
        
    end

    def wait
        @wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    end
    
end

World(KnowsTheDomain)