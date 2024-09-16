
% guess(): This function checks if the char the player enters matches 
% the char in the word. 

% parameter: Food String, Food String as Char, Word
% displayed in '*' 

% return variable: the word(food) displayed in '*' updated if player
% guesses correctly, and the number of lives remaining

% new issues: (program does stop when word is fully guessed && when heart = 0)
% if same char is entered, the program doesn't realize 
% after entering a wrong char, the program does nothing 


% function [unknownDish, hearts] = guess(pickedFoodString, pickedFood, unknownDish)
function [unknownDish, hearts] = guess1(pickedFood, unknownDish)

% variable
hearts = 5;
correctGuess = 0;  


    while(hearts ~= 0 && contains(unknownDish, '*'))

        % Reset the variable at the start of each iteration 
        correctGuess = 0; 

        playerGuess = input("  Enter guess: ",'s');

        len = length(playerGuess);

        if (ischar(playerGuess) == true && len == 1)

            for i = [1:length(pickedFood)]

                % For correct guess
                if (strcmpi( pickedFood(i),playerGuess ) == true)
                    character = pickedFood(i);
                    % adds the character equal to the player's guess into... 
                    % ...the unknownDish char vector 
                    unknownDish(i) = character;
                    correctGuess = correctGuess + 1; 


                end % for inside if statement  

            end % for the for statement 

             % If player guessed wrong, a heart is taken 
         if (correctGuess <= 0)
            hearts = hearts - 1;
         end

          % Display the unknown dish with updated characters 
          fprintf("  Updated word: %s\n", unknownDish);

          % Let user know how many lives they have left 
          if (hearts <= 0)
            fprintf("  You have no more hearts remaining. Thank you for playing!\n");
          else 
              fprintf("  You still have %.0f hearts remaining!\n", hearts); 
          end 

        else
            disp("  You did not enter a valid input, please try again: ")

        end % outside if statement  


    % end while loop 
    end

    % This is meant to check if the word is fully guessed
    % Not containing 
    if(~contains(unknownDish, '*'))
        disp(" _____________________________________________________________________")
        fprintf("  Congratulations! You gain an extra heart!\n  Would you like to continue playing?\n");
        hearts = hearts + 1; 
        fprintf("  If you continue to play you will have %d hearts!\n", hearts); 
        
    end 


     
