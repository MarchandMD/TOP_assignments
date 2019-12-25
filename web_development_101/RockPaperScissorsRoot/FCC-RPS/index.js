//Keeps track internally of userScore during game play
let userScore = 0;
//Keeps track internally of computerScore during game play
let computerScore = 0;
//span tag in the HTML with id of userScore; Pulls user score internally and displays externally
const userScore_span = document.querySelector('#userScore');
//span tag in the HTML with #computer-score; pulls computer score internally and displays externally
const computerScore_span = document.querySelector('#computer-score');
//reference to the score-board class div; is not used anywhere in the functions
const scoreBoard_div = document.querySelector('.score-board');
//the innerHTML/text content of the result_div is used to display the result of one round of the game
const result_div = document.querySelector('.result');
//selects HTML element with the id of rock; used with an event listener 'click' to call the game() function
const rock_div = document.querySelector('#rock');
//selects HTML element with the id of paper; used with an event listener 'click' to call the game() function
const paper_div = document.querySelector('#paper');
//selects HTML element with id of scissors; used with an event listener to call the game() function
const scissors_div = document.querySelector('#scissors');
//grabs all the images with class of choice
const choices = document.querySelectorAll('.choice');
//user badge
const userBadge = document.querySelector("#user-label");
const computerBadge = document.querySelector("#comp-label");


//this function encloses everything else. Once finished, all that's required to make this work is one call to this function, and the script is live. 
const main = () => {

    //helper function; 
    const getComputerChoice = () => {
        //array of the three possible choices for the computer
        const computerOptions = ['rock', 'paper', 'scissors'];
        //generates a number to use with brack notation to retrieve a "random" computer choice
        const number = (Math.floor(Math.random() * 3));
        //the return of this function, using the previous two variables
        return computerOptions[number];
    }

    function pulse(winner) {
        winner.classList.add('pulse');
    }

  


    //helper function to: update user score internally, externally, and reveal the result of a match
    function win(user, computer) {
        //increments the userScore global variable when called
        userScore++;
        //updates the display of the userScore_span in the HTML when invoked.
        userScore_span.innerHTML = userScore;
        //shows the computerScore in the HTML when the win function is invoked. Is this necessary?
        computerScore_span.innerHTML = computerScore;
        //updates the result_div with the included message. Does it need to be innerHTML or can it be changed to textContent?
        result_div.innerHTML = `${user} beats ${computer}. YOU WIN!`;
        pulse(userBadge);
    }



    //helper function; performs same functionality as the win() function, but in favor of the computer...
    function lose(user, computer) {
        computerScore++;
        userScore_span.innerHTML = userScore;
        computerScore_span.innerHTML = computerScore;
        result_div.innerHTML = `${computer} beats ${user}. YOU LOSE! :(`;
        pulse(computerBadge);
    }

    //helper function: performs same functionality as win()/lose() minus ancillary processes, in event of a tie...
    function draw(user, computer) {
        result_div.innerHTML = `IT'S A DRAW!`
    }

    //helper function; accepts one parameter; contains one function variable; Function variable is equal to a helper function; Is a series of switch statements which resolve to one off three helper functions: win(), lose(), draw(); completes the switch by creating a condition that is concatanation of the parameter + the function variable; The case statements then look for possible outcomes of the concatanation.... remarkable...
    const game = (userChoice) => {
        const computerChoice = getComputerChoice();
        switch (userChoice + computerChoice) {
            case "rockscissors":
            case "scissorspaper":
            case "paperrock":
                win(userChoice, computerChoice);
                break;
            case "rockpaper":
            case "paperscissors":
            case "scissorsrock":
                lose(userChoice, computerChoice);
                break;
            case "rockrock":
            case "paperpaper":
            case "scissorsscissors":
                draw(userChoice, computerChoice);
                break;
        }


    }

    //adds a 'click' event listener onto the rock image, and runs the game() function, and passes the rock, paper or scissor value as a hard coded thing. I can re-do this with forEach on a node list
/*     rock_div.addEventListener('click', () => {
        game("rock");
    });
    paper_div.addEventListener('click', () => {
        game("paper");
    });
    scissors_div.addEventListener('click', () => {
        game("scissors");
    }); */

    choices.forEach(element => {
        element.addEventListener('click', function() {
            game(`${this.id}`);
        });
    });



}


main();


