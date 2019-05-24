fin = open('book4.txt')
fout1 = open('book4.1.txt', 'w')
fout2 = open('book4.2.txt', 'w')
count = 0
for line in fin:
    count +=1
    if count < 3000:
        fout1.write(line)
    else:
        fout2.write(line)

print(count)