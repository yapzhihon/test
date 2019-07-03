from selenium import webdriver

browser = webdriver.Firefox(executable_path='/home/jeojeup/Development/unittest_env/geckodriver.exe')


# Edith has heard about a cool new online to-do app. She goes
# to check out its hoepage.
browser.get('http://localhost:8000')

# She notices the page title & header mention to-do lists
assert 'Django' in browser.title

# She is invited to enter a to-do item straight away

# She types "Buy peacock feathers" into a text box
# (Edith likes to make fly-fishing lures)

# When she hits enter, the page updates, and now the page lists
# "1: Buy peacock feathers" as an item in a to-do lists

# There is still a text box inviting her to add another item.
# She enters "Use feathers to make a fly"

# The page updates again, and now shows both items on her lists

# She wonders whether the site will remember her list.
# Then she sees that the site has generated a unique URL for her
# -- there is some explanatory text to that effect.

# She visits that URL - her to-do list is still there.

# Satisfied, she goes back to sleep

browser.quit()
