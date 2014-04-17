## Questions

### Question 0

HTTP - Hyper Text Transfer Protocol

Language that is spoken between client and server to transfer web documents (and other resources).

How does it work?

It defines a set of rules for communication between c and s. Hence "protocol".

HTTP has nothing to do with HTML.

HTTP leverages (sit on top of) TCP. TCP is the mechanism for connecting between two machines (two IP addresses) and allows the two machines to send messages to each other. There's always an intiator (client) and receiver (server).

If both cient and server speak and support a particular language then they can communicate productively over that TCP connection. HTTP is a form of communication (language) that a server much support in order to provide content on the web. This allows browsers to connect over TCP to the server to download/upload web content.

### Question 1

What are the two most important parts of an HTTP *request*? (Please give this some thought, don't just google _"what are the two most important parts of an HTTP request"_ :)

GET and POST

1. What document/file you are trying to access (URI / path)
2. How would you like to access it? Method or Verb. GET vs. POST.

### Question 2

What is the difference between a GET and a POST request?

GET is the client requesting information. Safe request as this doesn't/shouldn't allow client to mangle info.

POST is a client sending info to the server for the server to do with as it will.

High level answer:

'GET' -ing Getting is fetching (reading / downloading) information. This implies that nothing changes on the server. Similar to double-clicking a file in Finder/Explorer (doesn't modify the file, even its last modified date is not changed).

Wouldn't've

'POST' -ing Has all the same elements as GET but also allows the client to submit informationalong with the request. This implies that something changes on the server as a result (assuming it was successful).

Both have a response which could be content.

### Question 3

a. What is a "Web Server"?

A server accessable online. Piece of software that listens for TCP connection to the machine and speaks HTTP to serve some sort of content/app.

It's doing an infinite loop and listening for requests and responding to them one by one.

    loop do
      if receive_request?
        handle request
        respond
      else
        sleep/wait
      end
    end

b. What is a Web Client? Provide an example

Web browser.

Firefox. Chrome. Whateves, bra.

It speaks HTTP. It connects to the web server and sends requests


c. What language/protocol do they speak?

HTTP?

### Question 4

Write down your understanding of how a browser communicates with a website in terms of HTTP and request/response.

User types in URL:
1. Browser makes a HTTP GET request to the server for the pahe (HTML)
2. Server sends back HTML.
3. Browser retrieves HTML and scans it for additional shit that it needs to render the page (css, js, images)
5. For each resource (element) such as JS/CSS/IAGES the the browser.
  a. Makes an HTTP GET request ro the server for that resource/file (.css, .js, .png, .jpg)
  b. Server receives the request and sends the contants of the file back
6. Once the browser has all the things (HTML + all the other assets) for the page, it shows the page to the user

### Question 5

a. How many HTTP requests are made when you go to <http://www.hackernews.com>? Are they all `GET` requests? Why?

All GETs. Just requesting elements/assets/info.


b. What happens in the browser when you click on the "comments" link for an article (in terms of HTTP) ?

Makes a request for an item. Loads the comment box!

### Question 6

a. What are HTTP Status codes and why are they important?

An HTTP response is always accompanied by a status code indicating how a request wnet. Was it successful.

The most commong that you most hopefully encounter is 200. 200 is an 'okay'.

b. Does the browser send these up to the server as part of the request?

No, dammit! The server sends these to the browser.

c. What is a HTTP 200 vs a HTTP 404 vs a HTTP 500.

Different errors.

100-199 : informational status
200-299 : success status
300-399 : redirection status
400-499 : client errors
500-599 : server errors

200 OK - Success!
404 Page "Not Found" 
500 Internal Server Error

d. What about HTTP 418?

Does it exist?

I'm a tea pot. Joke status.