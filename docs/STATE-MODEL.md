# Carob Three 2026 — State Model

## Purpose

This document defines the minimum functional state machine required to test the Carob Three thesis.

It is intentionally domain-level. It does not define a blockchain implementation, AI implementation, sensor protocol, or execution runtime.

## Core states

1. Observation — raw observation from a person, sensor, instrument, or external system.
2. Hypothesis — AI or human interpretation proposing a possible relationship or ecological meaning.
3. Evidence — observations, analyses, controls, replications, or external sources supporting or contradicting a hypothesis.
4. Validation — explicit evaluation of a hypothesis and its evidence.
5. Knowledge — validated, traceable statement derived from a hypothesis and its evidence.
6. Policy — operational rule derived from accepted knowledge.
7. Action — bounded intervention performed by a human or machine.

## Transition

Observation -> Hypothesis -> Evidence -> Validation

Validation outcomes:

- accepted -> Knowledge -> Policy -> Action -> Observation
- rejected -> stop/reject
- inconclusive -> collect more evidence
- needs-more-evidence -> collect more evidence

Every action produces new observations, closing the loop.

## Trust boundaries

- Ecological world: source of phenomena; Carob Three does not determine physical truth.
- Observation layer: humans and sensors can be noisy, biased, incomplete, spoofed, or faulty.
- Interpretation layer: AI and analysts generate hypotheses; they are not authoritative.
- Validation layer: explicit rules and declared authority evaluate evidence.
- Knowledge layer: preserves provenance and validation history; it does not manufacture certainty.
- Policy layer: separates validated knowledge from authorization to act.
- Execution layer: external systems perform actions; results must be observed, not assumed.

## Failure semantics

Failure must remain visible.

Examples:

- invalid observation -> reject/quarantine;
- missing provenance -> not eligible for validation;
- insufficient evidence -> unresolved hypothesis;
- contradictory evidence -> reject or reopen hypothesis;
- failed validation -> no accepted knowledge;
- invalidated knowledge -> dependent policy becomes reviewable/suspendable;
- unsafe execution condition -> block action;
- execution failure -> record failure and generate new observations.

## Minimum falsifiable thesis

The first experiment should test:

observation -> hypothesis -> evidence -> explicit validation -> knowledge -> bounded policy -> observable action -> new observation

The loop must work using heterogeneous existing components without requiring Carob Three to replace the sensor, AI, provenance, blockchain, governance, or execution systems.

The thesis is falsified if the complete loop provides no meaningful capability beyond what the selected component systems already provide independently.

## Design principle

**Carob Three coordinates the loop and its epistemic controls; it does not need to own every component.**
