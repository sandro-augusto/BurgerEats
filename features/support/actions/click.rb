#encoding: utf-8

def press_enter
    $driver.action.send_keys("\n").perform
end

def press_tab
    $driver.action.send_keys("\t").perform
end

def click(el)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).click
end

def click_text(text)
   wait.until { text_exists? text }.click
end