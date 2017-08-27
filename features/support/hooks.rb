Before do
  test_mode = ENV.fetch('TEST_MODE') { 'local' }
  if test_mode.eql? 'remote'
    @browser = Watir::Browser.new :remote
  elsif test_mode.eql? 'local'
    @browser = Watir::Browser.new(:chrome)
  else
    raise "invalid test mode provided: #{test_mode}"
  end
end

After do |scenario|
  begin
    if scenario.failed?
      Dir::mkdir('screenshots') if not File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
  ensure
    @browser.close
  end
end