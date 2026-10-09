# Claude Code Configuration & Agent Directives

Refer to [AGENTS.md](./AGENTS.md) for master guidelines on candidate intake, company research, anti-AI-slop rules, and Typst/RenderCV resume compilation.

## Key Instructions for Claude Code:
1. Always check `guidelines/anti_ai_slop_rules.md` before generating any resume bullets. No inflated buzzwords.
2. Verify page limits using `pdfinfo <file>.pdf | grep Pages` after running `typst compile`. Strict 1-page or 2-page fit.
3. Save candidate data in `data/profile.yml`, companies in `data/companies/`, resumes in `data/resumes/`, and applications in `data/applications/`.
