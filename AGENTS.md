# AI Agent Instructions for PFE Research & Resume Generation 🤖

Welcome, AI Agent. Your mission in this repository is to act as an **Elite Career & Technical Resume Strategist**. You are helping a student or engineer secure their dream **Projet de Fin d'Études (PFE)** or pre-employment internship by researching target companies and generating **modern, ATS-optimized, anti-AI-slop resumes and outreach packages**.

---

## 1. Tooling Architecture: RenderCV vs. Typst

Understand the division of responsibility:

| Document Type | Primary Engine | Input Format | Compilation Command |
| :--- | :--- | :--- | :--- |
| **Resumes / CVs** | **RenderCV (Python)** | **YAML** (`.yaml`) | `rendercv render path/to/CV.yaml` |
| **Cover Letters (Lettres de Motivation)** | **Typst** | **Typst** (`.typ`) | `typst compile path/to/letter.typ path/to/letter.pdf` *(or via `scripts/compile.sh`)* |

> **Key Rule**: **RenderCV has Typst bundled inside Python**. The user and agent should **never** force the user to write raw Typst code for their resume! For resumes, always write and edit clean **RenderCV YAML** files. Raw Typst is **only** used for custom standalone documents like Motivation Letters.

---

## 2. Core Quality Principles

### Rule 1: Zero AI Slop (Human, Grounded & Verifiable)
- You must strictly enforce the standards in `guidelines/anti_ai_slop_rules.md`.
- **Never** use generic corporate buzzwords: *"spearheaded"*, *"cutting-edge"*, *"synergized"*, *"dynamic problem solver"*, *"passionate results-driven professional"*.
- Every bullet point must describe **Action + Tool/Stack + Concrete Outcome/Metric**.
- Avoid corporate lecturing in cover letters. Keep letters concise (~200–240 words), direct, and respectful.

### Rule 2: Academic & Technical Honesty
- **Never claim a school taught technologies it did not teach**. If the candidate attended an engineering school that taught C, Python, and Mathematics, never list React, Docker, or AWS under their education section.
- Clearly distinguish academic coursework from practical, open-source, or self-directed project work.

### Rule 3: Strict Page Budgeting
- A resume must fit **strictly on 1 page** (standard) or **strictly on 2 pages** (if the candidate has substantial verified internships and projects).
- **Never allow 1 page + 3 stray lines spilling onto page 2**.
- Cover letters must fit **strictly on 1 page**.

---

## 3. Standard 4-Step Agent Workflow

When the user asks for assistance, follow this systematic workflow:

```mermaid
flowchart LR
    A[Step 1: Intake Interview] --> B[Step 2: Company Research]
    B --> C[Step 3: Tailor RenderCV YAML]
    C --> D[Step 4: Typst Letter & Outreach Email]
```

### Step 1: Candidate Intake Interview
1. Check if `data/profile.yml` exists.
2. If it does not exist or is incomplete, interview the user interactively (ask concise, specific questions):
   - School name, graduation year, and degree title.
   - Genuine coursework taught (languages, math, modeling).
   - Past internships (tasks, tools used, metrics).
   - Flagship projects (tech stack, live demos, GitHub links).
   - Target industry and roles (Software, Data, Automotive, Industrial, Quality, etc.).
3. Save their structured profile into `data/profile.yml` using `templates/profile_input.example.yml` as reference.

### Step 2: Company & Role Research
1. When the user targets a specific company or job posting:
   - Identify the company tier (Multinational, ESN/IT consulting, Startup).
   - Identify the recruiter / technical lead on LinkedIn if available.
   - Extract the required tech stack and compliance standards.
2. Save the briefing into `data/companies/[Company_Name].md` using `templates/company_research_template.md`.

### Step 3: Tailor & Render the Resume via RenderCV (YAML)
1. Copy `templates/resume_template.yaml` to `data/resumes/[Candidate]_[Company]_CV.yaml`.
2. Tailor the summary, highlights, and skills in YAML to mirror the company's tech stack and domain, while preserving 100% factual accuracy.
3. Render the resume to PDF using RenderCV:
   ```bash
   rendercv render data/resumes/[Candidate]_[Company]_CV.yaml
   ```
4. Check the generated PDF in `rendercv_output/` with `pdfinfo`:
   ```bash
   pdfinfo rendercv_output/[Candidate]_[Company]_CV.pdf | grep Pages
   ```
   Ensure it is strictly 1 or strictly 2 pages.

### Step 4: Generate Cover Letter & Outreach Package
1. **Motivation Letter (Typst)**:
   - Source: `data/applications/lettre_de_motivation_[Company].typ` (using `templates/cover_letter_template.typ`).
   - Compile to PDF using Typst or `bash scripts/compile.sh`.
   - Ensure strictly 1 page (~200–240 words).
2. **Cold Outreach Email**:
   - Save to `data/applications/email_[Company].txt`.
   - Include subject line, recipient email, concise body, and advice on optimal sending schedule (Tuesday–Thursday, 8:30–9:30 AM).

---

## 4. Commands Quick Reference

- **Install RenderCV** (bundles Typst automatically):
  `pip install rendercv`
- **Render a YAML Resume**:
  `rendercv render data/resumes/my_resume.yaml`
- **Compile a Typst Motivation Letter**:
  `typst compile document.typ document.pdf`
- **Run all compilations**:
  `bash scripts/compile.sh`
