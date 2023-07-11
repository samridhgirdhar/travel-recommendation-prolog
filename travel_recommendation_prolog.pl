places(Choice, Budget, Continent, Places):- Choice==1, (Budget<5000 ; Budget<5000), Continent==1, Places='Bhutan, Nepal, India, China, Kazakhstan, Mongolia, Tibet'.
places(Choice, Budget, Continent, Places):- Choice==1, Budget<5000, Continent==4, Places='Russia, Azerbaijan, Georgia, Bosnia, Norway, Sweden, Bulgaria, Serbia'.
places(Choice, Budget, Continent, Places):- Choice==1, Budget>5000, Continent==4, Places='Italy, Spain, France, Switzerland, Italy, Austria, Germany, Slovenia, Russia, Azerbaijan, Georgia, Bosnia, Norway, Sweden, Bulgaria, Serbia'.
places(Choice, Budget, Continent, Places):- Choice==1, Budget>5000, Continent==2, Places='Alaska, California,Yukon, Mexico, Puebla, Morelos, Veracruz, Colorado, Jalisko, Utah, Washington, Guatemala'.
places(Choice, Budget, Continent, Places):- Choice==1, Budget>5000, Continent==3, Places='Australia, Austria, Indonasia, New Zealand, Bismarck, Papua New Guinea'.

places(Choice, Budget, Continent, Places):- Choice==2, (Budget<5000; Budget>5000), Continent==1, Places='Thailand, Bali, Japan, Philippines, Malaysia, Vietnam, India'.
places(Choice, Budget, Continent, Places):- Choice==2, (Budget<5000; Budget>5000), Continent==4, Places='Spain, France, Portugal, Greece, Poland'.
places(Choice, Budget, Continent, Places):- Choice==2, Budget>5000, Continent==3, Places='Western Australia, Cocos, Tasmania, Lizard island'.
places(Choice, Budget, Continent, Places):- Choice==2, Budget>5000, Continent==2, Places='Bahamas, Brazil, Argentina, Colombia, Venezuela'.

places(Choice, Budget, Continent, Places):- Choice==3, (Budget<5000 ; Budget>5000), Continent==1, Places='India, China, Japan, Thailand'.
places(Choice, Budget, Continent, Places):- Choice==3 ,Budget>5000, Continent==4, Places='Russia, Bulgaria, Slovenia'.

places(Choice, Budget, Continent, Places):- Choice==4 ,Budget<5000, Continent==1, Places='India, China, Thailand, Bhutan, Nepal, Tibet'.
places(Choice, Budget, Continent, Places):- Choice==4 ,Budget>5000, Continent==3, Places='Australia, Fiji, New Zealand, Samoa, Tonga'.
places(Choice, Budget, Continent, Places):- Choice==4 ,Budget>5000, Continent==2, Places='Canada, USA, Greendland, Mexico, Anguilla'.
places(Choice, Budget, Continent, Places):- Choice==4 ,Budget>5000, Continent==4, Places='UK, Romania, Belgium, Hungary, Finland, Croatia, Macedonia Czech Republic'.


start:-
    write('Welcome to IIITD tour and travels!'),nl,nl,
    write('What kind of place would you like to visit? (enter number adjacent to it.)'),nl,
    write('1. Mountains'),nl,
    write('2. Beaches'),nl,
    write('3. historical/monumental'),nl,
    write('4. A place with a bit of all of the above'),nl,nl,

    read(Choice),

    write('Enter budget in dollars : '),nl,
    read(Budget),


    write('Select continent :'),nl,
    (
        Budget<5000 -> 
        (
            Choice==1 -> 
            write('1. Asia'),nl, 
            write('4. Europe'),nl   
                ; 
                Choice==2 ->
                write('1. Asia'),nl, 
                write('4. Europe'),nl   
                    ;
                    write('1. Asia'),nl   
                    )
                        ; 
                        write('1. Asia'),nl,
                        write('2. America'),nl,
                        write('3. Australia'),nl,
                        write('4. Europe'),nl  
                    ),
    
    write('Enter Choice : '),nl,
    read(Continent),
    places(Choice, Budget, Continent, Places),
    write('Here are some of the countries you can visit in your budget and genre : '),nl,
    write(Places).


    

