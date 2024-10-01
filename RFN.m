clc
clear all

disp('For Project 1 define specified values:');


[EUAB1,EUAC1,NPW1,P0c1,NAUA1]=PW('1');

disp(' ')
disp('For Project 2 define specified values:');

[EUAB2,EUAC2,NPW2,P0c2,NAUA2]=PW('2');


M=(EUAB1-EUAB2)/(EUAC1-EUAC2);


disp(' ') 
disp('Based on NPW approach:');

if NPW2<NPW1
    disp('                          The Project ((1)) is economocal');
else
    disp('                          The Project ((2)) is economocal');
   
end

disp('Based on NAUA approach:');
if NAUA1>NAUA2
     disp('                        The Project ((1)) is economocal');
     else
    disp('                         The Project ((2)) is economocal');
end

disp('Based on B/C approach:');
if M>=1
    if P0c1>P0c2
         disp('                            The Project ((1)) is economocal');
          else
    disp('                               The Project ((2)) is economocal');
    end
else 
    if P0c1<P0c2
        disp('                           The Project ((1)) is economocal');
    else
         disp('                           The Project ((2)) is economocal');
    end
end
    