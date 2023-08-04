# Monitoring v1.0

Linux basic bash scripting and system research.

## 1. First effort

Write a bash script with one text parameter. The script outputs the value of the parameter.  
If the parameter is a number, the script must output an invalid input message.

## 2. System research

Write a bash script which should output the following information:

`network name` \
`time zone`\
`current user`\
`type and version of OS`\
`current time`\
`system uptime`  \
`uptime in seconds` \
`ip address`\
`network mask`\
`default gateway ip`\
`main memory size in GB`\
`used memory size in GB`\
`free memory size in GB`\
`root partition size in MB`\
`size of used space of the root partition in MB`\
`size of free space of the root partition in MB`

## 3. Visual output design

Write a bash script. Use the script from system-research and remove the part where the data is saved to a file.  The script is run with 4 parameters from 1 to 6, for example: `script03.sh 1 3 4 5`. Colour designations: (1 - white, 2 - red, 3 - green, 4 - blue, 5 - purple, 6 - black)

**1** -  background of the value names (before the '=' sign)  
**2** -  font colour of the value names (before the '=' sign)  
**3** -  background of the values (after the '=' sign)  
**4** -  font colour of the values (after the '=' sign)

## 4. Configuring visual output design 

Write a bash script. Use the script from visual-output-design. The script runs without parameters and  set in the configuration file before the script is running.

## 5. File system research

Write a bash script which run with a single parameter - is an absolute or relative path to a directory. The parameter must end with '/', for example:  
`script05.sh /var/log/`

The script must output the following information about the directory specified in the parameter.

