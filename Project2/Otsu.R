otsu=c(13:30)
for (x in c(13:30)) {
  data$weight_group <- cut(data$VehicleAge, 
                           breaks = c(-Inf,5,12,19,Inf), 
                           labels = c("1","2","3","4"), 
                           right = FALSE)
  
  group1<-subset(data$ClaimCost,data$weight_group=='3')
  var1<-(length(group1))*var(group1)/99074
  
  group2<-subset(data$ClaimCost,data$weight_group=='4')
  var2<-(length(group2))*var(group2)/99074
  otsu[x-12]=var1+var2;
}

n=which.min(otsu)+12
