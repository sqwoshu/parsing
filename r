import os
from selenium import webdriver
import pyautogui
from time import sleep

class parser():
    def __init__(self):
        self.browser = webdriver.Chrome('C:\\Users\\9\\PycharmProjects\\Bot_Rabo4ii\\chrmedriver\\chromedriver.exe')

    def open_txt(self):
        browser = self.browser
        browser.get('https://nordaccount.com/login/identifier?challenge=ee96ee4e77ae435cb9cbe4ffb4a01205')
        sleep(5)

        f = open('nord.txt', 'r')
        for line in f:
            try:
                command = 'echo | set /p nul=' + line.strip() + '| clip'
                os.system(command)

                browser.get('https://nordaccount.com/login/identifier?challenge=ee96ee4e77ae435cb9cbe4ffb4a01205')
                sleep(4)

                browser.find_element_by_xpath('//*[@id="identifier_field"]').click()
                pyautogui.hotkey('ctrl', 'v')
                sleep(3)

                browser.find_element_by_xpath('//*[@id="app"]/div/div/div/div/div/div/div/div/form/fieldset/button').click()
                sleep(3)
                browser.close()
            except Exception:
                sleep(5)
                browser.close()

    def pars(self):
        f = open('nord.txt', 'r')
        for line in f:
            command = 'echo | set /p nul=' + line.strip() + '| clip'
            os.system(command)


bot = parser()
bot.open_txt()
