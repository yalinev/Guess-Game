
% hint function
% Contains all the hints for the different word cases 
% Parameter: pickedFoodString
% Return: Does not return any varaible, only outputs hint

function [] = hints(pickedFoodString)

foodDishes = ["Pad Thai", "Poutine", "Haggis", "Ceviche"... 
              "Biryani", "Paella","Lumpia", "Nasi Goreng"...
              "Peking Duck", "Gyros", "Momo", "Hainanese Chicken Rice"... 
              "Enchiladas", "Bibimbap", "Nasi Lemak", "Meat Pie"];

% The find function is used to find pickedFoodString's match in the foodDishes... 
% ...vector, and returns the corresponding index
index = find(foodDishes == pickedFoodString);

switch index
    % There are 16 different cases 
    case 1
        fprintf("  Country: Thailand\n  First letter of the word: P\n  Contains rice noodles\n")

    case 2
        fprintf("  Country: Canada\n  First letter of the word: P\n  Contains potatoes\n")

    case 3
        fprintf("  Country: Scotland\n  First letter of the word: H\n  Contains sheep\n")        

    case 4
        fprintf("  Country: Peru\n  First letter of the word: C\n  Contains seafood\n")

    case 5
        fprintf("  Country: India\n  First letter of the word: B\n  Contains rice\n")

    case 6
        fprintf("  Country: Spain\n  First letter of the word: P\n  Contains rice\n")

    case 7
        fprintf("  Country: Philippines\n  First letter of the word: L\n  Contains egg wrappers\n")

    case 8
        fprintf("  Country: Indonesia\n  First letter of the word: N\n  Contains rice\n")

    case 9
        fprintf("  Country: China\n  First letter of the word: P\n  Contains duck\n")

    case 10
        fprintf("  Country: Greece\n  First letter of the word: G\n  Contains pita bread\n")

    case 11
        fprintf("  Country: Nepal\n  First letter of the word: M\n  Contains ground meat\n")

    case 12
        fprintf("  Country: China\n  First letter of the word: H\n  Contains chicken\n")

    case 13
        fprintf("  Country: Mexico\n  First letter of the word: E\n  Contains tortillas\n")

    case 14
        fprintf("  Country: Korea\n  First letter of the word: B\n  Contains seaweed\n")

    case 15
        fprintf("  Country: Malaysia\n  First letter of the word: N\n  Contains coconut milk\n")

    case 16
        fprintf("  Country: Australia\n  First letter of the word: M\n  Contains meat\n")
end







