import os

os.system("awk -F',' '{print $1 $2 $3}' ~/passwords.csv | sed 's/\"/ /g' |  sed 's/  / /g' | sed 's/ //' | sed 's/http.*:\/\///' > passwords_clean")

passwords_clean = ""

with open("passwords_clean", "r") as f:
    passwords_clean = f.readlines()

print(passwords_clean)

for line in passwords_clean:
    l = line.split()
    if len(l) == 2:
        print(l, len(l))
        os.system(f' echo "{l[1]}" | pass insert -e firefox/{l[0]} ')
    if len(l) == 3:
        
        print(l, len(l))

        cmd = f' echo "{l[2]}" | pass insert -e firefox/{l[0]}-{l[1]} '
        print(cmd)

        os.system(cmd)
