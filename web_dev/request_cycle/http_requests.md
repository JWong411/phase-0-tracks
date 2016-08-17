What are some common HTTP status codes?
200 = OK
201 = Created
204 = No Content
304 = Not Modified
400 = Bad Request
401 = Unauthorized
403 = Forbidden
404 = Not Found
409 = Conflict
500 = Internal Server Error

What is the difference between a GET request and a POST request? When might each be used?

GET requests a representation of the specified resource. Note that GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.

POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.

Basically, GET is used to retrieve remote data, and POST is used to insert/update remote data.

What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
 
A cookie is a small piece of data sent by an Internet server to a browser, which is returned by the browser each time it subsequently accesses the same server, used to identify the user or track their access to the server.

