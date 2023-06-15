# Postmortem #

## Issue Summary: ##
Join us in this thrilling adventure as we uncover the root cause of our recent outage in the online sales website called Kimby.com 

Between 7:00 PM to 9:00 PM EAT on May 13th, 2023, the authorization service of our website was down affecting around 65% of new customers and users. When the users keyed in their credentials in the website an error appeared stating that authentication failed therefore the purchases halted.

The issue was eventually resolved by restarting the database system and updating files on the admin side. We’re taking a sequence of actions by using preventive measures through continuous monitoring and database administration

## Timeline: ##

7:00 PM EAT: The problem was detected as there were reports by users while trying to access the service and the errors escalated.
7:05 PM EAT: The engineering team and the database administrators were alerted of the situation and began taking a look at it.
7:30 PM EAT: The team discovered that no authentication was going through even for authorized users. They began by checking the database system.
7:45 PM EAT: The engineering team discovered that the database wasn’t communicating with the website, there started troubleshooting since the CPU usage was high.
8:20 PM EAT: The team discovered the database server was experiencing high CPU usage but didn’t encounter any significant improvements.
8:30 PM EAT: The issue escalated and the problem was transferred to the senior engineering team.
8:35 PM EAT: The database administrators discovered that a recent configuration change had caused a deadlock in the database preventing user authentication 
8:45 PM EAT: The configuration change was rolled back and the database was restarted
8:50 PM EAT: The authentication was restored and customers were able to continue with their purchases
9:00 PM EAT: The issue was declared solved.
 
## Root cause and resolution: ##
The root cause of the problem was the configuration change that caused a deadlock in the database system preventing the authentication of users to access their profiles.The deadlock was caused by queries getting blocked therefore there is no seamless interaction between the database and the website.

## Corrective and Preventive Measures: ##

The following measures will be adhered to to prevent similar issues from occurring;
Continuous monitoring of the database
Reviewing and testing configuration changes 
Review database schema and queries

In conclusion, the problem was caused by configuration files that caused deadlock, and the issue was resolved by rolling back the configuration change of the DB. We will be taking preventive precautions by continuously monitoring

