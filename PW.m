function [EUAB,EUAC,NPW,P0c,NAUA]=PW(X)

disp(['*************************Project' X '*******************************']);

disp('#Benefit:');
disp('enter benefits:');
Ab=input('Enter Ab=');
Fb=input('Enter Fb=');
nFb=input('Enter number of years for Fb:');
SV=input('Enter SV=');

disp(' ');
disp('#costs:');
disp('enter costs:');
Ac=input('Enter Ac=');
Fc=input('Enter Fc=');
nFc=input('Enter number of years for Fc:');
P0c=input('Enter P0c=');

n=input('Enter number of yeras for project:');
i=input('Enter interest rate:');


    PAb=Ab*(((1+i)^n-1)/i*(1+i)^n);
    
    PFb=Fb*(1/(1+i)^nFb);
    
    PSV=SV*(1/(1+i)^n);

PWb=PAb+PFb+PSV;

PAc=Ac*(((1+i)^n-1)/i*(1+i)^n);
PFc=Fc*(1/(1+i)^nFc);

PWc=PAc+PFc+P0c;
NPW=PWb-PWc;

disp(['>>>For Project ' X ' net present worth=' num2str(NPW)]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AFb=Fb*(1/((1+i)^n-1));
ASV=SV*(1/((1+i)^n-1));
EUAB=Ab+AFb+ASV;


AFc=Fc*(1/((1+i)^n-1));
AP0c=P0c*((i*(1+i)^n)/((i+1)^n-1));
EUAC=Ac+AFc+AP0c;



NAUA=EUAB-EUAC;

disp(['>>>For Project ' X ' NAUA= ' num2str(NAUA)]);




end





