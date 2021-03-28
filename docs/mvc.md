# The Model View Controller (MVC) Pattern:

GET /about
HTTP/1.1
HOST 127.0.0.1

## Routes
Matchers for the URL requested ie.

GET for "/about"

The above, then tells the respective controller that a request has been hit and the Controller will work the response, in this case the AboutController

## Models
Database Wrapper.

User:
- Query for records
- Wrap individual records

## Views
Your response body content:
-HTML
-CSV
-PDF
-XML

Either of these is what gets to the browser and is displayed.

## Controllers
Decide how to process a request and define a response.
