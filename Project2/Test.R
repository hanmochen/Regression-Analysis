
data$weight_group <- cut(data$Weight, 
                         breaks = c(-Inf,x,Inf), 
                         labels = c("1", "2", "3", "4", "5"), 
                         right = FALSE)

group1<-subset(data$ClaimCost,data$weight_group=='1')
var1<-(length(group1)-1)*var(group1)

group2<-subset(data$ClaimCost,data$weight_group=='2')
var2<-(length(group2)-1)*var(group2)

group3<-subset(data$ClaimCost,data$weight_group=='3')
var3<-(length(group3)-1)*var(group3)

group4<-subset(data$ClaimCost,data$weight_group=='4')
var4<-(length(group4)-1)*var(group4)

group5<-subset(data$ClaimCost,data$weight_group=='5')
var5<-(length(group5)-1)*var(group5)
i=0
while (i<100) {
  i=i+1
  if (var1<var2) {x[1]=x[1]+1}
  if (var1>var2) {x[1]=x[1]-1}
  if (var2<var3) {x[2]=x[2]+1}
  if (var2>var3) {x[2]=x[2]-1}
  if (var3<var4) {x[3]=x[3]+1}
  if (var3>var4) {x[3]=x[3]-1}
  if (var5<var4) {x[4]=x[4]-1}
  if (var5>var4) {x[4]=x[4]+1}
  
  data$weight_group <- cut(data$Weight, 
                           breaks = c(-Inf,x,Inf), 
                           labels = c("1", "2", "3", "4", "5"), 
                           right = FALSE)
  
  group1<-subset(data$ClaimCost,data$weight_group=='1')
  var1<-(length(group1)-1)*var(group1)
  
  group2<-subset(data$ClaimCost,data$weight_group=='2')
  var2<-(length(group2)-1)*var(group2)
  
  group3<-subset(data$ClaimCost,data$weight_group=='3')
  var3<-(length(group3)-1)*var(group3)
  
  group4<-subset(data$ClaimCost,data$weight_group=='4')
  var4<-(length(group4)-1)*var(group4)
  
  group5<-subset(data$ClaimCost,data$weight_group=='5')
  var5<-(length(group5)-1)*var(group5)
}