---
name: spec-outline-verify
description: Verify the completeness and correctness of specification outline files
agent: agent
---

# Goal

Your single goal is to verify the completeness and correctness of the outline file.
Outline will be later used in a separate process to generate blueprints with more detailed specifications.

# Input

Outline is expected be in `out/outline.md`.
You MUST always read and consider entire file in full.

# Verification criteria

You MUST use the verification criteria defined in `lib/criteria/outline-input.md`.
You MUST always read and consider entire file in full.
You MUST generate a separate verification report for each outline file. 

# Review output

# Location of output file

You MUST generate report in a markdown file `out/outline.review.md`
If file already exist you MUST keep them and append new reports to the end of the file.

# Format of output file

Verification report MUST be in markdown format and contain the following sections:

1. Header
 - Date and time of verification
   - You MUST generate this using system time in UTC:
     `date -u +"%Y-%m-%d %H:%M UTC"`

2. Summary
   - Overall status: "Complete and correct" or "Incomplete/incorrect"
   - High-level comments on the outline quality

3. Detailed findings
   - List of specific issues found, each tagged as MUST/SHOULD/COULD
   - Each issue line must start with a checkbox (`- [ ]`) to allow tracking resolution
   - For each issue, provide:
     - Description of the issue
     - Location in the outline (section, line number if possible)
     - Suggested remediation steps

