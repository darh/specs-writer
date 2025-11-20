# Specs Writer Prompts

Set of prompts used by copilot agent & VSCode to create and validate outline, bluprints, and finally specification documents.


## Overall Process

### Brief Creation and Verification


### Step 1.1: Create brief from the user's input:**

Creates an brief markdown file from a brief input, then verifies its completeness and correctness.

```
/specs-create a saas platform "FooBar" that allows users to trade their FooCoins for BarGems securely and efficiently.
```

Manual work by the user to refine and expand the brief file as needed.

### Step 1.2: Verify the brief is complete and correct
```
/specs-verify-brief
```

This is repeated until the brief is verified as complete and correct.
See the generated out/01.brief.summary.md & out/01.brief.validation.md for details.

### Step 2.1: Create blueprint from the brief

Creates a blueprint markdown file from the verified brief, then verifies its completeness and correctness.

```
/specs-create-blueprint
```

Manual work by the user to refine and expand the blueprint as needed.

### Step 2.2: Verify the blueprint is complete and correct

```
/specs-verify-blueprint
```

This is repeated until the blueprint is verified as complete and correct.
See the generated out/02.blueprint.review.md for details.


### Step 3.1: Requirements extraction


Creates a plain list of software requirements from the verified blueprint.

```
/specs-requirements-extraction
```

### Step 4.1: Software Requirements Specification Document (SRS) generation

Creates a Software Requirements Specification (SRS) document from the extracted requirements.


```
/specs-generate-srs
``` 


