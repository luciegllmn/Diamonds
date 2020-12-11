/*
 *
 * Code de la tâche généré par SAS Studio 3.8 
 *
 * Généré le '11/12/2020 21:10' 
 * Généré par 'u50424209' 
 * Généré sur le serveur 'ODAWS01-EUW1.ODA.SAS.COM' 
 * Généré sur la plate-forme SAS 'Linux LIN X64 3.10.0-1062.9.1.el7.x86_64' 
 * Généré sur la version de SAS '9.04.01M6P11072018' 
 * Généré sur le navigateur 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36' 
 * Généré sur le client web 'https://odamid-euw1.oda.sas.com/SASStudio/main?locale=fr_FR&zone=GMT%252B01%253A00&https%3A%2F%2Fodamid-euw1.oda.sas.com%2FSASStudio%2Findex=' 
 *
 */

ods graphics / reset width=6in height=4in imagemap;

proc sgplot data=WORK.DIAMONDS2;
	title height=14pt "Distribution du prix";
	histogram price / scale=count fillattrs=(color=CXfa3939);
	xaxis label="Prix";
	yaxis grid;
run;

ods graphics / reset;
title;