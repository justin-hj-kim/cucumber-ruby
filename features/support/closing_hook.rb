
After do |scenario|
  
    if scenario.failed?
      $driver.quit
    end

    if scenario.passed?
      $driver.quit
    end

  end



=begin
After do 
    $driver.quit
  end
=end
