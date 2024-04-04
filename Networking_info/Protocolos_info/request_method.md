### Request Methods

The GET, POST, PUT and DELETE are the HTTP request methods which we are going to implement an API or a CRUD operation application.

1. GET: GET method is used to retrieve and get information from the given server using a given URI. Requests using GET should only retrieve data and should have no other effect on the data.

2. POST: POST request is used to create data and send data to the server, for example, creating a new post, file upload, etc. using HTML forms.

3. PUT: Replaces all current representations of the target resource with the uploaded content and we use it modify or update data.

4. DELETE: Removes data


### mas informacion mas fuentes

# Request Methods in HTTP Protocol

HTTP defines various request methods that indicate the desired action to be performed for a given resource:

1. **GET**: Used to retrieve data from the server. It is safe and idempotent, meaning it should not change the state of the server and can be repeated without different outcomes. [[2](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)]

2. **POST**: Submits data to be processed to a specified resource. It is often used to create new resources or send data to the server for processing. It is neither safe nor idempotent. [[1](https://www.w3schools.com/tags/ref_httpmethods.asp)]

3. **PUT**: Replaces all current representations of the target resource with the request payload. It is used to update or create a resource, and it should be idempotent but is not necessarily safe. [[4](https://www.linkedin.com/pulse/what-http-request-its-use-cases-exploring-methods-ram-udgar-yadav)]

4. **DELETE**: Removes the specified resource. It is used to delete a resource, and it is idempotent but not necessarily safe. [[4](https://www.linkedin.com/pulse/what-http-request-its-use-cases-exploring-methods-ram-udgar-yadav)]

5. **PATCH**: Applies partial modifications to a resource. It is used to apply partial modifications to a resource, making it potentially idempotent but not necessarily safe. [[4](https://www.linkedin.com/pulse/what-http-request-its-use-cases-exploring-methods-ram-udgar-yadav)]

6. **HEAD**: Requests the headers that would be returned if the HEAD request's URL was instead requested with the GET method. It is used to retrieve metadata without the response body.

7. **OPTIONS**: Requests information about the communication options available for the target resource. It is used to determine the supported methods by the server for a specific resource.

8. **TRACE**: Echoes back the received request so that a client can see what (if any) changes or additions have been made by intermediate servers. It is primarily used for debugging purposes.

9. **CONNECT**: Establishes a tunnel to the server identified by the target resource. It is used to set up a network connection to a web server via a proxy.

These methods allow clients to interact with web servers to perform various operations on resources. [[5](https://en.wikipedia.org/wiki/HTTP)] [[6](https://http.dev/methods)]

## 🌐 Sources
1. [W3Schools - HTTP Methods GET vs POST](https://www.w3schools.com/tags/ref_httpmethods.asp)
2. [MDN Web Docs - HTTP request methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
3. [LinkedIn - What is HTTP Request and Its Use Cases: Exploring Methods](https://www.linkedin.com/pulse/what-http-request-its-use-cases-exploring-methods-ram-udgar-yadav)
4. [HTTP.dev - HTTP Methods explained](https://http.dev/methods)

[[protocolo_HTTP]]

