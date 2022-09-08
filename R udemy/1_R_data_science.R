myfirstobject=5:10
myfirstobject

plot(myfirstobject)

?plot
plot(sin, -pi, 2*pi)


## concatenation with c
a = 5:8
b=c(5:8)
?plot.ts # ts means time series plot
plot.ts(c(5,3,7,8,3)) # correct form, 1st argument is provided
plot.ts(5,3,7,8,3) # incorrect, 5 arguments are provided


### the apply family of functions

# an element way to do loops


# apply (arrays- matrices)

#tapply (vectors can be split in different subsets)
#lapply( the whole subfamily is for vectors or trees)
#sapply( user friendly versions of lapply)
# vapply ( similar to sapply , modified return value)
#replicate (random nr generation)

# rapply( similar to lapply)
#eapply(environment , generates a list)
#mapply( multivariate , similar to sapply)
# by (data frames, similar to tapply , factors needed , splits the df and does calculus on subsets)


