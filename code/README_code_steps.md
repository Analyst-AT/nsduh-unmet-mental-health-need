# How to Run the Analysis (SPSS)

## What you need
- NSDUH 2024 public-use dataset
- SPSS (with Complex Samples)
- A Complex Samples Plan file (.csaplan)

## Steps
1. Open the NSDUH dataset in SPSS.
2. Confirm variable coding and reference categories (see `/appendix/variable_dictionary.md`).
3. Create a Complex Samples Plan:
   - Identify NSDUH weight, strata, and PSU/cluster variables from the NSDUH documentation.
   - In SPSS: **Analyze → Complex Samples → Prepare for Analysis** (or CSPLAN syntax).
4. Run `/code/spss_syntax.sps`.
5. Export tables to `/outputs/` and figures to `/docs/Figures/`.

> Tip: Keep file paths in the syntax relative to your project folder so your workflow is portable.
