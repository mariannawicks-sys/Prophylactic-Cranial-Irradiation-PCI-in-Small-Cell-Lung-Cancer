# 🧠 Prophylactic Cranial Irradiation (PCI) in Small Cell Lung Cancer

### A Retrospective Epidemiologic Study Using Simulated Clinical Data

---

## 📌 Overview

This project simulates a **retrospective observational study** evaluating factors associated with receipt of **Prophylactic Cranial Irradiation (PCI)** in patients with Small Cell Lung Cancer (SCLC).

Using a clinically inspired dataset, this analysis explores how patient characteristics and treatment response influence PCI utilization through **logistic regression modeling**.

---

## 🎯 Objectives

* Identify predictors of PCI receipt in SCLC patients
* Estimate associations using **odds ratios (ORs)**
* Demonstrate **confounding and treatment selection bias**
* Build a reproducible **epidemiologic workflow in R**

---

## 📊 Study Design

* **Design:** Retrospective cohort (simulated data)
* **Population:** 300 patients with SCLC
* **Outcome:** PCI receipt (Yes/No)
* **Predictors:**

  * Age
  * Stage (Limited vs Extensive)
  * Response to initial therapy
  * Performance status
  * Comorbidity score

---

## 📁 Project Structure

```
Prophylactic-Cranial-Irradiation-PCI-in-Small-Cell-Lung-Cancer
│
├── data
│   └── sclc_pci_data.csv
│
├── figures
│   └── age_histogram.png
│
├── scripts
│   └── logistic_regression_analysis.R
│
└── README.md
```

---

## 📈 Methods

* Simulated dataset reflecting clinical SCLC characteristics
* Logistic regression model:

```
PCI_received ~ Age + Stage + Response_to_initial_therapy +
               Performance_status + Comorbidity_score
```

* Odds ratios calculated from model coefficients
* Visualization using `ggplot2`

---

## 📊 Results

* Limited-stage disease associated with higher PCI use
* Strong association between treatment response and PCI
* Higher comorbidity and worse performance status reduced PCI likelihood
* Age showed a modest negative association

---

## 📉 Example Visualization

![Age Distribution](figures/age_histogram.png)

---

## ⚠️ Limitations

* Simulated dataset (not real patient data)
* No survival outcomes included
* Simplified clinical assumptions

---

## 🛠️ Tools Used

* R
* ggplot2
* dplyr

---

## 👩‍⚕️ Author

**Marianna Wicks, MPH, ODS, CRC**
Precision Medicine | Oncology Data | Biostatistics

---

## ⭐ Key Skills Demonstrated

* Epidemiologic study design
* Logistic regression modeling
* Clinical data simulation
* Data visualization
* Reproducible research workflow

