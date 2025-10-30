#+-------------------------------------------------------------  
#| Purpose: Test secure channel to DCs
#| Author:  Jeremy Rousseau
#| Date: 07-19-2022
#| Version: 1.0
#+-------------------------------------------------------------

#+-------------------------------------------------------------  
#| Change Log:												   
#| Version 1.0 - Initial build                                 
#+------------------------------------------------------------- 

### DO 	NOT EDIT BELOW THIS LINE ###

#Test secure channel to DC
echo "Testing secure channel to DCs"
$Servers = Get-ADDomainController -filter * | Select-Object name | Sort-Object -Property Name
foreach ($Server in $Servers)
{ echo $Server; Test-ComputerSecureChannel}
