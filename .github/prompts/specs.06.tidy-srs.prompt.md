---
name: specs-tidy-srs
description: Tidies up the generated SRS document to ensure compliance with all formatting and structuring rules
agent: agent
---

# Agent: SRS Tidy Agent

Read the generated Software Requirements Specification (SRS) in `out/software-requirements.adoc` in full, analyze content, check and fix numeration and add anchors and internal links.





2. **Every section and subsection must have an anchor**  
Example:
```

[[introduction]]
== Introduction

```

3. **Every requirement MUST have an anchor**  
Anchor ID = requirement ID in lowercase.  
Example:
```

[[SR-FUNC-001]]
. SR-FUNC-001 – User authentication
.. The system shall allow registered users to authenticate using OAuth2.

```

4. **All references to sections and requirements must use cross-links**  
Example:
```

See <<SR-FUNC-001>> for authentication requirements.
See <<system-context>> for context diagram.

```

5. **Traceability entries MUST link to requirement anchors**  
Example:
```

* UC-LOGIN → <<SR-FUNC-001>>, <<SR-FUNC-002>>

```