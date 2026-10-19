echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Islam"
echo "Surname: Safarov"
echo "Group: IT2-2303"
echo "Student ID: 38061"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo "=============================="

if [ -f "safarov_islam_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
