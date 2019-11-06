
DATA students;
INPUT admit gre gpa rank;
Datalines;
0 380 3.60 3
1 660 3.67 3
1 830 4 1
1 540 3.19 4
0 760 2.90 4
1 540 3.19 4
0 760 2.90 1
1 540 3 2
1 400 2.90 1
0 540 3.07 2
1 700 3.39 3
0 800 3.92 2
0 440 4 1
0 760 3.07 2
1 700 4 3
0 480 3.44 1
0 800 3.34 1
1 360 4 3
1 520 3.93 1
1 360 2.28 2
1 760 2 1
0 540 3 3
1 200 4 2
0 540 3.63 4
0 360 2.55 4
0 520 3.80 2
;
PROC PRINT DATA=students;
Run;

PROC CONTENTS DATA=STUDENTS;
RUN;

PROC FREQ DATA=STUDENTS;
TABLE admit;
run;

PROC MEANS DATA=STUDENTS;
RUN;

PROC LOGISTIC DATA=STUDENTS DESC;
CLASS rank;
model admit= gre gpa rank;
output out=outdata p=pred_prob lower=low upper=upp;
run;
quit;



