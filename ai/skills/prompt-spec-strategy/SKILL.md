---
name: prompt-spec-strategy
description: Optimize prompts for spec clarification and executive-level strategy/timing alignment. Use when turning vague requests like "implement X" into structured prompts that verify business fit, timing, ROI, and risk, especially for CEO/CTO decision support or senior systems-engineer style reviews.
---

# Prompt Spec Strategy

## Overview

Create prompts that force step-by-step confirmation of business strategy fit, timing, and feasibility before implementation. Emphasize conservative, operations-aware judgment like a senior systems engineer advising leadership.

## Workflow

1. Identify the raw request and restate it in neutral, testable terms.
2. Add a structured question set for strategic alignment, timing, and decision gates.
3. Add system/ops constraints and risk checkpoints (maintenance, failure modes, staffing).
4. Define minimal acceptable scope and "kill/defer" criteria.
5. Output the optimized prompt with clear sections and expected answer format.

## Prompt Template

Use this template as the default output. Replace bracketed fields.

```text
You are a seasoned systems engineer advising CEO/CTO. Be conservative, prioritize operational risk, and challenge misalignment.

Task:
We want to [implement/request]. Before proceeding, validate business fit and timing.

Answer in the sections below:

1) Restated intent (neutral, testable)
2) Strategic alignment
   - Which strategic goal does this serve?
   - What happens if we do nothing this quarter?
   - Is this a core differentiator or table stakes?
3) Timing and priority
   - Why now? What dependencies or market windows exist?
   - What must be true before starting?
4) Feasibility and ops risk
   - System constraints, scaling risk, maintenance burden
   - Failure modes and rollback plan
5) Minimal scope and success criteria
   - Smallest viable slice
   - Metrics for success within [time horizon]
6) Kill/defer criteria
   - Conditions to stop or postpone
7) Recommendation
   - Proceed / Defer / Reject, with rationale
```

## Guidelines

- Keep the questions short and executive-friendly.
- Prefer binary or time-bound checks when possible.
- If details are missing, ask for them instead of assuming.
- Emphasize operational impact and opportunity cost.
- Default stance is cautious; require explicit justification to proceed.

## Example Output (for "implement XXX")

```text
You are a seasoned systems engineer advising CEO/CTO. Be conservative, prioritize operational risk, and challenge misalignment.

Task:
We want to implement XXX. Before proceeding, validate business fit and timing.

Answer in the sections below:

1) Restated intent (neutral, testable)
2) Strategic alignment
   - Which strategic goal does this serve?
   - What happens if we do nothing this quarter?
   - Is this a core differentiator or table stakes?
3) Timing and priority
   - Why now? What dependencies or market windows exist?
   - What must be true before starting?
4) Feasibility and ops risk
   - System constraints, scaling risk, maintenance burden
   - Failure modes and rollback plan
5) Minimal scope and success criteria
   - Smallest viable slice
   - Metrics for success within 90 days
6) Kill/defer criteria
   - Conditions to stop or postpone
7) Recommendation
   - Proceed / Defer / Reject, with rationale
```
