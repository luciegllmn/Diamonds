%let chemin=/home/u50424209/Projet_SAS/;
libname diamonds "&chemin.";

data diamonds;
infile "&chemin./diamonds2.txt" firstobs=2 dlm = '09'x;
input nb $ carat cut $ color $ clarity $ depth table price x y z ;
run;

data diamonds2;
set diamonds;
	drop nb;
run;

proc print data = diamonds (obs = 10);
run;

proc corr data=diamonds;
run;


/*Je n'arrive pas a afficher le plot voir pourquoi */
proc reg data = diamonds;
	model price = carat depth table x y z / method=stepwise;
run; quit;


/*peut être à faire pour les variables quantitatives  */
proc univariate data=diamonds;
  var price;
  histogram price;
  axis1 label=("prix");
  axis2 label=("Pourcentage");
  title "Distribution du prix";
run;

proc gplot data=diamonds;
	axis1 label=("prix");
 	axis2 label=("Pourcentage");
	plot price*carat;
run;
quit;



proc freq data=diamonds ;
	table cut ;
run ;

proc freq data=diamonds ;
	table price ;
run ;



ods graphics / reset width=6in height=4in imagemap;

proc sgplot data=diamonds2;
	title height=14pt "Distribution du prix";
	histogram price / scale=count fillattrs=(color=CXfa3939);
	xaxis label="Prix";
	yaxis grid;
run;

ods graphics / reset;
title;






























