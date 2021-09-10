Feature: Browser automation using Karate UI framework

  Background:
    #* configure driver = { type: 'chrome',addOptions: ['--headless','--windows-size=1920,1080','--incognito','--no-sandbox'], executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe',showDriverLog: false }
   * configure driver = { type: 'chromedriver',addOptions: ['--windows-size=1920,1080','--incognito','--no-sandbox'], executable: 'src/test/java/resources/chromedriver.exe',showDriverLog: false }

  Scenario: BROWSER WINDOWS

    Given driver 'http://www.seleniumframework.com/Practiceform/'
    And maximize()
    And submit().click("//button[@id='button1']")
    When switchPage('Selenium Framework | Selenium, Cucumber, Ruby, Java et al.')
    And maximize()
    Then match driver.url == 'http://www.seleniumframework.com/'

  Scenario: Ajax Form Submit

    Given driver 'https://www.seleniumeasy.com/test/ajax-form-submit-demo.html'
    And maximize()
    And input("//input[@id='title']", 'Test Form Name')
    And input("//textarea[@id='description']", 'Test Form Description')
    When submit().click("//input[@id='btn-submit']")
    Then match text('#submit-control') == 'Form submited Successfully!'

  Scenario: Bootstrap Modal Example for Automation

    Given driver 'https://www.seleniumeasy.com/test/bootstrap-modal-demo.html'
    And maximize()
    And submit().click("//a[@href='#myModal']")
    And submit().click("//a[@href='#myModal2']")
    When submit().click("//div[@id='myModal2']//a[@class='btn btn-primary'][normalize-space()='Save changes']")
    Then match text("//h2[contains(.,'Bootstrap Modal Example for Automation')]") == 'Bootstrap Modal Example for Automation'