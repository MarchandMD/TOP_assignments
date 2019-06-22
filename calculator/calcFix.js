
const numberButtons = document.querySelectorAll('.number');
const screenAbove = document.querySelector('#screen');
const screen = document.querySelector('#screen1');
const operatorBtns = document.querySelectorAll('.operator');
const enterBtn = document.querySelector('#enter');
const clearBtn = document.querySelector('#clear');
let displayValue = [];
let operation;
let operand_1;
let operand_2;
let running_total = 0;


//adding event listeners to each number
numberButtons.forEach(btn => {
    btn.addEventListener('click', displayNumber)
})

//handler function for clicking on numbers of calculator
function displayNumber() {
    if (displayValue.length < 10 && screenAbove.innerHTML == undefined) {
        displayValue.push(this.getAttribute('data-value'));
    } else if (displayValue.length < 10 && screenAbove.innerHTML != undefined) {
      displayValue.push(this.getAttribute('data-value'));
    } else {console.log(operand_1)};
    screen.innerHTML = displayValue.join('');
}

//adding event listeners to operator buttons
operatorBtns.forEach(btn => {

  btn.addEventListener('click', storeScreenAndOperation)
})

//handler function for clicking on operator buttons
function storeScreenAndOperation() {
  if (screenAbove.innerHTML == '') {
    operation = this.getAttribute('data-value');
    operand_1 = parseInt(screen.innerHTML);
    screenAbove.innerHTML = operand_1;
    displayValue = [];
    screen.innerHTML = "";
  } else {
    console.log(operand_1);
    console.log(operation);
    operand_2 = parseInt(screen.innerHTML);
    console.log(operand_2);
    running_total = parseInt(operate(operation, operand_1, operand_2));
    console.log(`The running total is: ${running_total}`);
    screenAbove.innerHTML = running_total;
    displayValue = [];
    operand_1 = running_total;
    console.log(operand_1);
  }
}

//add event listener to Enter button
enterBtn.addEventListener('click', calculateAnswer);

//handler function for Enter button
function calculateAnswer() {
  operand_2 = parseInt(screen.innerHTML);
  screen.innerHTML = operate(operation, operand_1, operand_2);
  screenAbove.innerHTML = '';
  displayValue = [];
  console.clear();
}

myArray = [];

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

