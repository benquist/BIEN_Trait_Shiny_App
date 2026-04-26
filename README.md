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

The [Botanical Information and Ecology Network](https://biendata.org) (BIEN) is a large, collaborative biodiversity data infrastructure that integrates plant observations, taxonomy, geography, and traits across the Western Hemisphere. BIEN links information from herbaria, plots, experiments, checklists, and trait sources into a queryable system designed for ecological, biogeographic, and conservation research.

The BIEN Traits Shiny App provides an interface focused on **trait observations** and **reproducible extraction**. Instead of requiring users to write R code first, the app supports a practical workflow where users can find records, evaluate data coverage, inspect provenance, and export analysis-ready tables.

Trait data matters because plant function is often inferred from measurable attributes such as height, wood density, SLA, seed mass, or leaf chemistry. These data support:

- Comparative ecology across taxa and regions
- Macroecological and biogeographic modeling
- Community assembly and functional diversity analyses
- Trait-environment and trait-climate workflows
- Transparent evidence trails for synthesis and publication

The app is designed to keep those workflows transparent by exposing record-level metadata, source fields, and citation outputs alongside the trait values.

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

## Practical Use Cases

The app is intended for multiple user types and real workflows:

- Ecologists building species-level trait matrices for community analyses
- Macroecology researchers screening trait coverage before larger data pulls
- Conservation practitioners reviewing trait information for focal taxa
- Instructors and students using reproducible examples in classroom settings
- Data curators validating provenance and citation traceability for downstream repositories

Common workflow patterns include:

- Rapid exploratory pull: query a small species list, inspect fields, export CSV
- Coverage-first planning: test target clades and trait variables before committing to model runs
- Provenance-first review: filter candidate records using source and citation metadata
- Reporting pipeline support: export tables plus query script for reproducible appendices

---

## Search Patterns And Examples

The app supports taxonomic input and trait-oriented filtering workflows. The examples below describe typical usage patterns.

### 1) Single species

Use when you need a focused pull for one taxon.

- Example query: `Pinus ponderosa`
- Typical workflow: enter species name -> choose trait variables -> run query -> inspect records and map -> export

### 2) Multiple species list

Use when assembling a trait matrix for a known species set.

- Example list:

```text
Abies concolor
Pinus ponderosa
Quercus agrifolia
Populus tremuloides
```

- Input methods: paste list directly or upload a CSV of names

### 3) Genus-level exploration

Use when evaluating coverage for a clade before narrowing to species.

- Example genus: `Quercus`
- Typical goal: identify which species in the genus return trait records for selected variables

### 4) Family-level exploration

Use for broad screening and planning analyses.

- Example family: `Asteraceae`
- Typical goal: estimate whether enough observations exist for the chosen trait set

### 5) Trait-focused workflow

Use when the trait variables drive species choice, rather than the reverse.

- Example intent: retrieve records emphasizing traits such as wood density and plant height
- Typical workflow: start with target taxa scope -> choose focal traits -> inspect completeness in returned records -> export raw + summary outputs

---

## Features

- Species input by text list, pasted names, or uploaded CSV
- Trait selection and coverage preview before running larger pulls
- Observation table with key metadata fields used for provenance review
- Leaflet-based map of trait points for records with coordinates
- Export bundle for downstream workflows (data tables + query script)
- In-app help content for interpretation and workflow guidance

---

## What You Can Expect In App Outputs

The app returns both observation-level and synthesized outputs so users can move from inspection to analysis without losing provenance.

### Records table (observation-level)

The main records table is designed for traceable data review. Exact columns may vary by query and source availability, but users should expect fields like the following:

| Column | Meaning |
|---|---|
| `scrubbed_species_binomial` | Standardized taxon name used in BIEN outputs |
| `trait` | Trait variable label for the observation |
| `value` | Reported trait value |
| `unit` | Measurement unit where available |
| `latitude` / `longitude` | Coordinates for mappable records |
| `country` | Country associated with the record |
| `datasource_id` | BIEN data source identifier |
| `source_citation` | Citation text for provenance tracing |

### Summary outputs

Summary tables support quick diagnostics and reporting. Depending on the query scope, users may see fields such as:

| Summary field | Description |
|---|---|
| `taxon` | Species (or other taxon scope) included in the summary |
| `trait` | Trait summarized |
| `n_records` | Count of records in the summarized group |
| `n_distinct_sources` | Number of distinct contributing sources |
| `min_value` / `max_value` | Range of observed trait values |
| `mean_value` | Arithmetic mean where appropriate |

### Map view

- Shows records with coordinate information
- Supports geographic inspection of where trait observations are available
- Helps identify obvious spatial outliers before downstream analysis

### Provenance and citation outputs

- Record-level source and citation fields are preserved in exported outputs when available
- Citation tables can be used directly in methods supplements or data appendices
- Query script export supports reproducible reruns of the same pull logic

### Downloadable artifacts

Export bundle includes:

- Raw data CSV
- JSON manifest
- Reproducible R query script

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
- tidyr
- leaflet
- DT
- jsonlite

---

## Deploy to shinyapps.io

Use `deploy.R` in this folder after configuring your `rsconnect` account.

Production URL:

> ### [▶ https://benquist.shinyapps.io/bien-traits-shinyapp/](https://benquist.shinyapps.io/bien-traits-shinyapp/)
