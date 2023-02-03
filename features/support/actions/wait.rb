
def wait
    Selenium::WebDriver::Wait.new :timeout => 10
end

def wait_for_display(el)
    wait.until { $driver.find_element(:"#{el['type']}", el['value']).displayed? }
end

def wait_for_text_to_text(text)
    wait.until { text_exists? text }
end

