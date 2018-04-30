setwd("D:/workspace/eclipse/data_incubator/data")
response=read.delim("DLBCL_patient_data_NEW.txt", header = T)
newresponse=response[order(response[,1]),]
par(mfrow=c(1,1))
#plot 1
pairs(~Follow.up..years.+Status.at.follow.up+Subgroup+IPI.Group, data=newresponse, main="Correlation Matrix")
#plot 2
