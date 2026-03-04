* ============================================================
* NSDUH 2024 — Unmet Mental Health Treatment Need
* Survey-weighted analysis using SPSS Complex Samples
* ============================================================.

* NOTE:
* 1) Update the PLAN FILE path to your .csaplan file.
* 2) Verify outcome/exposure/covariate variable names match your dataset.
* 3) Verify reference categories align with your reporting plan.

* ----- (A) Weighted descriptive statistics (optional examples) -----
* FREQUENCIES VARIABLES=UNMET_MH INSURED IRSEX CATAG3 NEWRACE2 EDUHIGHCAT.

* ----- (B) Complex Samples Logistic Regression (survey-weighted) -----
CSLOGISTIC UNMET_MH(HIGH) BY INSURED IRSEX CATAG3 NEWRACE2 EDUHIGHCAT
  /PLAN FILE='nsduh_2024_plan.csaplan'
  /MODEL INSURED IRSEX CATAG3 NEWRACE2 EDUHIGHCAT
  /INTERCEPT INCLUDE=YES SHOW=YES
  /STATISTICS PARAMETER EXP CINTERVAL
  /TEST TYPE=F
  /MISSING CLASSMISSING=EXCLUDE
  /CRITERIA MXITER=100 MXSTEP=5 PCONVERGE=[1e-006 RELATIVE] CILEVEL=95
  /PRINT SUMMARY VARIABLEINFO SAMPLEINFO.

* ----- (C) Optional: Export tables -----
* Use SPSS Output Management System (OMS) to export pivot tables to CSV/Excel if desired.
