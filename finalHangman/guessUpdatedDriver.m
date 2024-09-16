
% function [hearts] = guess(pickedFood, pickedFoodString, unknownDish, hearts)

hearts = 10; 

guess('Momo',"Momo",'****', 9);

guess('Haggis',"Haggis",'******', 0); 

guess('Peking Duck',"Peking Duck",'****** ****', 3); 

% Works as intended

% When incorrect input is entered, it tells the player and takes away a
% heart

% When the heart = 0 for the 2nd test, there is no output

% When the user runs out of hearts, the program stops and says goodbye to
% the player 