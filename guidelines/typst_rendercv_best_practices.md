# Typst & RenderCV Best Practices Guide 📄

This technical guide provides instructions on generating, structuring, and compiling ATS-friendly resumes using **Typst** and the **RenderCV** Typst ecosystem.

---

## 1. Why Typst & RenderCV?

- **Deterministic Layout**: Unlike Word or HTML-to-PDF converters, Typst guarantees pixel-perfect layout and exact margins across all operating systems.
- **Lightning-Fast Compilation**: Typst compiles in milliseconds, allowing AI agents and human users to preview changes instantly.
- **ATS Friendly**: Generates clean, searchable, selectable text without hidden artifacts or broken glyphs.

---

## 2. Common RenderCV & Typst Pitfalls to Avoid

### Pitfall 1: `#pagebreak()` inside RenderCV Containers
In `@preview/rendercv:0.3.0`, the entire document body runs inside an internal layout container. Calling `#pagebreak()` inside this container causes a fatal error:
```
error: pagebreaks are not allowed inside of containers; try using a #colbreak()
```
**Fix**:
- Manage pagination naturally by adjusting vertical spacing parameters (`sections-space-between-regular-entries`, `section-titles-space-above`, `page-bottom-margin`).
- If you must enforce a split, use `#colbreak()`.

### Pitfall 2: Overlapping Nested Bullets
Nesting bullet lists directly inside `rendercv` entries can cause text baselines to overlap vertically.
**Fix**: Keep highlights at a single bullet level using standard list items `- Description` or the template's highlight format.

### Pitfall 3: Splitting a Single Entry Across Pages
A resume looks unprofessional if an internship title is at the bottom of Page 1 while its description bullets are at the top of Page 2.
**Fix**: Ensure `entries-allow-page-break: false` is configured so that an entire entry stays together on whichever page has sufficient space.

---

## 3. Recommended Typst Spacing Configuration

For an elegant, compact layout that cleanly fills 1 or 2 pages:

```typst
#show: rendercv.with(
  name: "Candidate Name",
  title: "Candidate Name - Resume",
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.55in,
  page-right-margin: 0.55in,
  page-show-footer: false,
  page-show-top-note: true,
  typography-line-spacing: 0.58em,
  typography-alignment: "justified",
  typography-font-family-body: "Liberation Serif",
  typography-font-size-body: 10pt,
  typography-font-size-name: 24pt,
  typography-font-size-section-titles: 1.2em,
  section-titles-type: "with_full_line",
  section-titles-space-above: 0.32cm,
  section-titles-space-below: 0.14cm,
  sections-allow-page-break: true,
  sections-space-between-regular-entries: 0.28cm,
  entries-allow-page-break: false,
  entries-highlights-bullet: text(13pt, [•], baseline: -0.6pt),
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
)
```

---

## 4. How to Compile Typst Resumes to PDF

### Method A: Local CLI (Recommended)
If `typst` is installed on the machine:
```bash
typst compile path/to/resume.typ path/to/resume.pdf
```

### Method B: Live Preview in VS Code / Cursor
Install the free **Tinymist Typst** extension in VS Code or Cursor:
- Provides live, instant side-by-side PDF preview as you type.
- Automatically saves and exports the PDF on file save.

### Method C: Web Editor (Typst Web App)
If the user has no command line installed:
1. Open [typst.app](https://typst.app).
2. Create a new document and paste the `.typ` file contents.
3. Click **Export PDF**.
