Prode Mundial 2014
=============

This is an application for creating a "Prode" of the FIFA World Cup 2014 (Brasil).

This application use OAuth for loggin with Google. Because of this, an implementation of "bad code" to check an specific domain was done.

This Application use:
- Spring
- Spring Security
- Spring Data (JPA)
- Spring MVC
- OAuth Library (Already download)
- Hibernate
- PostgreSQL

<h3>Eclipse Configuration</h3>
- Project Facets - Dynamic Web - 2.4
- Java - Version 1.7

<h3>Configuration File</h3>
You need to configure the configuration.properties for the configuration of the application. This file is on the Resource folder

## Instructions

### Registration

Once the registation period is done you need to disable the configuration (on the DB):

```
allow_registration=false
```

### Round of 16, Quarters, Semi and Final

* Once the groups phase end, you need to add the teams to the groups

````
INSERT INTO groups_teams VALUES (35, 10, 2);
INSERT INTO groups_teams VALUES (36, 10, 3);
INSERT INTO groups_teams VALUES (37, 10, 4);
INSERT INTO groups_teams VALUES (38, 10, 5);
````

* Then, you need to add the matches to the group

````
INSERT INTO matches VALUES (54, '2018-06-30 17:00:00-03', 6, 10, 2, 3);
INSERT INTO matches VALUES (55, '2018-06-31 17:00:00-03', 6, 10, 4, 5);
````

* Finally, you need to change the register value of the person = false, so he can put the result of the outcome

````
update users set register = false;
````

* If you block the registration period, you need to allowed again:

```
allow_registration=false
```

* Then, when the period of putting the results end, change the register to false of all registered users:

````
update users set register = true;
````

The matches shown on the register are going to be show based on the date of the server
