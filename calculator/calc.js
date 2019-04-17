const buttons = document.querySelectorAll('.button');
const numericBtns = document.querySelectorAll('.numeric');
const screen = document.querySelector('#screen');
const operatorBtns = document.querySelectorAll('.operator');
const enterBtn = document.querySelector('#enter');
const clearBtn = document.querySelector('#clear');
let displayValue = [];
let operands = [];
let result;
let operation;

buttons.forEach(button => {

    button.addEventListener('click', () => {
        button.classList.add('shake');
        setTimeout(function () {
            button.classList.remove('shake')
        }, 100);
    })
});

clearBtn.addEventListener('click', () => {
    displayValue = [];
    screen.textContent = 0;
    operands = [];
})

numericBtns.forEach(btn => {
    btn.addEventListener('click', function () {
        if (displayValue.length < 10) {
            displayValue.push(this.getAttribute('data-value'));
        }
        screen.textContent = displayValue.join('');
    })
})


operatorBtns.forEach(btn => {
    btn.addEventListener('click', function () {
        operation = this.id;
        operands.push(parseInt(displayValue.join('')));
        displayValue = [];
    })
})

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






enterBtn.addEventListener('click', () => {
    operands.push(parseInt(displayValue.join('')));
    result = calculate(operands, operation);
    screen.textContent = result;
    operands = [];
    operands.push(result);
    displayValue = [result];
});



//*Adding eventListeners to keyboard
document.addEventListener('keydown', function (e) {
    if (e.keyCode == 12) {
        displayValue = [];
        screen.textContent = 0;
        operands = [];
    };

    if (e.keyCode == 107) {
        operation = "plus";
        operands.push(parseInt(displayValue.join('')));
        displayValue = [];
    }
    if (e.keyCode == 106) {
        operation = "times";
        operands.push(parseInt(displayValue.join('')));
        displayValue = [];
    }
    if (e.keyCode == 109) {
        operation = "minus";
        operands.push(parseInt(displayValue.join('')));
        displayValue = [];
    }
    if (e.keyCode == 111) {
        operation = "divide";
        operands.push(parseInt(displayValue.join('')));
        displayValue = [];
    }

    if (displayValue.length < 10) {

        if (e.keyCode == 13) { //Enter button
            operands.push(parseInt(displayValue.join('')));
            //And also change the screen.textContent to the result of the calculate function;
            screen.textContent = calculate(operands, operation);
        } else if (e.keyCode == 96 || e.keyCode == 48) { //the one buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 97 || e.keyCode == 49) { //the one buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 98 || e.keyCode == 50) { //the two buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 99 || e.keyCode == 51) { //the three buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 100 || e.keyCode == 52) { //the four buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 101 || e.keyCode == 53) { //the five buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 102 || e.keyCode == 54) { //the six buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 103 || e.keyCode == 55) { //the seven buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 104 || e.keyCode == 56) { //the eight buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else if (e.keyCode == 105 || e.keyCode == 57) { //the nine buttons
            displayValue.push(e.key);
            screen.textContent = displayValue.join('');
        } else {
            return;
        }
    } else {
        return;
    };
})