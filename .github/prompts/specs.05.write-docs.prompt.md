---
name: 002_srs_scaffold
description: Generate and populate a Software Requirements Specification (SRS) structure
agent: agent
---

# Tasks

## 1. Detect current state of src/srs

- You MUST determine the state of `src/srs` by inspecting the actual filesystem in this workspace.
- You MUST NOT rely on any previous assumptions, cached reasoning, or earlier runs.
- After listing `src/srs`, you MUST print the list of files you see.
- Your decision to terminate or proceed MUST be justified with reference to that list.

## 2. Scaffold initialization

- If `src/srs` exists and contains one or more `.adoc` files:
  - Terminate immediately without making any changes.
- If `src/srs` does not exist, create it.
- Copy all `.adoc` files from `templates/srs` into `src/srs`.
  - Do NOT create or modify any subdirectories under `src/srs`.
  - Do NOT copy or process any non-`.adoc` files.

## 3. Placeholder processing

- For each `.adoc` file in `src/srs`:
  - Load the corresponding file from `templates/srs`.
  - Detect all `<placeholder>...</placeholder>` blocks.
    - These may contain instructions, example content, or outline templates.
  - Replace each `<placeholder>...</placeholder>` block with context-appropriate content.
  - Generated content MUST be based on project details found in `.init/srs.md`.
  - Remove all `<placeholder>` tags and markers entirely.
  - The final output MUST:
    - Use **AsciiDoc** format.
    - Follow the **IEEE 830** / **ISO/IEC/IEEE 29148** structure for Software Requirements Specifications.
    - Define reusable metadata using the **AsciiDoc attributes system**, with all shared attributes stored in `src/srs/attr.adoc`.

# Instructions

## Rules for `<placeholder>` sections

In all cases:
- All `<placeholder>` tags MUST be removed once replaced.
- Placeholder text MUST NEVER remain in the generated output.
- Generated replacements MUST be meaningful, relevant, and tied to `.init/srs.md`.
- Do NOT generate placeholder text such as `TBD`, `Lorem Ipsum`, or generic filler.


## AsciiDoc Formatting Standards

- **Glossary definitions:** Use `term::` on one line, followed by description on the next line, separated by a blank line.
  Example:
  ```
  API::
  A defined interface for interaction between software components.

  ```

- **Lists:** Use `* ` for unordered lists, and `** ` or `*** ` for nested items.
- **Highlighting:** Only use `#text#` for inline highlights when the hash symbols start and end on the same line.
- **Attributes:** Use `:attribute-name:` to define reusable metadata in `attr.adoc`.

## Notes

- Ensure section order and structure match IEEE/ISO standard layout, including:
- Introduction
- Overall description
- Functional requirements
- Non-functional requirements
- External interfaces
- Appendices (optional)
- Any content not provided in `.init/srs.md` should be reasonably inferred based on common software specification practices.
