After do |scenario|
  
  if scenario.failed?
    driver.quit
  end

  if scenario.passed?
    driver.quit
  end

  if scenario.skipped?
    expect { raise StandardError }.to raise_error
  end
  
end

