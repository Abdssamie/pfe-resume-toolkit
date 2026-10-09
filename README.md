# PFE Research & Resume AI Agent Toolkit 🎓🚀

A clean, modern, and turn-key toolkit designed to help students and engineering graduates land their dream **Projet de Fin d'Études (PFE)** or pre-employment internships using **AI Agents** (Cursor, Claude Code, Windsurf, Copilot, ChatGPT, etc.).

No complex coding required! Resumes are written in simple **RenderCV YAML** and rendered directly to PDF with **RenderCV** (which has the Typst layout engine bundled right inside Python).

---

## ⚡ Quickstart: Setup & Usage (3 Steps)

### Step 1: Install RenderCV (One-Time Setup)
RenderCV is a Python tool that generates ATS-friendly resumes. It **automatically bundles Typst inside Python**, so you don't even need to install Typst separately!

In your terminal:
```bash
pip install rendercv
# or using pipx / uv:
# pipx install rendercv
```

### Step 2: Open this folder in your AI editor & paste a prompt
Open this folder in **Cursor**, **VS Code** (with Copilot / Claude Code), or any AI assistant, and paste one of these prompts:

#### Prompt A: "Interview me and build my profile"
> *"Hi! I want to prepare my PFE internship applications. Please read AGENTS.md and interview me step-by-step about my engineering school, genuine coursework, past internships, projects, and target roles. Then save my info into data/profile.yml."*

#### Prompt B: "Research a company and tailor my resume"
> *"I want to apply to [Company Name, e.g. Stellantis / Capgemini / ValueIT] for a PFE internship in [Software / Data / Quality]. Please research the company, create data/companies/[Company].md, and generate a tailored RenderCV YAML resume in data/resumes/ that strictly fits on 2 pages (or 1 page) without any AI slop."*

#### Prompt C: "Write my cover letter and cold outreach email"
> *"Generate a tailored 1-page cover letter (lettre de motivation) for [Company Name] and draft my cold outreach email with the recommended sending time slot."*

### Step 3: Render your Resume & Motivation Letter
- **Render your Resume** (RenderCV YAML -> PDF):
  ```bash
  rendercv render data/resumes/your_resume.yaml
  ```
  Your PDF, PNG, and Typst files are generated in `rendercv_output/` in under 1 second!
- **Compile your Motivation Letter** (Typst -> PDF):
  RenderCV is strictly a CV tool, so motivation letters are written in Typst:
  - If you have Typst or the VS Code **Tinymist** extension: open `data/applications/lettre_de_motivation.typ` for live preview.
  - Or run: `bash scripts/compile.sh` to compile everything at once.
  - Or paste into the free web app: [typst.app](https://typst.app).

---

## 📁 What's Inside This Toolkit?

```
pfe-resume-toolkit/
├── AGENTS.md                          # Master instructions for AI agents
├── CLAUDE.md                          # Directives for Claude Code
├── .cursorrules                       # Directives for Cursor AI
├── README.md                          # This guide
│
├── guidelines/                        # Quality control rules
│   ├── anti_ai_slop_rules.md          # Bans buzzwords, forces concrete metrics & honest coursework
│   ├── typst_rendercv_best_practices.md # Technical rules for page splits and margins
│   └── pfe_research_playbook.md       # Strategy: Finding PFE subjects, cold emails & timing
│
├── templates/                         # Reusable foundations
│   ├── resume_template.yaml           # Primary RenderCV YAML resume template (clean & tested)
│   ├── cover_letter_template.typ      # 1-page Typst cover letter (French & English)
│   ├── profile_input.example.yml      # Profile questionnaire
│   ├── company_research_template.md   # Company briefing format
│   └── outreach_emails/               # High-converting email & LinkedIn message drafts
│
├── data/                              # Where YOUR files are saved (gitignored)
│   ├── profile.yml                    # Your personal profile
│   ├── companies/                     # Researched company briefings
│   ├── resumes/                       # Generated .yaml and .pdf CVs
│   └── applications/                  # Cover letters and customized email drafts
│
└── scripts/
    └── compile.sh                     # Helper script to compile resumes (RenderCV) and letters (Typst)
```

---

## 🛡️ Why This Toolkit is Different

1. **Zero AI Slop**: AI usually generates cheesy buzzwords (*"spearheaded cutting-edge synergies"*). This toolkit forces the AI to use Google's XYZ formula (*Action + Tool + Measurable Outcome*).
2. **Simple YAML for Resumes**: You and the AI work with clean, human-readable YAML. You don't have to fiddle with complex document formatting.
3. **Academic Honesty**: Ensures university coursework is reported accurately without fabricating courses your school never taught.
4. **Exact Page Budgeting**: Guarantees resumes are **strictly 1 page** or **strictly 2 pages**—no awkward 3-line spills onto an extra page.
5. **Smart Fallback Strategy**: Teaches you how to apply for high-value engineering roles while keeping an open fallback for trainee programs.
6. **Cold Outreach Timing**: Gives you the exact days and hours (Tuesday–Thursday, 8:30–9:30 AM) when Moroccan and international recruiters actually open emails.

---

*Created with ❤️ for students, future engineers, and makers.*
