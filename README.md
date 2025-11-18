# Specs Writer Prompts

Set of prompts used by copilot agent & VSCode to create and validate outline, bluprints, and finally specification documents.


## Overall Process

### Outline Creation and Verification

Creates an outline markown file from a brief input, then verifies its completeness and correctness.

**Step 1.1: Create outline from the input:**
```
/specs-create my little app
```

**Step 1.2: Adjust out/outline.md and add details**

Manual work by the user to refine and expand the outline as needed.


**Step 1.3: Verify the outline is complete and correct**
```
/specs-verify-outline
```

This is repeated until the outline is verified as complete and correct.
See the generated out/outline.review.md for details.


### Blueprint Creation and Verification

Creates a blueprint markdown file from the verified outline, then verifies its completeness and correctness.

**Step 2.1: Create blueprint from the outline**
```
/specs-create-blueprint
```

**Step 2.2: Adjust out/blueprint.md and add details**

Manual work by the user to refine and expand the blueprint as needed.


---

`[NOT YET IMPLEMENTED]` ** Step 2.3: Verify the blueprint is complete and correct**
```
/specs-verify-blueprint
```

This is repeated until the blueprint is verified as complete and correct.
See the generated out/blueprint.review.md for details.


### Specification Creation and Verification

Creates specification documents from the verified blueprint, then verifies their completeness and correctness.
Documentation includes SRS, Software Design, Test Plan, Deployment Plan, etc and follows ISO/IEC/IEEE 29148 and 42010 standards.

Final product is set of AsciiDoc files in out/??????????? directory.

`[NOT YET IMPLEMENTED]` **Step 3.1: Create specification docs from the blueprint**
```
/specs-?????
```


