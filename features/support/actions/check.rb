#encoding: utf-8

def text_exists?(text)
    $driver.find_element(:xpath, "//*[text()='#{text}']")
end