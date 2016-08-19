Plan:
Google jquery resources, commands
Test each jquery thing that seems useful at first glance

 <script type ="text/javascript" src = "script.js"></script>

- $() says, "hey, jQuery things are about to happen!"
- Putting document between the parentheses tells us that we're about to work our magic on the HTML document itself.
- .ready(); is a function, or basic action, in jQuery. It says "hey, I'm going to do stuff as soon as the HTML document is ready!"
- Whatever goes in .ready()'s parentheses is the jQuery event that occurs as soon as the HTML document is ready

example:
$(document).ready(function() {
$('div').mouseenter(function() {
    $('div').fadeTo('fast', 1);
}
});

jquery commands:
https://api.jquery.com/

Ultimately, in terms of explaining to me what syntax was doing, I found Codecademy's explanations to be very useful and helpful. But they didn't provide me with a list of what was possible with jquery, so I had to look elsewhere for that.