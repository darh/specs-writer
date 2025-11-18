---
name: specs-create
description: Sets up specification project structure, copying templates and seeding outlines
agent: agent
---

Your goal is to execute first step of the project specification setup.
You MUST consider the input variable which contains project context information and create an outline file using the provided templates.

You MUST ignore any previous outlines or specs that may exist in your memory.
Running this prompt MUST always reset the outline files to initial state based on the templates and seed them with content derived from the input.

# Step 1: Copy the templates

Run the shell following command: `lib/scripts/copy.sh outline`.

This will copy the outline markdown file to `out/outline.md`.

# Step 2: Process user's input

User inputed the following: 
---
{input}
---

If input is empty or missing, you MUST terminate with a message indicating that no input was provided and that outline files with placeholders have been created for the user to fill out later.

If input is present, you MUST pricess.

Process user's input in the context of creating outline files for the Software Requirements Specification and Software Design Specification documents.

If input is missing or incomplete, create outlines with placeholders and guiding questions to be filled out later by the user.

Print out that summary.

# Step 3: Seed the outline files

Always read the copied outline file (`out/outline.md`) in full and consider its structure.

You MUST seed the outline files with initial content based on the user's input.
You MUST Inspect all placeholder sections in the outline file before making any changes.
You MUST identify sections that can be populated with relevant content derived from the user's input.
You MUST not generate any new files, only modify the existing outline file (`out/outline.md`).
You MUST not generate any content outside of the outline file.
You MUST not generate any new sections in the outline file.

You MUST go through each section and print out short, one-line summary of what content you added or modified in that section. 

# Step 4: Finalize

Invite user to review and complete the outline files as needed and run /specs-verify-outline step next.

