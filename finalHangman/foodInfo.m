
% This function does not have a return variable, it just outputs the image 

function [] = foodInfo(pickedFoodString)

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
        % Pad Thai
        img = imread('padthai.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 
       
    case 2
        % Poutine
        img = imread('poutine.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 3
        % Haggis 
        img = imread('haggis.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 4
        % Ceviche
        img = imread('ceviche.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 5
        % Biryani
        img = imread('biryani.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 6
        % Paella
        img = imread('paella.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 7
        % Lumpia
        img = imread('lumpia.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 8
        % Nasi Goreng
        img = imread('nasigoreng.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 9
        % Peking Duck
        img = imread('pekingduck.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 10
        % Gyros
        img = imread('gyros.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 11
        % Momo
        img = imread('momo.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 12
        % Hainanese Chicken Rice
        img = imread('hainanesechickenrice.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 13
        % Enchiladas
        img = imread('enchiladas.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 14
        % Bibimbap
        img = imread('bibimbap.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 15
        % Nasi Lemak
        img = imread('nasilemak.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 

    case 16
        % Meat Pie
        img = imread('meatpie.jpg');

        % Display the image
        imshow(img);

        % Pauses for 3 seconds
        pause(3);

        close; 
        
% end of switch case        
end
