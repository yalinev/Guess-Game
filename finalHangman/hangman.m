
% Guessing food dishes from different parts of the country 
% Needs Loops, Vectors, and Conditional Statements 

% Updates: 
% Loops and heart works as intended
% Still need to add hint and image feature 

% Greeting the player 
% https://emojicombos.com/cute-ascii-art (For ASCII ART)
disp(" <strong> ⋆｡ °✩ WELCOME HANGMAN (FOOD EDITION) ⋆｡ °✩ </strong> ");
disp("  _____________________________________________________________________")

disp(" <strong> How The Game Works </strong>");
fprintf("  You will be given an unknown dish from a country.\n" + ...
    "  Each time you guess correctly, you are gifted a heart.\n" + ...
    "  If you guess incorrectly, you will lose a heart.\n" + ...
    "  Keep in mind you ONLY have a total of 10 hearts!\n" + ...
    "  NOTE: Entering the same letter or an anything incorrect in general WILL\n" + ...
    "  take away a heart!\n");

disp("  _____________________________________________________________________");
fprintf("  If you are on your third life, you will be given a hint!\n" + ...
    "  The hint will consist of the country in which the dish is from,\n" + ...
    "  the first letter of the dish, AND an ingredient in the dish.\n");

disp(" "); 

fprintf("  Once you run out of hearts OR finish guessing a word successfully,\n" + ...
    "  you can choose to quit or continue playing! If you keep playing you will\n" + ...
    "  have the same amount of hearts + 1 since you guessed the dish correctly!\n" + ...
    "  _____________________________________________________________________\n");
disp("                      (´｡• ᵕ •｡`) Goodluck!");
disp("  ____________________________________________________________________")

% Store all the words inside a 1x1 vector 
% Using ... instead of , to continue row 
foodDishes = ["Pad Thai", "Poutine", "Haggis", "Ceviche"... 
              "Biryani", "Paella","Lumpia", "Nasi Goreng"...
              "Peking Duck", "Gyros", "Momo", "Hainanese Chicken Rice"... 
              "Enchiladas", "Bibimbap", "Nasi Lemak", "Meat Pie"]; 

% Initialize how many hearts the player has initially 
hearts = 10; 

% Ask user if they are ready to start 
start = input("  Are you ready to start? (1 = Yes, 0 = No): ");
disp(" ");

while (start ~= 0 && hearts ~= 0)

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
    % https://au.mathworks.com/help/matlab/ref/isstrprop.html
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

    % Display the unknown word to the player
    fprintf("  The dish you have to guess is!: %s\n", unknownDish);

    % Calls the guess() function and updates the remaining hearts with the... 
    % ...return variable
    hearts = guess(pickedFood, pickedFoodString, unknownDish, hearts);

    % Checks to see if user still has hearts remaining 
    if (hearts > 0)
        foodInfo(pickedFoodString);
        disp("  _____________________________________________________________________")
        fprintf("  Congratulations! You gain an extra heart!\n");

        % Updates the number of hearts the player has 
        hearts = hearts + 1; 

        fprintf("  If you continue to play you will have %d hearts!\n", hearts); 
        continuePlay = input("  Would you like to continue playing? (1 = Yes, 0 = No): ");
        disp(" ");

        % Checking if player wants to keep playing 
        if (continuePlay == 1)
            start = 1; 

        elseif(continuePlay == 0)
            start = 0; 

            break;

        end
    end
end 

disp("  Goodbye!")

% Read the image and set it to img
img = imread('endimage.jpg');

% Display image
imshow(img);

% Delay image 
pause(3);

% This closes the image so the player doesn't have to manually
close; 










