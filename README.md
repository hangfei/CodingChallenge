BrightEdge Codinng Challenge
===============
##Description
Design and build a robust text scraper that will connect to a page on www.shopping.com and return results about a given keyword. There are two queries that will be performed:  

Query 1: Total number of results  
Given a keyword, such as "digital camera", return the total number of results found.  
Query 2: Result Object  
Given a keyword (e.g. "digital cameras") and page number (e.g. "1"), return the results in a result object and then print results on screen. For each result, return the following information:  
Title/Product Name (e.g. "Samsung TL100 Digital Camera")  
Price of the product  
Shipping Price (e.g. "Free Shipping", "$3.50")  
Vendor (e.g. "Amazon", "5 stores")  

For "digital cameras", there should be either 40 or 80 results that return for page 1.  


##Project Architectrue
The TextScraper Class is the main class. It coordinates different modules and handles the main procedures. The procedures including request search result, and get response and parse through the results. The requesting and response of HTTP to shopping.com is handled by HTTPClient class. The conversion to w3c DOM is handled by DomOperator class. The parsing is handled by WebpageParsingModule. And there are also some helper classes, like FileOpeartor, ProjectHelper and one data model class.


####Supporting Package:
- jtidy
- org.w3c.dom
- org.apache.http

##Usge instructions 
The programe is provided as a Java runnable jar file.
To run this, you have two options:
- Query 1: (requires a single argument)  
java -jar Assignment.jar <keyword> (e.g. java -jar Assignment.jar "baby strollers") 
- Query 2: (requires two arguments)  
java -jar Assignment.jar <keyword> <page number> (e.g. java -jar Assignment.jar "baby strollers" 2) 


##Where to get help
Please contact hangfeilin@gmail.com

##Contribution guidelines
TBD

##Contributor list
Hangfei Lin

##Credits, Inspiration, Alternatives
BrightEdge Inc.
