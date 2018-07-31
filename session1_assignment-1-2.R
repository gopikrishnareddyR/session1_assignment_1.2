#session1_assignment-1-2

#what should be the output of the following script?

v<-c(2,5.5,6)
t<-c(8,3,4)
print(v%/%t)

[1] 0 1 1

#2. You have 25 excels files with names as XX_1.xlsx, xx_2.xlsx,____xx_n.xlxs in a dir.
# write a program to extract the contents of each sheet and make it one df.
getwd()
path='C:/Users/swapna/Documents/R files test'
setwd("path")
library(readxl)
library(data.table)
file.list=list.files(pattern="*.xlsx")
file.list
df.list<-lapply(file.list,read_excel)
df.list
df<-rbindlist(df.list, .id = "id")
df


#3. if the above 25 files were csv files , what would be your script to read ?

getwd()
path='C:/Users/gopikrishnareddy/Documents' # path to the wd
setwd("path")
files=list.files(pattern=".csv")
for(i in 1:length(files))
{
  filename=files[i]
  data=read.csv(file = filename,header = T)
  assign(x = filename,value = data)
}
