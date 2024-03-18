### WHAT IS WEB SCRAPING?
 
 * the internet is full of huge amount of data which can be used for different purposes. 
 * To collect this data we need to know how to scrape data from a website

 * web scraping is the process of extracting and collecting data from website and storing it on a local machine or in a database.

 * we will be using beautifulsoup and requests packages to scrape data. The package version we are using is beautifulsoup 4.

 * To scrape data from websites, basic understanding of HTML tags and CSS selectors is needed. We target content from a website using HTML tags, classes or/and ids.

#### Let us import the request and beautifulsoup module

```Python

import requests
from bs4 import BeautifulSoup
url = "https://archive.ics.uci.edu/dataset/2/adult.php"

response = requests.get(url)
status = response.status_code
print(status)
content = response.content # we get all the information from the website
soup = BeautifulSoup(content, "html.parser") # beautiful soup will give a chance to parse
print(soup.title) # <title>UCI Machine Learning Repository: Data Sets</title>
print(soup.title.get_text()) # UCI Machine Learning Repository: Data Sets
print(soup.body) # gives the whole page on the website
print(response.status_code)

tables = soup.find_all('table', {'cellpadding':'3'})

```

 * We are targeting the table with cellpadding attribute with the value of 3
 * We can select using id, class or HTML tag , for more information check the beautifulsoup doc

```Python

table = tables[0] # the result is a list, we are taking out data from it
for td in table.find('tr').find_all('td'):
    print(td.text)

```

#### another option

```Python

tables = soup.find_all("table", {"cellpadding": "3"})
if tables:
    table = tables[0]
    for row in table.find_all("tr"):
        for td in row.find_all("td"):
            print(td.text)

```

 * 200 OK: The request was successful. This is the standard response for successful HTTP requests.

 * 404 Not Found: The requested resource could not be found on the server.

 * 403 Forbidden: The server understood the request, but it refuses to authorize it. This usually happens when you don't have the necessary permissions to access the resource.

 * 500 Internal Server Error: A generic error message returned by the server when an unexpected condition was encountered.

 * 301 Moved Permanently: The requested resource has been assigned a new permanent URI, and any future references to this resource should be done using that URI.


#basics_python
