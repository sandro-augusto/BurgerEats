def set(el, text)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).send_keys text
end

def clear(el)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).clear
end