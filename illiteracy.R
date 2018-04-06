mydata<-read.csv(file="c:/Users/Sreyash krishna/Desktop/Book1.csv",header=TRUE,sep=",")
l=0
l1=0
v1<-list()
v2<-list()
v3<-list()
v4<-list()
v5<-list()
v6<-list()
for (i in 1:5346)
{
	if(mydata$education[i]=="Below Class X")
	{
		v1[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l=l+v1[[i]]
		v2[[i]]=as.character(mydata$state_name[i])
		v3[[i]]=mydata$year[i]
	}  
	if(mydata$education[i]=="Illiterate")
	{
		v1[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l=l+v1[[i]]
		v2[[i]]=as.character(mydata$state_name[i])
		v3[[i]]=mydata$year[i]

	}
	if(mydata$education[i]=="Class X and above but below graduate")
	{
		v4[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l1=l1+v4[[i]]	
		v5[[i]]=as.character(mydata$state_name[i])
		v6[[i]]=mydata$year[i]
	}
	if(mydata$education[i]=="Holding technical degree/diploma etc")
	{
		v4[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l1=l1+v4[[i]]
		v5[[i]]=as.character(mydata$state_name[i])
		v6[[i]]=mydata$year[i]

	}	
	if(mydata$education[i]=="Post-Graduate")
	{
		v4[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l1=l1+v4[[i]]
		v5[[i]]=as.character(mydata$state_name[i])
		v6[[i]]=mydata$year[i]

	}
	if(mydata$education[i]=="Graduate")
	{
		v4[[i]]=mydata$convicts[i]+mydata$under_trial[i]+mydata$detenues[i]+mydata$others[i]
		l1=l1+v4[[i]]
		v5[[i]]=as.character(mydata$state_name[i])
		v6[[i]]=mydata$year[i]

	}
}
print("The number of Convicts who have below class X education:")
print(l)
print("The number of Convicts who have above class X education:")
print(l1)
v7=unique(v2)
v8=unique(v5)
v7=v7[-2]
v8=v8[-1]
print(v7)
v9<-integer(36)
k=0
p=0
for( j in v2)#for each element in v2 check:
{	p=p+1
	index=0
	for(i in v7)
	{
		index=index+1
		if(length(setdiff(i,j))==0)#A match in state
		{
			v9[index]=v9[index]+v1[[p]]#now add the number of convicts
			
		}
	}
}
for ( i in 1:length(v9))
{
print(v9[i])
}
write.table(v7,"test2.csv",sep=",",append=TRUE,row.names=FALSE,col.names=FALSE)
write.table(v9,"test2.csv",sep=",",append=TRUE,row.names=FALSE,col.names=FALSE)

