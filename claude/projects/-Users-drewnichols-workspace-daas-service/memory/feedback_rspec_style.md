---
name: RSpec it block minimisation
description: User wants as few `it` blocks as possible when generating RSpec specs — consolidate expects into single blocks
type: feedback
---

Minimise the number of `it` blocks when writing RSpec specs. Consolidate multiple `expect` calls into a single `it` block rather than writing one `it` per assertion.

**Why:** User preference for concise specs that group related assertions together rather than one expectation per example.

**How to apply:** When generating any RSpec spec, default to grouping all related expectations into a single `it` block. Only use multiple `it` blocks when the setup or subject genuinely differs between cases (e.g., different contexts with different inputs).
