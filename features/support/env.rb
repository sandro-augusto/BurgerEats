#encoding: utf-8

require 'cucumber'
require 'selenium-webdriver'
require 'yaml'
require 'webdrivers'


def driver_init
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage().window().maximize()
    $driver.navigate.to "https://buger-eats.vercel.app/"
end

