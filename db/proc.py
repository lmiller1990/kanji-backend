dic = []
with open('edict2.js', 'a') as k:
    with open("edict.js") as f:
        content = f.readlines()
        print len(content)
        for idx, line in enumerate(content):
            if idx <= len(content)-2:
                if line.split(":")[0] != content[idx+1].split(":")[0]:
                    dic.append(line)
        for l in dic:
            k.write(l)
