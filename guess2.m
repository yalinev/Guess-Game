

% guess(): This function checks if the char the player enters matches 
% the char in the word. 

% parameter: Food String, Food String as Char, Word
% displayed in '*' 

% return variable: the word(food) displayed in '*' updated if player
% guesses correctly, and the number of lives remaining


% Remaining issues: 
% Game doesn't end properly when out of hearts 
% When choosing to continue playing, program does not loop correctly. It...
% asks the same question again and adds a heart 

% Features left to add:
% Hints and display food image

% function [unknownDish, hearts] = guess(pickedFoodString, pickedFood, unknownDish)
function [unknownDish, hearts] = guess(pickedFood, unknownDish)

% variable
hearts = 10;
correctGuess = 0;  
continuePlay = 1; 

while (continuePlay == 1)

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

        end % outside if statement  

    % end while loop 
    end

      if (~contains(unknownDish, '*'))
        disp(" _____________________________________________________________________")
        fprintf("  Congratulations! You gain an extra heart!\n");
        hearts = hearts + 1; 
        fprintf("  If you continue to play you will have %d hearts!\n", hearts); 
        userPlaying = input("  To continue enter 1 | To quit enter 0: ");
        
        if (userPlaying == 1)
            continuePlay = 1;

        elseif (userPlaying == 0)
            continuePlay = 0;

        else
            fprintf("  That is not a valid input, goodbye!\n");
        end

      end  
end
("  Thank you for playing guess the food!");