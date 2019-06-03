
const numberButtons = document.querySelectorAll('.number');
const screen = document.querySelector('#screen');
const operatorBtns = document.querySelectorAll('.operator');
const enterBtn = document.querySelector('#enter');
const clearBtn = document.querySelector('#clear');
let displayValue = [];
let operation;
let operand_1;


//Called 'forEach' on the buttons nodelist; each element is a btn
numberButtons.forEach(btn => {
    //add the 'click' event listener and an anonymous function
    btn.addEventListener('click', displayNumber)
})

function displayNumber() {
    if (displayValue.length < 10) {
        displayValue.push(this.getAttribute('data-value'));
    }
    screen.innerHTML = displayValue.join('');
    operand_1 = parseInt(screen.innerHTML);
}



//clear button "click" function
// clearBtn.addEventListener('click', () => {
//     displayValue;
//     screen.textContent = 0;
//     myArray = [];
// })





// function oldNumberButtonHandler(e) {
//     //if the display is less than 10 characters long
//     if (displayValue.length < 10) {
//         //add the digit to the display of the calculator
//         displayValue.push(this.getAttribute('data-value'));
//     }
//     //set the screen.textContent to the joined value of the  array. This seems strange. Why am I converting it to a string? Can I simply set the innerHTML?
//     screen.innerHTML = displayValue.join('');


//*disabled operator buttons
// operatorBtns.forEach(btn => {
//     btn.addEventListener('click', function () {
//         operation = this.id;
//         myArray.push(parseInt(displayValue.join('')));
//         displayValue = [];
//     })
// })

// function calculate(arr, str) {
//     switch (str) {
//         case "plus":
//             return arr.reduce((a, b) => a + b, 0);
//             break;
//         case "minus":
//             return arr.reduce((a, b) => a - b);
//             break;
//         case "times":
//             return arr.reduce((a, b) => a * b, 1);
//             break;
//         case "divide":
//             return arr.reduce((a, b) => a / b);
//             break;
//         default:
//             console.log('Maths too thicc');
//             break;
//     }
// }


myArray = [];


//*Disabled enter button
// enterBtn.addEventListener('click', () => {
//     myArray.push(parseInt(displayValue.join('')));
//     screen.textContent = calculate(myArray, operation);
// });


//*I'm attempting to fix this calculator; so I've temporarily disable the keyboard and am focusing on click events only
//*Adding eventListeners to keyboard
// document.addEventListener('keydown', function (e) {
//     if (e.keyCode == 12) {
//         displayValue = [];
//         screen.textContent = 0;
//         myArray = [];
//     };

//     if (e.keyCode == 107) {
//         operation = "plus";
//         myArray.push(parseInt(displayValue.join('')));
//         displayValue = [];
//     }
//     if (e.keyCode == 106) {
//         operation = "times";
//         myArray.push(parseInt(displayValue.join('')));
//         displayValue = [];
//     }
//     if (e.keyCode == 109) {
//         operation = "minus";
//         myArray.push(parseInt(displayValue.join('')));
//         displayValue = [];
//     }
//     if (e.keyCode == 111) {
//         operation = "divide";
//         myArray.push(parseInt(displayValue.join('')));
//         displayValue = [];
//     }

//     if (displayValue.length < 10) {

//         if (e.keyCode == 13) { //Enter button
//             myArray.push(parseInt(displayValue.join('')));
//             //And also change the screen.textContent to the result of the calculate function;
//             screen.textContent = calculate(myArray, operation);
//         } else if (e.keyCode == 96 || e.keyCode == 48) { //the one buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 97 || e.keyCode == 49) { //the one buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 98 || e.keyCode == 50) { //the two buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 99 || e.keyCode == 51) { //the three buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 100 || e.keyCode == 52) { //the four buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 101 || e.keyCode == 53) { //the five buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 102 || e.keyCode == 54) { //the six buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 103 || e.keyCode == 55) { //the seven buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 104 || e.keyCode == 56) { //the eight buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else if (e.keyCode == 105 || e.keyCode == 57) { //the nine buttons
//             displayValue.push(e.key);
//             screen.textContent = displayValue.join('');
//         } else {
//             return;
//         }
//     } else {
//         return;
//     };
// })


//Attempting to correct the logic for the calculator

function addition(a, b) {
    return a + b
}

function subtraction(a, b) {
    return a - b
}

function multiplication(a, b) {
    return a * b
}

function division(a, b) {
    return a / b
}


function operate(operator, int1, int2) {
    switch (operator) {
        case "plus":
            return addition(int1, int2);
            break;
        case "minus":
            return subtraction(int1, int2);
            break;
        case "times":
            return multiplication(int1, int2);
            break;
        case "divide":
            return division(int1, int2);
            break;
        default:
            console.log('Maths too thicc');
            break;
    }
}

//functions to populate display when I click the numbers with the mouse