#Convert .tex file with equations into wikiText with multiple wikiText files for each equation

inFileName=raw_input("Input file name: ")
inFile=open(inFileName,"r")
for line in inFile:
	   if line[0]=="$":
			 #print ("equation found")
			 flag=False
			 string="<math>"
			 for char in line[1:]:
				    if char=="$":
						  flag=True
				    elif flag:
						  pass
				    else:
						  string=string+char
			 string+="<//math>" 
