import requests
from bs4 import BeautifulSoup

def check():
    html = requests.get("https://www.youtube.com/@penguinz0/live").text
    soup = BeautifulSoup(html, "lxml")
    results = soup.find_all("link", rel="canonical")

    print(results[0].get('href'))
    if "channel" in results[0].get('href'):
        print("YES")
    else:
        print("NO")

if __name__ == "__main__":
    check()
