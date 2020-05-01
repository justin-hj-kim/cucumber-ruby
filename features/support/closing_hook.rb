=begin
After do |scenario|
    if scenario.failed?
      $driver.quit
    end
  end
=end

After do 
    $driver.quit
  end
