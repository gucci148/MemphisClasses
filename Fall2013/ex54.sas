
ods html close; /* close previous */
ods html; /* open new */
	
*Treatment 1=6-MP,Treatment 2=Placebo*;

data exercise4;
   
   input time  Status Treatment;

   datalines;                      	
6 1 1
6  1 1
7 1 1
10 1 1
13 1 1 
16 1 1
22 1 1
23 1 1
6 0 1
9 0 1
10 0 1
11 0 1
17 0 1
19 0 1
20 0 1
25 0 1
32 0 1
32 0 1
34 0 1
34 0 1
35 0 1
1 1 2
1 1 2
2 1 2
2 1 2
3 1 2
4 1 2
4 1 2
5 1 2
5 1 2
8 1 2
8 1 2
8 1 2
8 1 2
11 1 2
11 1 2
12 1 2
12 1 2
15 1 2
17 1 2
22 1 2
23 1 2
;

proc print data=exercise4;
run;

PROC LIFETEST DATA=exercise4;
TIME time*Status(0);
strata Treatment/TEST=(LOGRANK WILCOXON PETO);
run;
