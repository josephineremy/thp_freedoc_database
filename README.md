## Présentation
Entrainement sur les BDD avec un exercice Doctor/Patient.<br/>
<br/>
Table à afficher avec table_print dans la console Rails:<br/>
* Doctor
* Patient
* City
* Appointment
<br/>
<br/>
## Instructions
$ bundle install <br/>
$ rails db:migrate <br/>
$ rails db:seed <br/>
$ rails c <br/>
<br/>
Pour voir toutes les tables de la BDD dans la console: <br/>
2.7.1 :001 > tp City.all <br/>
2.7.1 :002 > tp Doctor.all <br/>
2.7.1 :003 > tp Patient.all <br/>
2.7.1 :004 > tp Appointment.all <br/>
<br/>
<br/>
## Améliorations
Rajouter une table N-N entre les spécialités et les docteurs
