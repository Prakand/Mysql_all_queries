# DQL Commands (Data Query Language)

# Select command comes under DQL
# It is used read data from your tables

# Select
# from
# where
# Group by
# Having
# Order by
# Limit

# * - All columns
# ctrl enter - Runs the query under the keyboard cursor
# ctrl shift enter - Runs all queries or the selected query

Select *
from movies.film ;

Select
Title,ReleaseDate,BoxOfficeDollars,OscarWins
from movies.film ;

# Where clause is used to filter the data in SQL

# >,<,>=,<=,!=,<>,or,and,between,in,not in,like,not like,regexp,not regexp,is null,is not null
# exists,not exists

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where BoxOfficeDollars > 1e9;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where OscarWins >=5;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where BoxOfficeDollars >1e9 and OscarWins >0 and CertificateID = 1;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
where CertificateID = 1 or CertificateId = 2;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where BoxOfficeDollars >1e9 and OscarWins >0 and CertificateID in (1,2);

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where BoxOfficeDollars >1e9 and OscarWins >0 and (CertificateID = 1 or CertificateId = 2);

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where CertificateId in (1,2) ;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
where CertificateID != 1 ;

Select 
Title
,BoxOfficeDollars
,OscarWins
,CertificateiD
from movies.film 
Where CertificateId not in (1,2) ;

Select
Title
,OscarWins
from movies.film
where OscarWins >=5 and OscarWins <=10 ;

Select
Title
,OscarWins
from movies.film
where OscarWins between 5 and 10 ;

Select
Title
,ReleaseDate
from movies.film
Where ReleaseDate >= '2000-1-1' and ReleaseDate <= '2000-12-31' ;

Select
Title
,ReleaseDate
from movies.film
Where ReleaseDate between '2000-1-1' and '2000-12-31' ;

Select
Title
,ReleaseDate
from movies.film
where Title = 'King Kong' ;

Select *
from employees.employees ;

# 1. Display all full time employees and only those contract employees with salary >80000

Select
First,Last,Status,Salary
from employees.employees
Where Status = 'Full Time' or (Status = 'Contract' and Salary >80000);

# 2. Display list of Hit films which won Oscars
# 3. Display list of full time employees hired in 2000 year with jobrating 1
# 4. Display both full time and contract employees with salary >80000



