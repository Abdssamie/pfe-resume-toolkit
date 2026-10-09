# PFE Research & Resume AI Agent Toolkit 🎓🚀

A clean, modern, and turn-key toolkit designed to help students and engineering graduates land their dream **Projet de Fin d'Études (PFE)** or pre-employment internships using **AI Agents** (Cursor, Claude Code, Windsurf, Copilot, ChatGPT, etc.).

No coding experience required! This toolkit contains pre-configured instructions, templates, and guardrails so your AI agent will do all the heavy lifting for you while ensuring your resume looks professional, passes ATS scanners, and contains **zero AI slop**.

---

## ⚡ Quickstart: How to Use with Your AI Agent (3 Steps)

### Step 1: Open this folder in your AI editor
Open this folder in **Cursor**, **VS Code** (with GitHub Copilot or Claude Code), or any AI assistant.

### Step 2: Pick a prompt and paste it into the AI Chat

#### Prompt A: "Interview me and build my profile"
> *"Hi! I want to create my PFE internship profile. Please read AGENTS.md and interview me step-by-step about my school, genuine coursework, past internships, projects, and target roles. Then save my info into data/profile.yml."*

#### Prompt B: "Research a company and tailor my resume"
> *"I want to apply to [Company Name, e.g., Stellantis / Capgemini / ValueIT] for a PFE in [Software / Data / Quality]. Please research the company, create data/companies/[Company].md, and generate a tailored Typst resume in data/resumes/ that strictly fits on 2 pages (or 1 page) without any AI slop."*

#### Prompt C: "Write my cover letter and cold outreach email"
> *"Generate a tailored 1-page cover letter (lettre de motivation) for [Company Name] and draft a cold outreach email with the best time to send it, using the templates in this toolkit."*

### Step 3: View & export your PDF
- **Option 1 (Recommended)**: In VS Code / Cursor, install the free extension **Tinymist Typst**. Open any `.typ` file in `data/resumes/` and you will see a live preview of your PDF right next to your code! Every time you save, the PDF updates automatically.
- **Option 2 (Terminal)**: Run `bash scripts/compile.sh` to compile all `.typ` files into `.pdf`.
- **Option 3 (Web Browser)**: If you don't have Typst installed locally, simply copy the text of your `.typ` file and paste it into the free online editor at [typst.app](https://typst.app).

---

## 📁 What's Inside This Toolkit?

```
pfe-resume-toolkit/
├── AGENTS.md                   <- The "Brain": Master rules and workflow for AI agents
├── CLAUDE.md                   <- Directives for Claude Code
├── .cursorrules                <- Directives for Cursor AI
├── README.md                   <- This guide
│
├── guidelines/                 <- Quality control rules
│   ├── anti_ai_slop_rules.md   <- Bans buzzwords, forces concrete metrics & honest coursework
│   ├── typst_rendercv_best_practices.md <- Formatting & page-split rules
│   └── pfe_research_playbook.md<- Strategy: Finding PFE subjects, cold emails & timing
│
├── templates/                  <- Reusable foundations
│   ├── profile_input.example.yml <- Profile questionnaire
│   ├── resume_template.typ     <- Modern Typst/RenderCV resume (ATS-safe)
│   ├── cover_letter_template.typ <- 1-page Typst cover letter (French & English)
│   ├── company_research_template.md <- Company briefing format
│   └── outreach_emails/        <- High-converting email & LinkedIn message drafts
│
├── data/                       <- Where YOUR files are saved (safe from git)
│   ├── profile.yml             <- Your personal profile
│   ├── companies/              <- Researched companies (.md)
│   ├── resumes/                <- Your generated .typ and .pdf CVs
│   └── applications/           <- Your cover letters and email drafts
│
└── scripts/
    └── compile.sh              <- One-click script to compile all documents to PDF
```

---

## 🛡️ Why This Toolkit is Different

1. **Zero AI Slop**: AI usually generates cheesy buzzwords (*"spearheaded cutting-edge synergies"*). This toolkit forces the AI to use Google's XYZ formula (*Action + Tool + Measurable Outcome*).
2. **Academic Honesty**: Ensures your school coursework is reported accurately without fabricating courses your school never taught.
3. **Exact Page Budgeting**: Guarantees resumes are **strictly 1 page** or **strictly 2 pages**—no awkward 3-line spills onto an extra page.
4. **Smart Fallback Strategy**: Teaches you how to apply for high-value engineering roles while keeping an open fallback for trainee programs.
5. **Cold Outreach Timing**: Gives you the exact days and hours (Tuesday–Thursday, 8:30–9:30 AM) when Moroccan and international recruiters actually open emails.

---

## 💡 Tips for Best Results

- **Be honest with your agent**: If you self-taught yourself web development or cloud tools while your university only taught chemistry or mathematics, tell your agent! The agent will know how to present this as a massive strength under Projects.
- **Provide GitHub links & live projects**: Live URLs and repository links give you instant credibility that 95% of candidates lack.
- **Review before sending**: Always skim the generated cover letter to ensure it feels authentic to your personal voice.

---

*Created with ❤️ for students, future engineers, and makers.*
