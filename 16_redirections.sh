USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOG_FOLDER="/var/log/shell_script"
mkdir -p $LOG_FOLDER
SCRIPT_NAME="echo $0 | cut -d "." -f1"
# DATE=$(date +Y%-%m-%d-%H-%M-%s)
# LOG_FILE="$LOG_FLODER/$SCRIPT_NAME-$DATE"

# CHECK_ROOT(){
#     if [ $USERID -ne 0 ]
#     then 
#         echo -e "$Y Run the script with root access $N" >>$LOG_FILE
#         exit 1
#     fi
# }

# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo -e "$2 is $R FAILED $N"
#         exit 1
#     else
#         echo -e "$2 is $G SUCCESS $N"
#     fi
# }
# CHECK_ROOT

# for package in $@
# do
#     dnf list installed $package
#     if [ $? -ne 0 ]
#     then
#         echo "$package is not installed, going to install it.." >>$LOG_FILE
#         dnf install $package -y >>$LOG_FILE
#         VALIDATE $? "Installing $package" >>$LOG_FILE
#     else
#         echo -e "$Y $package is already installed..nothing to do $N"
#     fi
# done