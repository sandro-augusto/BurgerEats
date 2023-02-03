#encoding: utf-8

def scroll_to(el)
    upload = $driver.find_element(:"#{el['type']}", el['value'])
    $driver.action
    .scroll_to(upload)
    .perform
end

def move_to(el)
    wait_for_display(el)
    move_to = driver.find_element(:"#{el['type']}", el['value'])
    $driver.action
    .move_to(move_to)
    .perform
end



