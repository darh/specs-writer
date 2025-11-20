---
name: specs-create-srs
description: Generate an ISO 29148–compliant Software Requirements Specification (SRS)
agent: agent
---

# Agent: Software Requirements Spec Generator

## Objective

Create a complete ISO/IEC/IEEE 29148–aligned Software Requirements Specification (SRS) document in AsciiDoc format.:

Output must be a **single AsciiDoc file**: `out/software-requirements.adoc`

The document must be:
- complete and self-contained,
- consistently structured,
- traceable to the blueprint content only via AsciiDoc comments,
- focused strictly on requirements (what the system shall do), not design (how it will do it).
- Do NOT mention blueprint document or any markdown files used as in input in any way

## Input

- `out/02.blueprint.md` — A structured blueprint describing the system, including scope, stakeholders, features, flows, constraints, risks, non-functional expectations, and integrations.
- `out/03.requirements.md` — A structured requirements specification extracted from the blueprint.

Do NOT include, read or reference any other files or documents.

## Output

Only the AsciiDoc document body
Save final document in `out/04.software-requirements.adoc`


## Requirements Rules

1. Keep all requirements from `out/03.requirements.md` exactly as they are.
   Do NOT modify requirement statements in any way.
3. Requirement identifiers:
* `SR-UNC-###` for functional
* `SR-NFR-###` for non-functional
* `SR-INT-###` for interface requirements
* `SR-DAT-###` for data requirements
* `SR-SEC-###` for security/privacy
* ....
* Expand categories if needed, follow the /SR\-[A-Z]{3}/\.[0-9]{3}/ format.
* IDs must remain stable within the document.


5. Requirements structure (mandatory):
```
[[SR-FNC-001]]
SR-FNC-001 <Short title>::
// derived from UC-01
* The system shall ...
** (rationale: <explanation of why the requirement exists>)
** (verification method: inspection/test/demonstration/analysis)

```

## AsciiDoc Document Structure (Mandatory)

Use the following structure exactly:

```

= Software Requirements Specification for <System Name>
:doctype: book
:toc: left
:toclevels: 4
:sectnums:

== Introduction

=== Purpose
=== Scope
=== Product perspective
=== Product functions
=== User characteristics
=== Operating environment
=== Design and implementation constraints
=== Assumptions and dependencies
=== References

== Definitions, acronyms, and abbreviations

== System overview

== Overall description
=== System context
=== Stakeholders and user classes
=== Use cases / user scenarios
=== Major system capabilities

== Functional requirements
=== <Capability Group #1>
==== Overview
==== Requirements

=== <Capability Group #2>
...

== External interface requirements
=== User interfaces
=== APIs and machine interfaces
=== External systems and integrations
=== Data interfaces

== System and non-functional requirements
=== Performance requirements
=== Reliability and availability
=== Security and privacy
=== Safety (if applicable)
=== Usability and accessibility
=== Maintainability and supportability
=== Portability and interoperability

== Data and information requirements
=== Data entities and relationships
=== Data retention and lifecycle
=== Reporting and analytics

== Compliance and regulatory requirements

== Operational and support requirements

== Appendices

```

## Blueprint Transformation Rules

When converting `out/02.blueprint.md`:

1. Extract:
   * system name,
   * scope & goals,
   * user roles,
   * features,
   * flows,
   * constraints,
   * integrations,
   * NFRs.

3. Normalize terminology:
   * Use one canonical term when blueprint uses synonyms.
   * Document the canonical term in the Definitions section.


## AsciiDoc formatting rules

Strictly follow AsciiDoc syntax for all elements as per https://docs.asciidoctor.org/asciidoc/latest/

Especially:
* Use `*`, `**`, `***` etc for unordered lists, not `-` or `+`. 
* Use `=` for headings, with one `=` for level 1, two `==` for level 2, etc.
* Use `//` for comments (e.g., traceability notes), not `#` or `<!-- -->`.
* Use `[[ID]]` for anchors before requirement statements.
* Use `:attribute-name: value` for document attributes at the top
* Ensure proper blank lines around blocks, lists, and headings.
* One sentence per line in paragraphs.


## Response

When responding only confirm that the task is completed and the output file is saved. 
Do NOT include any other text, explanations, or code fences.