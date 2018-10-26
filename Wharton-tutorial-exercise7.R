#set the working directory after downloading the documents from github
setwd("C:/Users/elkid/Desktop/Biocomputing/Biocomp-Fall2018-181012-Exercise7")
#read the csv document (iris)
iris<-read.csv("iris.csv")

summary(iris)

#1
#Use the square brackets to index the rows
#Use the seq function to create a sequence which goes from the 1st row to the number of rows in iris
#This sequence has its elements separated by 2, starting from 1; the sequence is stored in iris_odd
#used head function to open the first few rows
iris_odd <- iris[seq(1,nrow(iris), 2),]
head(iris_odd)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
7           4.6         3.4          1.4         0.3  setosa
9           4.4         2.9          1.4         0.2  setosa
11          5.4         3.7          1.5         0.2  setosa

#2
#use the summary function to open the Species category inside iris_odd
summary(iris_odd$Species)
setosa versicolor  virginica 
25         25         25 

#3
#Used the square brackets to choose the rows that have a Sepal width of higher than 3.9
#used the head function to see the first rows in big
big<-iris_odd[iris_odd$Sepal.Width>2.9,]
head(big)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
7           4.6         3.4          1.4         0.3  setosa
11          5.4         3.7          1.5         0.2  setosa
13          4.8         3.0          1.4         0.1  setosa

#4
#Used the "grep" command to look for "virginica" character pattern in the "Species" column of "iris_odd"
#This information was containted in the "virginica" variable
#"virginica" variable was then written into a csv file using the "write.csv" command
virginica<-iris_odd[grep("virginica",iris_odd$Species),]
write.csv(virginica,'virginica.csv')
"","Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species"
"101",6.3,3.3,6,2.5,"virginica"
"103",7.1,3,5.9,2.1,"virginica"
"105",6.5,3,5.8,2.2,"virginica"
"107",4.9,2.5,4.5,1.7,"virginica"
"109",6.7,2.5,5.8,1.8,"virginica"
"111",6.5,3.2,5.1,2,"virginica"
"113",6.8,3,5.5,2.1,"virginica"

