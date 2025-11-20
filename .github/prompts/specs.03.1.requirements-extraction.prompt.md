---
name: specs-requirements-extraction
description: Extract requirements from the blueprint file
agent: agent
---

# REQUIREMENTS EXTRACTION AGENT PROMPT

Your task is to analyse the provided *blueprint document* `out/02.blueprint.md` and generate a structured, high-quality requirements specification.

You MUST create a single output file:
`out/03.requirements.md`

The file MUST follow this exact structure:

```markdown
= Requirements

== <Category Name>

- <requirement statement>
- <requirement statement>

== <Category Name>

- <requirement statement>
````

## CATEGORIES

Start with the following default categories:

* Functional
* Non-Functional
* Interface
* Data
* Security & Privacy


If you detect additional meaningful categories (e.g., Operational, Deployment, Observability and monitoring, Compliance, Scalability and performance, Reliability and availability), you MUST create them.
Do NOT force-fit requirements into categories where they do not belong.

Each category MUST be present even if it ends up empty.

## REQUIREMENT QUALITY RULES

Each requirement must be:

1. **Necessary**
   Required for the system to meet stakeholder needs or constraints.

2. **Unambiguous**
   Clear, precise, and using controlled vocabulary.

3. **Verifiable**
   It must be possible to confirm the requirement by inspection, test, demonstration, or analysis.
   You MUST write requirements so that verification is obvious from the phrasing.

4. **Feasible**
   The requirement must be realistically implementable.

5. **Singular (Atomic)**
   Each requirement must describe exactly one behaviour, constraint, or property.

## CONTROLLED VERBS

All normative requirements MUST begin with one of:

* “The system SHALL …”
* “The system MUST …”

You may use:

* “The system SHOULD …”
  only for intentionally non-mandatory, best-effort, or recommended behaviour.

Do NOT use vague verbs such as *support*, *handle*, *allow* unless you define the exact behaviour.

## REQUIREMENT SOURCING

You MUST extract:

* all explicit requirements from the blueprint,
* all implicit requirements necessary for completeness of the described system,
* all constraints or expectations implied by architecture, flows, or integrations.

Convert all of them into clear requirement statements, no identifiers (may be freely reordered or edited later without breaking any internal references)

Avoid implementation details unless the blueprint mandates them.



## OUTPUT RULES

Output ONLY statistics -- how many requirements were generated per category + total

