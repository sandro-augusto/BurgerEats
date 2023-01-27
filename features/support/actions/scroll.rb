#encoding: utf-8

def scroll_to(el)
    upload = $driver.find_element(:"#{el['type']}", el['value'])
    $driver.action
           .scroll_to(upload)
           .perform
end


