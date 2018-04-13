#!/bin/bash
user_list=($(awk '$3 > 499' /etc/passwd))
for i in ${user_list[@]}
do
	find /home/$i/.google_authenticator -exec cp {} /destination/data/ \;
done



=====================================================================================\\
try this one

#!/bin/bash
user_list=($(awk -F ":" '$3 > 499' /etc/passwd | cut -d ':' -f6))
for i in ${user_list[@]}
do
	find $i/.google_authenticator -exec cp {} /destination/data/ \;
done
