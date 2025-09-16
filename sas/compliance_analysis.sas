/* SAS code for attrition & applicant flow analysis */

* Example: Calculate turnover rate;
proc means data=turnover noprint;
   var turnover_rate;
   output out=turnover_summary mean=avg_turnover;
run;

* Example: Applicant flow analysis;
proc freq data=applicants;
   tables gender*race / chisq;
run;
