


def get_text(text)
    wait_for_display(el)
    $driver.find_element(:"#{el['type']}", el['value']).text
end