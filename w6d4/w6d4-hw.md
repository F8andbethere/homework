## 1.
#### What is the setTimeout function for?

A delayed execution of a function. It's asynchronous.

#### Is it available from JS or from jQuery?

JavaScript.

#### What is an example use case for using it?

Auto complete's and animations.

## 2.
#### What is the setInterval function?

Repeatedly execute the function based on a specified time interval.

#### What is an example use case for using it?

It's often used to poll for data. Primitive implementation would be for a chat service.

#### What does it return?

Gives you a back an integer with an ID of the timer that is set.

#### How do you cancel an interval?

You have to cancel the setInterval function. ie. window.clearInterval(intervalID)

## 3.
#### In HTML, what is &nbsp; for? Why do we need it?

&nbsp is a non-breaking space. Used to let the browser know not to break on a specific space. 

#### What is the escape code for the copyright symbol?

'&#169;'

## 4.
#### What does JSONP allow us to do that we cannot do with regular JSON?

Cross domain AJAX requests. Wiggling into another 

## 5.
#### In jQuery, there are additional AJAX helpers like $.get and $.post:
#### How do they differ? Provide examples of when each is used, if that helps you explain your answer

$.get is synonymous with $.ajax.

$.post is synonymous with $.ajax.

Shorthand versions with default values.

#### Can you just use the $.ajax function directly instead of using them?



## 6.
#### The flickr example on jQuery’s .getJSON() api documentation page uses $.each():

#### Is this a JavaScript function?

JQuery, right?

#### How is it different from a for loop?

Not much. Nicer, quicker syntax.

#### Which do you prefer and why? (subjective)

Both have their place. The .each is cleaner for interating over the entire array, but if I have to specify a specific iteration, cool.

## 7.
#### Why do APIs choose to respond with JSON instead of responding with HTML/CSS like regular URLs do?

APIs are to be used by your code/devs abd thus communicate in terms of data and not presentation. That data can be used by the consumer to generate HTML of whateves.

#### What is another common, but increasingly less popular, alternative to the JSON data format?

XML is a type of SGML which is what HTML is.

## 8.
#### What is the difference between jQuery’s append and appendTo functions?

Same thing, 'cept the syntax is changed.

## 9.
#### What are some alternate / competing libraries to jQuery? List at least 2 others.

Snack.js and Zepto.js

## 10.
#### What is the purpose/need for adding data attributes to DOM elements, when they have no meaning for the browser (the browser ignores them) ?

















