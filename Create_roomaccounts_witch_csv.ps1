#Script creates roombailboxes from csv with location and capacity
#StefanH
###################################################################################################
Import-csv .\rooms.csv | 
foreach{ New-Mailbox -Name $_.roomname -Room -PrimarySmtpAddress $_.emailaddress -Office $_.Location -ResourceCapacity $_.Capacity }