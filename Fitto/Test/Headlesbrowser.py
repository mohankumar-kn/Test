from selenium import webdriver
from selenium.webdriver.chrome.options import Options
# from selenium.webdriver.firefox.options import Options
from webdriver_manager.chrome import ChromeDriverManager
import time
import xlrd
workbook = xlrd.open_workbook("/home/mohan/PycharmProjects/test/TestData/TestData.xls")
sheet = workbook.sheet_by_name("login") #Read data from Excel sheet named "UserCredentials"
rowCount = sheet.nrows
colCount = sheet.ncols
# print(rowCount)
# print(colCount)
for curr_row in range(1, rowCount):
     url = sheet.cell_value(curr_row, 0)
     username = sheet.cell_value(curr_row, 1)
     password = sheet.cell_value(curr_row, 2)
     print(url)
     print(username)
     print(password)
chrome_options = Options()
# Firefox_options = Options()
# Firefox_options.add_argument("--headless")
chrome_options.add_argument("--headless")
chrome_options.headless = True # also works
driver = webdriver.Chrome(ChromeDriverManager().install(), options=chrome_options)
# driver = webdriver.Chrome(options=chrome_options)
# driver = webdriver.Firefox(options=Firefox_options)
driver.get(url)
emailElem = driver.find_element_by_name('j_username')
emailElem.send_keys(username)
time.sleep(2)
passwordElem = driver.find_element_by_name('j_password')
passwordElem.send_keys(password)
time.sleep(2)
driver.find_element_by_xpath('/html/body/div[2]/div/div/div[2]/form/div/div[3]/button[1]').click()
driver.quit()