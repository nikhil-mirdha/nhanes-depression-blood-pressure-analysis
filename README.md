# NHANES Depression & Blood Pressure Analysis

## Overview
This repository contains the reproducible code for a secondary data analysis of the National Health and Nutrition Examination Survey (NHANES) 2017-2018 cycle. 

**Research Question:** Is there an association between depressive symptoms (PHQ-9) and systolic blood pressure in US adults?

**Preregistration:** This study was preregistered on the Open Science Framework (OSF).  
🔗 [Link to OSF Preregistration](https://doi.org/10.17605/OSF.IO/ZUXKY)

## Data Source
*   **Dataset:** NHANES 2017-2018 (CDC)
*   **Files Used:** `DEMO_J.xpt`, `DPQ_J.xpt`, `BPX_J.xpt`

## Project Structure
*   `data/`: Raw and cleaned data files.
*   `scripts/`: R or Python scripts for data cleaning and analysis.
*   `output/`: Generated graphs and tables.

## How to Reproduce
1. Download the raw NHANES files from the CDC website.
2. Place them in the `data/raw/` folder.
3. Run the script `01_data_cleaning.R` (or `.py`) to prepare the dataset.
4. Run the script `02_analysis.R` (or `.py`) to generate results and figures.

## License
This project is licensed under the MIT License.

## Preliminary Results
![Boxplot of Systolic Blood Pressure by Depression Status](output/bp_depression_boxplot.png)
