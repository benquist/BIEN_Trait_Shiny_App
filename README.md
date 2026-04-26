<p align="center">
	<img src="www/bien.png" alt="BIEN logo" height="72">
</p>

<h2 align="center">BIEN Traits Shiny App</h2>

<p align="center">
	Query · Map · Cite · Export BIEN trait observations<br><br>
	<a href="https://benquist.shinyapps.io/bien-traits-shinyapp/"><strong>▶ Launch the App</strong></a>
	&nbsp;|&nbsp;
	<a href="#features">Features</a>
	&nbsp;|&nbsp;
	<a href="#run-locally">Run Locally</a>
	&nbsp;|&nbsp;
	<a href="#deploy-to-shinyappsio">Deploy</a>
</p>

---

## About BIEN

The [Botanical Information and Ecology Network](https://biendata.org) (BIEN) integrates plant occurrence and trait data across the Western Hemisphere. This app is a focused interface for retrieving BIEN trait observations and exporting transparent, reproducible outputs.

---

## What Is This?

The **BIEN Traits Shiny App** is an interactive tool for trait lookup and synthesis. It supports:

- Querying one species or many species at once
- Choosing BIEN trait variables and reviewing coverage
- Exploring mapped trait observations when coordinates are available
- Inspecting observation-level provenance and citation fields
- Downloading raw observations, summary tables, citation tables, and reproducible R query code

Primary deployment URL:

> ### [▶ https://benquist.shinyapps.io/bien-traits-shinyapp/](https://benquist.shinyapps.io/bien-traits-shinyapp/)

---

## Features

- Species input by text list, pasted names, or uploaded CSV
- Trait selection and coverage preview before running larger pulls
- Observation table with key metadata fields used for provenance review
- Leaflet-based map of trait points for records with coordinates
- Export bundle for downstream workflows (data tables + query script)
- In-app help content for interpretation and workflow guidance

---

## Run Locally

```r
shiny::runApp(".")
```

Required R packages:

- shiny
- BIEN
- dplyr
- stringr
- leaflet
- DT
- jsonlite

---

## Deploy to shinyapps.io

Use `deploy.R` in this folder after configuring your `rsconnect` account.
