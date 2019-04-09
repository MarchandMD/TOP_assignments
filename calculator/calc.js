//grabs all the buttons on the calculator, so i can shake them
const buttons = document.querySelectorAll('.button');
//targets all the number buttons on the calculator, so I can build operand1 and operand2 which get pushed to an array
const numericBtns = document.querySelectorAll('.numeric');

/* the display of the calculator; I use this JS variable with .textContent many times in this script; I also need to remove the clickability of this grid item; maybe remove the class of button from it? That was easy...now just apply some styling to it */
const screen = document.querySelector('#screen');
/* //the operator buttons! This was a stroke of genius for me; really made everything come together. I have event listeners on them. Instead of trying to run a function when they're pushed, I use their id and assign it to a global variable of 'operation', which I use as part of the calculate(). It's not that I realize I'd like to re-factor this to dispose of the use of global variables */
const operatorBtns = document.querySelectorAll('.operator');
//This is the enterButton. I grab this and run the calculate function on it. The calculate function takes two arguments: an array and a string. The array will be the two operands (which is an array called myArray) and the string is the value of operation. The calculate function then runs a switch statement, using the string as the conditional expression, and then applies the .reduce() method in 4 different ways.The enter button also does some other things, but I jsut want to identify what I'm grabbing at this point
const enterBtn = document.querySelector('#enter');
//grabs the clear button from the calculator, so I can add an event listener to it. 
const clearBtn = document.querySelector('#clear');

//an empty array. used to display on the screen, and used to push operands to myArray
let displayValue = [];
//global operation variable. Values are assigned via the operator buttons being clicked. Pushing an operation button multiple times will still only result in a single value being applied to the operation variable; Either plus, minus, times or divide. 
let operation;


// shake the buttons when clicked, because I think that's needed; I wanted to add a little animation to the buttons, because when I was designing the calculator the buttons looked like they were asymmetrical, despite being symmetrical. I thought it'd be a nice touch to make it look like the buttons were loose, and moved when clicked. I can probably apply some GSAP to this...to really up the animation game. And I'm going to add some scroll magic as well....

//So, here's the nodeList of all the buttons. I call forEach on the nodelist, and I assign a function variable of button. I think use the fat arrow and curly braces to define what I'm going to be doing forEach button...
buttons.forEach(button => {
    //and on each button, i'm going to add the 'click' event listener; Then I have decided to use an arrow function with no arguments
    button.addEventListener('click', () => {
        //I've decided to add the class of 'shake' to each button, when it gets pushed. check out the CSS file for a description of the shake CSS rule
        button.classList.add('shake');
        //then, i've decided to use a Timeout function to remove the class of shake. The shake animation happens in 0.1s, so when the button is pushed, the Timeout function will wait 100ms and then remove the class 'shake' from the button. I pulled this technique form Wes Bos's Javascript 30 course (the first lesson; as of this writing, i'm currently on the second lesson....lol)
        setTimeout(function () {
            button.classList.remove('shake')
        }, 100);
    })

});

//Adding an event listener to the 'clear' button...
clearBtn.addEventListener('click', () => {
    //reset the displayValue array to be empty
    displayValue = [];
    //reset the screen to read zero...
    screen.textContent = 0;
    //empty myArray of any operands lingering in it
    myArray = [];
})


//numericBtns is a nodelist of the buttons that have numbers on them. 
//I assign a function variable of btn to stand for each item in the nodelist, then I use a fat arrow to set up the block of things i'm going to do when a numeric button is pushed
numericBtns.forEach(btn => {
    //here i'm adding a 'click' event listener, and then defining the function of things to do when a number button is pushed
    btn.addEventListener('click', function () {
        //I am pushing the data-attribute (again, i'm taking this from Wes Bos's Javascript30 course...highly recommended); I suppose now I could probably push the textContent of the button, and remove this redundancy
        if (displayValue.length < 13) {
            displayValue.push(this.getAttribute('data-value'));
        }
        //i'm also assigning the contents of the displayValue array to the screen text Content. Really what i'm doing is combining the values of the array into a single string, and then assigning that to the screen. However you'd like to read it...
        screen.textContent = displayValue.join('');
    })
})





//Sets the "operation" variable to the id of the operator button clicked; to be used in the calculate function when enterBtn clicked
operatorBtns.forEach(btn => {
    btn.addEventListener('click', function () {
        operation = this.id;
        //I also push the contents of the displayValue array to myArray; I also decided to parseInt()..which means I make sure the value is a number and not a string
        myArray.push(parseInt(displayValue.join('')));
        //I also clear the displayValue array, getting it ready for the next round of entries. 
        //the reason this works is that every numeric button push is grabbing the contents of the displayValue array and pushing them to the screen. When I hit an operator button, I'm effectively erasing the displayValue of the screen...sort of....but it's important to remember that displayValue and screen.textContent are two different things. 
        displayValue = [];
    })
})

//so this was kind of my storke of genius; or my extension of a stroke of genius; What I want to do when the enter button is pushed is run the calculate function. When It dawned on me that I can use the Array.prototype.reduce() method to complete all 4 basic mathematical functions for this calculator, I realized I didn't have to worry about too many messy functions; Anecdotally, when I hit an operator button, the operator button is saying "Hey! The plus button was pushed"...or whatever function. After that logic was clear to me, the rest sort of fell into place....

//the reason this works is....the str argument being passed to the calculate funciton is in a finite universe. That is, it's one of only 4 hard-coded ids: plus, minus, times or divide. I'm fairly confident in basically using the reduce function, so it's straight forward. 
function calculate(arr, str) {
    switch (str) {
        case "plus":
            return arr.reduce((a, b) => a + b, 0);
            break;
        case "minus":
            return arr.reduce((a, b) => a - b);
            break;
        case "times":
            return arr.reduce((a, b) => a * b, 1);
            break;
        case "divide":
            return arr.reduce((a, b) => a / b);
            break;
        default:
            console.log('Maths too thicc');
            break;
    }
}

//the array of operands; I think i'll rename it to operands sometime soon...
myArray = [];


//the funcitonality for the enter button; when it's clicked
enterBtn.addEventListener('click', () => {
    //push the second operand to the myArray array
    myArray.push(parseInt(displayValue.join('')));
    //then display the maths
    screen.textContent = calculate(myArray, operation);
});
enterBtn.addEventListener('keydown', () => {
    //push the second operand to the myArray array
    myArray.push(parseInt(displayValue.join('')));
    //then display the maths
    screen.textContent = calculate(myArray, operation);
});

//everything else I do with this is just icing on the cake. Stylistically, aesthetically... I've achieved what I set out to do and feel comfortable moving on with the TOP curriculum


const controller = new ScrollMagic.Controller();

new ScrollMagic.Scene({
    duration: '200%', /* where will the end indicator be placed? */
    triggerElement: '.main', /*On top of what element will the start indicator be placed? */
    triggerHook: 0 /* Where will the trigger be placed?*/
})
.addIndicators()
.setPin('.main')/* What element is going to be pinned while scroll magic is occuring? */
.addTo(controller);

