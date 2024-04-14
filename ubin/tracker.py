#!/bin/python
import requests
from bs4 import BeautifulSoup
import os


# def css_selector_to_bs4(selector, soup):
#     """
#     Converts a simple CSS selector into Beautiful Soup commands to find elements.
    
#     Parameters:
#         selector (str): A CSS selector.
#         soup (BeautifulSoup): The BeautifulSoup object to search within.
    
#     Returns:
#         BeautifulSoup element(s) or None.
#     """
#     elements = soup
#     selectors = selector.split(' ')

#     for sel in selectors:
#         if '#' in sel:  # ID selector
#             sel_id = sel.split('#')[-1]
#             elements = elements.find(id=sel_id)
#         elif '.' in sel:  # Class selector
#             class_name = sel.split('.')[-1]
#             elements = elements.find_all(class_=class_name)
#             if len(elements) == 1:
#                 elements = elements[0]
#         else:  # Tag selector
#             elements = elements.find_all(sel)
#             if len(elements) == 1:
#                 elements = elements[0]
        
#         if not elements:
#             break

#     return elements

# # Example usage
# html_content = '<html><body><div id="content"><p class="text">Example paragraph.</p></div></body></html>'
# soup = BeautifulSoup(html_content, 'html.parser')

# selector = 'div #content .text'
# result = css_selector_to_bs4(selector, soup)

# if result:
#     print(result)
# else:
#     print('No element found.')


# def checkLive(selector):
#     # check if backup folder exists
#     if not os.path.exists(backups):
#         os.makedirs(backups)  # create the folder if it doesn't exist

#     # open backup folder in current dir
#     with open(backups, "r") as f:
#         for line in f:
#             if selector in line:
#                 return True
#     return False

def getSelectors():
    # open the file and read the selectors
    with open('selectors.txt', 'r') as file:
        selectors = file.readlines()
        selectors = [selector.strip() for selector in selectors]
    return selectors


# Get the HTML content
response = requests.get('https://google.com')
html_content = response.text

# Parse the HTML using BeautifulSoup
soup = BeautifulSoup(html_content, 'lxml')

selectors = getSelectors()

# Find elements matching each selector
for selector in selectors:
    elements = soup.select(selector)
    print(elements)
    # Do something with the elements

