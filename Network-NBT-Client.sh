#!/bin/sh
#!/bin/bash
## GIT - AUTO PUSH/RESIVER //MHOSSEIN.COM
#wiTH Easy mark..
# commit user info
USER_NAME=mhosseinweb
USER_EMAIL=https://github.com/mhosseinweb/Network-NBT.git
COMPANY_ClIENT_NUM=NOBAKHT_IT_core
# target dir or file path
# ('0	== all files ')
TARGETS=.


# message
#MESSAGE="User Mhossein.com"

#cd_link_cloneFile
LINK=/c/xampp/htdocs/Network-NBT/
LINKBK=/c/xampp/htdocs/Network-NBT/Network-NBT
LINKIN=/c/xampp/htdocs/Network-NBT/Network-NBT/Network-NBT
# remote path 
RMP=git@github.com:mhosseinweb/Network-NBT.git
#date
date_var="$(date '+%Y-%m-%d-T%H:%M:%S')"

#Log Creator 
log_file="log/$date_var-$USER_NAME.log"
logit() {
    echo "[${USER_NAME}][`date`][${COMPANY_ClIENT_NUM}]  " >> "${log_file}"
}
mkdir -p "log" && touch ${log_file}

#======================================================================
#===========================================================
# repository root path
cd ${LINK}
# Add remote server
git remote add origin git@github.com:mhosseinweb/Network-NBT.git
# Then github remote check
git remote -v
#Remove Clone File
	#RCF	()	{
		#rm -rf ${LINKBK}
	#}
	
# ACTION MAKER Stage #0
	ACTION() {
	git add ${TARGETS}
	git commit -m "${COMPANY_ClIENT_NUM} ${date_var}"	
	git push origin master	
	
}
#	clone & backup stage #1
	#CLONE	()	{
	#git clone ${RMP}
	#}
#	Clean Inside Clone stage #2
	#CIC	()	{
		#rm -rf	${LINKIN}
	#}
# TIMER0[sec]
TIMER0=1
TIMER1=2
# ACTION RUNNER 
while true;
do
	logit
		sleep ${TIMER1}
	#RCF
	    #sleep ${TIMER1}
    ACTION
		sleep ${TIMER0}
	#CLONE
		#sleep ${TIMER1}
    #CIC
		#sleep ${TIMER0}
	exit
done
