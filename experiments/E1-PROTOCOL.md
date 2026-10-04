# E1 — Minimal Real-World Closed-Loop Experiment

## 1. Research question

Can a small real ecological system produce a useful and auditable closed loop from observation to bounded action by coordinating heterogeneous existing tools, without Carob Three replacing those tools?

## 2. Minimal experimental unit

Use one small plot or contained ecological setup with:

* 2–4 plant species;
* environmental sensing;
* human observations;
* at least one plant-related physiological signal when technically available;
* one existing AI/ML analysis component;
* one provenance mechanism;
* one explicit human/scientific validation process;
* one bounded and reversible intervention.

The experiment should use existing components wherever practical.

## 3. Canonical loop

```text
Observation
    ↓
Hypothesis
    ↓
Evidence
    ↓
Validation
    ↓
Knowledge
    ↓
Bounded Policy
    ↓
Action
    ↓
New Observation
    ↺
```

Contributor recognition may exist alongside the loop, but it is not required to prove E1.

## 4. Observation schema

Every observation should minimally contain:

* `observation_id`
* `source_type`
* `source_id`
* `timestamp`
* `context`
* `measurement_or_observation`
* `provenance_reference`
* `quality_flag`

An observation is data, not knowledge.

## 5. Hypothesis schema

Every hypothesis should minimally contain:

* `hypothesis_id`
* `input_observation_ids`
* `generation_method`
* `model_or_analyst_reference`
* `confidence_if_available`
* `timestamp`

Confidence is descriptive only. It cannot authorize an action.

## 6. Evidence

Evidence must reference the hypothesis and preserve:

* source;
* collection or analysis method;
* timestamp;
* relationship to the hypothesis: supports, contradicts, or neutral.

Evidence can strengthen, weaken, or invalidate a hypothesis.

## 7. Validation

Validation must declare:

* validation rule-set/version;
* validator authority;
* evidence considered;
* decision;
* rationale;
* timestamp.

Allowed decisions:

* `accepted`
* `rejected`
* `inconclusive`
* `needs-more-evidence`

Only `accepted` may create an accepted knowledge record.

## 8. Knowledge

A knowledge record must reference:

* accepted hypothesis;
* supporting evidence;
* validation decision;
* rule-set/version.

Knowledge is versioned and may later be revised or invalidated.

## 9. Policy

A policy must reference accepted knowledge and define:

* condition;
* bounded action;
* safety limits;
* authorization;
* knowledge version.

Validated knowledge does not automatically authorize action.

## 10. Action

Every action must record:

* triggering policy;
* actor/executor;
* timestamp;
* parameters;
* execution result;
* resulting observations.

An action failure is a valid result and must not be hidden.

## 11. Baseline

Where practical, compare the Carob coordination model with the same underlying tools operating without the Carob state/coordination layer.

Measure at minimum:

1. provenance completeness;
2. traceability from action to raw observation;
3. validation compliance;
4. cross-source integration success;
5. decision latency;
6. rate at which unvalidated AI hypotheses are prevented from directly triggering actions.

## 12. Success condition

E1 succeeds only if:

* the complete loop runs on real observations;
* every transition is auditable;
* AI hypotheses remain separated from validated knowledge;
* bounded policy/action safety is enforceable;
* at least one coordination metric improves versus baseline.

## 13. Falsification

The Carob Three thesis is falsified for E1 if:

* the loop cannot be completed with heterogeneous existing components;
* provenance cannot be maintained;
* AI output crosses the validation boundary;
* safe policy/action boundaries cannot be enforced;
* or the coordination model produces no meaningful measurable benefit over baseline.

A failed E1 is a valid research result.

## 14. Reproducibility

Freeze and record:

* hardware and sensor models;
* software versions;
* AI model/version;
* configuration;
* validation rules;
* timestamps and timezone;
* raw observations;
* derived records;
* validation decisions;
* actions and results.

Generated summaries must not replace the raw experimental record.

## 15. Out of scope

E1 must not require:

* a new blockchain;
* a token or NFT;
* a new consensus mechanism;
* a proprietary AI runtime;
* a new sensor protocol;
* a universal adapter;
* a general-purpose autonomous farm controller.

Any such component can only be justified later by a demonstrated capability gap.

## 16. First hypothesis to test

**H1:** Coordinating heterogeneous ecological observations through an explicit epistemic state machine can produce a more traceable and reproducible path from observation to bounded ecological action than the same tools used without that coordination layer.

## 17. First null hypothesis

**H0:** The Carob coordination layer provides no meaningful measurable benefit over the baseline combination of existing tools.

E1 should be designed to distinguish H1 from H0.
