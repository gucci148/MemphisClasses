###############################################

########computing second order correlation rho2
rho2=function(lambda1,lambda2){
rho=(1/(lambda1-lambda1^2))*(lambda2-lambda1^2)

return(rho)

}

x=c(.579,.5,.591,.875) #CEF treated group
y=c(.477,.444,.455,.750) #CEF treated group
 rho2(x,y)

x1=c(.486,.2,.611,.857)  #AMO treated group
y1=c(.419,.133,.556,.857)  #AMO treated group
rho2(x1,y1)


##############################################

#computing lambdas for the CEF group


# All ages,m=44
A4=c(14,9,21)

la=function(m,A4){


{la1=(1/(2*m))*(2*A4[3]+A4[2]);
la2=(1/m)*A4[3]}
return(list("lambda1"=la1,"lambda2"=la2))
}
la(44,A4)

###################<2,m=18#################

A=c(8,2,8)
la(18,A)

####################2-5,m=22########################
A=c(6,6,10)
m=22
la(m,A)

###################>=6,m=4##############
A-c(0,1,3)
m=4
la(4,c(0,1,3))


##############################################

#computing lambdas for the AM0 group


# All ages,m=31


la=function(m,A4){


{la1=(1/(2*m))*(2*A4[3]+A4[2]);
la2=(1/m)*A4[3]}
return(list("lambda1"=la1,"lambda2"=la2))
}


A=c(15,3,13)
la(31,A)

###################<2,m=15#################
A=c(11,2,2)
m=15
la(m,A)

####################2-5,m=9########################
A=c(3,1,5)
m=9
la(m,A)

###################>=6,m=7##############
A=c(1,0,6)
m=7
la(7,A)




##############standard error###########


STE=function(m,A){
v1=(1/m)
d1=A[2]/(4*m)+A[3]/m

d2=((A[2]/(2*m))+(A[3]/m))^2
d3=sqrt(v1*(d1-d2))
v2=(1/m)*((A[3]/m)-(A[3]/m)^2)
s2=sqrt(v2)

la2=(1/m)*A[3]
return(list("SElambda1"=d3,"SElambda2"=s2))
}



###############CEF Group###################


################# m=44,All##################
A=c(14,9,21)
STE(44,A)


################# m=18,< 2##################
A=c(8,2,8)
STE(18,A)

################# m=22, 2-5 ##################
A=c(6,6,10)
STE(22,A)

################# m=4, > 6 ##################
A=c(0,1,3)
STE(4,A)



###############AMO Group###################


################# m=31,All##################
A=c(15,3,13)
STE(31,A)


################# m=15,< 2##################
A=c(11,2,2)
STE(15,A)

################# m=9, 2-5 ##################
A=c(3,1,5)
STE(9,A)

################# m=7, > 6 ##################
A=c(1,0,6)
STE(7,A)


