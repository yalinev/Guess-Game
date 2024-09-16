

% Guessing food dishes from different parts of the country 
% Needs Loops, Vectors, and Conditional Statements 

% Greeting the player 
disp(" <strong> ⋆｡ °✩ WELCOME PLAYER! ⋆｡ °✩ </strong> ");
disp(" _____________________________________________________________________")

disp(" <strong> How The Game Works </strong>");
fprintf("  You will be given an unknown dish from a country.\n" + ...
    "  Each time you guess correctly, you are gifted a heart.\n" + ...
    "  If you guess incorrectly, you will lose a heart.\n" + ...
    "\n  Keep in mind you ONLY have a total of 5 hearts!\n");

disp(" _____________________________________________________________________");
fprintf("  If you are on your last life, you will be given the option\n" + ...
    "  to get a hint with no costs! You can choose between getting a random\n" + ...
    "  letter from the word OR the country in which the dish originated from!\n");

disp(" "); 

fprintf("  You can quit whenever you want to! Just check the menu by simply typing\n" + ...
    "  'menu' and you will find the commands there. You can also check how many guesses\n" + ...
    "  you got right AND how many lives you are on!\n" + ...
    "  _____________________________________________________________________\n");
disp("  (´｡• ᵕ •｡`) Goodluck!");
disp(" ")

% Store all the words inside a vector 
% Using ... instead of , to continue row 
foodDishes = ["Pad Thai", "Poutine", "Haggis", "Ceviche"... 
              "Biryani", "Paella","Lumpia", "Nasi Goreng"...
              "Peking Duck", "Gyros", "Momo", "Hainanese Chicken Rice"... 
              "Enchiladas", "Bibimbap", "Nasi Lemak", "Meat Pie"]; 

% This produces a single integer between index 1 and length of the vector
% foodDishes, determining the chosen word
r = randi([1,length(foodDishes)], 1,1);

% Assigns pickedFood to the string located at index r in the vector 
pickedFoodString =  foodDishes(r); 

% Convert to char 
pickedFood = convertStringsToChars(pickedFoodString); 

% Create empty array to hold dish displayed in '*' 
unknownDish = []; 

% checks for spaces in the word 
% returns 1 if there is a space 
checkSpaces = isstrprop(pickedFood,'wspace'); 

% Loop through the checkSpaces variable
% Adding either '*' or ' ' depending if there is a space in the word 
for i = (1:strlength(pickedFoodString))

    if (checkSpaces(i) == 1)
        unknownDish = [unknownDish, ' '];

    elseif (checkSpaces(i) == 0)
        unknownDish = [unknownDish, '*'];
    end 
end

% variables 
% life player has
hearts = 5; 
% kept false until player guesses all the chars correrctly 
finishGuess = false; 

% need to update unknownDish using loop as player guesses correctly 

% Testing section below:

% Ask user if they are ready to start 
start = input("  Are you ready to start? (1 = Yes, 0 = No):  ");

if (start == 1)
    % Display the unknown word to the player
    fprintf("  The dish you have to guess is!: %s\n", unknownDish);

        playerGuess = input("  Enter guess: ","s");

            % The for loop being placed is the issue?
            for i = [1:strlength(pickedFoodString)]

                if (strcmp( pickedFood(i) , playerGuess ) == 1)
                    disp("  Correct guess! ")
                    unknownDish(i) = playerGuess;
                    disp("  ", unknownDish);

                elseif (strcmp( pickedFood(i), playerGuess ) == 0)
                    disp("  Wrong guess! ")
                    hearts = hearts - 1; 
                
                end 
            end 
    
% The loop does not run as wanted
% Check development3.txt 

elseif (hearts == 0)
    disp("  Sorry you ran out of hearts :( thank you for playing!")

elseif (start == 0)
    disp("  Goodbye!")


end 
