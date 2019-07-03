from selenium import webdriver

browser = webdriver.Firefox(executable_path='/home/jeojeup/Development/unittest_env/geckodriver.exe')
browser.get('http://localhost:8000')

assert 'Django' in browser.title
