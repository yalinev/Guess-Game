
% First Part of Development
% Checking to see if the unknown word is displayed correctly 
% Intial issue with displaying spaces in the unknown word 
% Solution: using in built function isstrprop to detect spaces 
% The function will return for example 0001000 where 1 represents a space 

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

% Loop through 
for i = (1:strlength(pickedFoodString))

    if (checkSpaces(i) == 1)
        unknownDish = [unknownDish, ' '];

    elseif (checkSpaces(i) == 0)
        unknownDish = [unknownDish, '*'];
    end 

end

% This is to check if the picked food matches the unknown 
disp(pickedFood);
disp(unknownDish);