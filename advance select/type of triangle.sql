select (case when A=B and B=C and C=A then 'Equilateral' when (A+B)<=C or (B+C)<=A or (C+A)<=B
then 'Not A Triangle' when A=B or B=C or C=A then 'Isosceles' 
when A!=B and B!=C and C!=A then 'Scalene' END) from TRIANGLES;
