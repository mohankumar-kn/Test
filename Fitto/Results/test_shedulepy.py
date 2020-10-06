
from selenium import webdriver
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
import time

browser = webdriver.Chrome()
browser.get('http://fitto-test-admin.fitto-at.com/')
emailElem = browser.find_element_by_name('email')
emailElem.send_keys('admin')
# nextButton = browser.find_element_by_name('password')
# nextButton.click()
time.sleep(1)
passwordElem = browser.find_element_by_name('password')
passwordElem.send_keys('password')
time.sleep(2)
loginButton = browser.find_element_by_xpath('//*[@id="root"]/div/div/div/div/div/div[2]/button/span[1]')
loginButton.click()
time.sleep(4)

shceduleButton = browser.find_element_by_xpath('//*[@id="root"]/div/div/div/div/div/div/div/div[6]/ul/a/div/div/span').click()

time.sleep(3)
SelectOrganisatiob = browser.find_element_by_xpath("//option[contains(text(),'apollo')]").click()
time.sleep(2)
SelectLocation = browser.find_element_by_xpath("//option[contains(text(),'jayanagar')]").click()
time.sleep(3)
SelectDoctor = browser.find_element_by_xpath("//option[contains(text(),'Dr Sudhakar Rao')]").click()

StartDate = browser.find_element_by_xpath("//*[@id='root']/div/div/div/main/div/div/div[1]/div[4]/div/div/input").send_keys('30/09/2020')
time.sleep(5)
# elem = browser.find_element_by_xpath("/html/body/div[1]/div/div/div/main/div/div/div[1]/div[5]/div/div/input")
# ac = ActionChains(browser)
# ac.move_to_element(elem).move_by_offset(10, 20).click().perform()
# time.sleep(2)
EndDate = browser.find_element_by_xpath('/html/body/div[1]/div/div/div/main/div/div/div[1]/div[5]/div/div/input').send_keys('10/10/2020')
time.sleep(3)
EditButton = browser.find_element_by_xpath('/html/body/div[1]/div/div/div/main/div/div/div[2]/div/div/div/div[1]/div/img').click()
time.sleep(3)
EditStartdate = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[1]/div[1]/div/div/input').send_keys('30/09/2020')
time.sleep(5)
EditEnddate = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[1]/div[2]/div/div/input').send_keys('15/10/2020')
time.sleep(3)
SessionDuration = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[2]/div/div/div/input').send_keys('20')
time.sleep(3)
# AvailableMon = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[3]/div/div/button[2]').click()
# time.sleep(2)
# AvailableTue = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[3]/div/div/button[3]').click()
# time.sleep(2)
# AvailableWed = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[3]/div/div/button[4]').click()
# time.sleep(2)
# AvailableThu = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[3]/div/div/button[5]').click()
# time.sleep(2)
# AvailableFri = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[3]/div/div/button[6]').click()
time.sleep(3)
# elem = browser.find_element_by_xpath("/html/body/div[4]/div[3]/div[4]/div[1]/div/div/input")
# ac = ActionChains(browser)
# ac.move_to_element(elem).move_by_offset(0, 17).click().perform()
FromTime = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[4]/div[1]/div/div').click()
time.sleep(15)

# time.sleep(2)
ToTime = browser.find_element_by_xpath('/html/body/div[4]/div[3]/div[4]/div[2]/div/div/input').send_keys('15:30  PM')
time.sleep(4)
SaveSchedule = browser.find_element_by_xpath('/html/body/div[4]/div[3]/button').click()


# SelectOrganisation = browser.find_element_by_class_name("Schedule_select__2jMai").send_keys('apollo')
# SelectOrganisatiob.select_by_value('1')

# time.sleep(3)
# SelectLocation = browser.find_element_by_xpath('//*[@id="root"]/div/div/div/main/div/div/div[1]/div[2]/select')
# SelectLocation.select_by_value(1)
# time.sleep(2)
# SelectDoctor = browser.find_element_by_xpath('//*[@id="root"]/div/div/div/main/div/div/div[1]/div[3]/select')
# time.sleep(3)
# SelectDoctor.select_by_value(1)






#
# from selenium import webdriver
# from selenium.webdriver.support.select import Select
# from selenium.webdriver.common.keys import Keys
# driver = webdriver.Chrome("/Users/mohan/Documents/Test/Selenium/chromedriver.exe")
#
# driver.implicitly_wait(10)
#
# driver.maximize_window()
#
# driver.get("http://fitto-uat-admin.fitto-at.com/")
# driver.find_element_by_name("email").send_keys("admin")
# driver.find_element_by_name("password").send_keys("password")
# driver.find_element_by_xpath("//span[@class='MuiButton-label']").click()
# driver.find_element_by_xpath("//span[contains(text(),'Schedule')]").click()
# driver.find_element_by_xpath("//option[contains(text(),'apollo')]").click()
# driver.find_element_by_xpath("//option[contains(text(),'jayanagar')]").click()
# driver.find_element_by_xpath("//option[contains(text(),'Harish Kumar')]").click()
# driver.find_element_by_xpath("//*[@id='root']/div/div/div/main/div/div/div[1]/div[4]/div/div/input").send_keys('28-09-2020')
# driver.find_element_by_xpath("//*[@id='root']/div/div/div/main/div/div/div[1]/div[5]/div/div/input").send_keys('01-10-2020')


# driver = webdriver.Chrome()
# driver.get("http://gmail.com")
#
# driver.find_element_by_id("identifierId").send_keys('your mail id')
# driver.find_element_by_id("identifierNext").click()
# time.sleep(5)
# driver.find_element_by_name("password").send_keys('your password')
# driver.find_element_by_id("passwordNext").click()
# time.sleep(5)
#
# driver.get("https://accounts.google.com/SignOutOptions?hl=en&continue=https://mail.google.com/mail&service=mail")
# driver.find_element_by_xpath('//button[normalize-space()="Sign out"]').click()
# driver.close()