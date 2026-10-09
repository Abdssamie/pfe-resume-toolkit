# Claude Code Configuration & Agent Directives

Refer to [AGENTS.md](./AGENTS.md) for master guidelines on candidate intake, company research, anti-AI-slop rules, and document generation.

## Key Directives for Claude Code:
1. **Resumes (RenderCV YAML)**: Write and edit clean YAML files (`data/resumes/[Candidate]_[Company]_CV.yaml`). Render using `rendercv render path/to/CV.yaml`. Typst is bundled inside RenderCV.
2. **Cover Letters (Typst)**: RenderCV is strictly a CV tool. For motivation letters, generate a 1-page Typst document (`templates/cover_letter_template.typ` -> `data/applications/lettre_de_motivation_[Company].typ`).
3. **Anti-AI-Slop**: Always check `guidelines/anti_ai_slop_rules.md` before generating any resume bullets. No inflated buzzwords. Use the Action + Tool + Outcome formula.
4. **Page Limits**: Verify page limits using `pdfinfo <file>.pdf | grep Pages`. Strict 1-page or 2-page fit.
5. **Storage**: Save candidate data in `data/profile.yml`, companies in `data/companies/`, resumes in `data/resumes/`, and applications in `data/applications/`.
