

% guess(): This function checks if the char the player enters matches 
% the char in the word and returns the hearts 

% parameter: food string, food string as a Char, hearts, the word...
% ...displayed in '*' 

% return variable: hearts remaining 

function [hearts] = guess(pickedFood, pickedFoodString, unknownDish, hearts)

% Variables
correctGuess = 0;
% Counts how many times the hint has been given per word
hintCounter = 0; 

    % Loops while the heart is not 0, and the unknown character vector...
    % ...still contains the character '*'
    while(hearts ~= 0 && contains(unknownDish, '*'))

        % Reset the variable at the start of each iteration 
        correctGuess = 0; 

        % Checking if heart = 3 so it will display the hint 
        % The hintCounter < 1 makes it so that the hint only happens...
        % ...once per word guess 
        if (hearts == 3 && hintCounter < 1)
            % Calling the hint function
            hints(pickedFoodString);
            disp("  _____________________________________________________________________")
            hintCounter = hintCounter + 1; 
        end

        playerGuess = input("  Enter guess: ",'s');
        disp(" ");

        % Gets the length of the player's input
        len = length(playerGuess);

        % Checks if input is a single character
        if (ischar(playerGuess) == true && len == 1)

            for i = [1:length(pickedFood)]

                % For correct guess
                if (strcmpi( pickedFood(i),playerGuess ) == true)
                character = pickedFood(i);

                % adds the character equal to the player's guess into... 
                % ...the unknownDish char vector 
                unknownDish(i) = character;
                correctGuess = correctGuess + 1; 

                % for inside if statement 
                end  

             % for the for statement
             end 

            % If player guessed wrong, a heart is taken 
            if (correctGuess <= 0)
                hearts = hearts - 1;
                fprintf("  This is incorrect!\n"); 
            end

            % Display the unknown dish with updated characters 
            fprintf("  Updated word: %s\n", unknownDish);

            % Let user know how many lives they have left 
            if (hearts <= 0)
                fprintf("  You have no more hearts remaining. Thank you for playing!\n");
            else 
                fprintf("  %.0f Hearts remaining!\n", hearts);
                disp("  _____________________________________________________________________")
            end 

        % end if statement 
        end 

    % end while loop 
    end


        
 
