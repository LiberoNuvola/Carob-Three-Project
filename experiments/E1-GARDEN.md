# E1 — Garden Experimental Site

## 1. Purpose

This document defines the real-world garden used as the first experimental site for Carob Three E1.

The garden is not treated as a controlled laboratory.

The initial objective is to observe an existing small ecological system, preserve its relevant spontaneous processes, and determine whether Carob Three can coordinate heterogeneous observations into an auditable path from observation to validated knowledge and bounded action.

Carob Three does not need to own the sensors, AI system, database, identification system, or action mechanism.

## 2. Experimental principle

The garden should initially be changed as little as possible.

Spontaneous vegetation, decomposition, insects, fungi, and other organisms are observations rather than unwanted noise.

The experiment must not assume that a particular ecological relationship exists before evidence is collected.

In particular:

* presence does not prove interaction;
* correlation does not prove causation;
* AI identification is a hypothesis unless independently validated;
* AI confidence does not constitute validation;
* ecological observations may remain inconclusive.

## 3. Initial garden structure

The experimental site currently contains at least three potentially useful observation zones.

### Zone A — Mixed plant area

Approximate composition:

* rosemary;
* sage;
* asparagus;
* spontaneous nettle;
* spontaneous lamb's-quarters / Chenopodium-type plant, subject to identification.

The plants are already growing in proximity.

No assumption should be made that rosemary, sage, asparagus, nettle, or other plants positively or negatively affect one another.

The existing spatial arrangement is itself part of the observation record.

### Zone B — Citrus area

Approximate composition:

* mandarin;
* citron / cedar, species identification to be confirmed.

The citrus area is several metres from Zone A.

Zone B can initially function as a secondary observation area and possible environmental comparison.

It should not automatically be treated as a scientific control because the environmental conditions may differ from Zone A.

### Zone C — Organic-material area

An existing area is used to accumulate material produced by garden maintenance, including:

* grass clippings;
* pruning residues;
* leaves and other plant material where present.

This area may later be used as an experimental vegetable-garden area.

Initially it should be treated as an observation site for decomposition and biological activity rather than immediately reorganised.

Decaying garden material can support fungi, bacteria and numerous invertebrates, including worms, woodlice, springtails and beetles.

## 4. Three-zone model

The initial conceptual model is:

```text
                ZONE A
       rosemary + sage + asparagus
              + spontaneous plants
                     │
                     │
                     │ observations
                     ↓
                CAROB E1
                     ↑
                     │
                     │ comparison / context
                     │
                ZONE B
              mandarin + citron
                     
                     
                ZONE C
        organic material accumulation
                     │
                     │ decomposition
                     ↓
             soil / organisms
                     │
                     ↓
              possible future
                vegetable area
```

The zones are not assumed to be independent ecosystems.

Material, organisms, water, weather, and other processes may connect them.

## 5. Observation domains

E1 should initially monitor five broad domains.

### 5.1 Plants

Record, where practical:

* species or provisional identification;
* approximate location;
* visible growth;
* new shoots;
* flowering;
* fruiting;
* leaf condition;
* visible damage;
* visible stress;
* unusual changes;
* photographs.

### 5.2 Soil and physical environment

Record:

* soil moisture;
* rainfall when available;
* approximate temperature when available;
* exposure/light conditions;
* visible soil condition;
* surface organic material;
* approximate amount/type of organic material added.

A low-cost soil-moisture sensor may later provide quantitative time-series data.

The sensor is an instrument, not the experimental objective.

### 5.3 Invertebrates

Record visible organisms using photographs and simple functional categories when species identification is uncertain.

Possible categories include:

* ants;
* beetles;
* spiders;
* worms;
* woodlice;
* springtails;
* flies;
* caterpillars/larvae;
* other identifiable groups;
* unknown.

Where practical, observations should record:

* date;
* zone;
* approximate abundance;
* photograph;
* observation conditions.

The experiment should prefer non-lethal observation.

If pitfall trapping is eventually used, traps should be temporary and checked promptly rather than becoming permanent killing devices.

Soil organisms can be used as indicators of changes in soil biological communities, but E1 must not invent fixed biological thresholds such as "X organisms = healthy soil". Comparisons over time are more appropriate.

### 5.4 Fungi and decomposition

Record visible:

* fungal fruiting bodies;
* visible mycelium where observable;
* mould-like growth;
* changes in colour;
* structural breakdown of plant material;
* loss of volume;
* softening or fragmentation;
* colonisation by visible organisms.

Do not attempt to infer fungal species from appearance alone.

AI-based identification may generate a hypothesis requiring independent validation.

Saprotrophic fungi are expected components of decomposing plant material and contribute to the breakdown of dead organic matter.

### 5.5 Organic material

For every significant addition to Zone C, record:

* date;
* material type;
* approximate quantity;
* approximate condition;
* source within the garden;
* location;
* photograph.

Where practical, distinguish:

* fresh green material;
* dry leaves;
* woody pruning;
* mixed material.

Grass clippings and woody pruning have different characteristics and decomposition behaviour, so they should not automatically be treated as identical inputs.

## 6. Standard observation procedure

A basic observation should contain:

```text
observation_id
zone
timestamp
observer
source_type
source_id
observation
photograph_reference
environmental_context
quality_flag
```

The minimum useful observation can simply be:

```text
Zone A
2026-10-XX
photo
soil visibly moist
asparagus present
nettles present
3 visible spiders
no visible fungal fruiting bodies
```

The system should prefer recording uncertainty rather than inventing precision.

## 7. Photographic protocol

Photographs should be taken from approximately repeatable positions.

Where practical:

* use the same observation points;
* use similar distance;
* photograph the same physical areas;
* include a reference object or scale when useful;
* avoid disturbing the scene before the photograph;
* preserve original images.

Photographs are primary observations.

AI-generated descriptions or classifications are derived records and must remain linked to the original photograph.

## 8. Organic-material observation

Zone C should initially remain close to its existing state.

Do not immediately:

* sterilise the area;
* remove all spontaneous vegetation;
* add commercial fertiliser;
* introduce purchased organisms;
* introduce fungal cultures;
* artificially optimise decomposition.

The purpose is to observe the existing process.

If the material is later reorganised, the change must itself become an experimental event:

```text
event_id
date
material_changed
previous_condition
new_condition
reason
operator
```

## 9. Future vegetable-garden transition

Zone C may eventually become a vegetable-growing area.

This transition should be treated as a separate experimental phase.

Before planting, record a baseline.

The baseline should include:

* existing vegetation;
* organic material;
* soil observations;
* visible organisms;
* moisture;
* photographs;
* decomposition state.

After planting, observations should continue using the same principles.

The objective is not to prove that compost or organic residues are "good".

The objective is to observe whether measurable changes occur and whether hypotheses about those changes survive validation.

## 10. Ecological interaction hypotheses

Carob Three may generate hypotheses such as:

* soil moisture is associated with changes in spontaneous vegetation;
* organic-material accumulation is associated with increased decomposer activity;
* decomposition stage is associated with changes in visible invertebrate groups;
* changes in soil conditions are associated with plant growth;
* particular observations in Zone A are temporally associated with observations in Zone C;
* different zones exhibit different ecological trajectories.

These are hypotheses only.

No hypothesis becomes knowledge without explicit evidence and validation.

## 11. Validation boundary

The AI layer may:

* detect patterns;
* classify images;
* identify candidate organisms;
* suggest correlations;
* generate hypotheses;
* identify missing evidence.

The AI layer may not:

* declare ecological truth;
* automatically establish causality;
* authorize an intervention;
* modify the garden autonomously;
* convert confidence into validation.

Validation remains an explicit state transition defined by E1.

## 12. Action policy

The first E1 phases should use observation rather than autonomous intervention.

When an intervention is eventually introduced, it must be:

* bounded;
* reversible;
* explicitly authorized;
* linked to validated knowledge;
* recorded;
* followed by new observations.

Examples of possible future actions include:

* controlled irrigation;
* modification of surface organic-matter management;
* planting a defined area;
* changing the timing or quantity of an input.

The first action should be selected only after sufficient baseline data exist.

## 13. Biodiversity protection

The experimental process must not damage the ecosystem merely to obtain data.

Preferred methods are:

* photographic observation;
* direct visual observation;
* temporary non-lethal sampling;
* minimal soil disturbance;
* minimal plant disturbance.

The experiment should avoid introducing organisms, chemicals, or biological agents solely to create a desired result.

## 14. Data model

All observations should eventually map to the E1 state model:

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
Policy
    ↓
Action
    ↓
New Observation
```

Zone, organism, plant, material, photograph and sensor data are all potential observation sources.

## 15. Initial instrumentation

E1 should begin with the lowest-cost instrumentation that provides useful additional information.

Initial candidate instrumentation:

1. existing smartphone;
2. one soil-moisture sensor;
3. optional ESP32 or equivalent low-cost acquisition device.

Additional sensors should only be added when a demonstrated information gap justifies them.

Possible future additions include:

* air temperature;
* relative humidity;
* light;
* soil temperature;
* additional soil measurements;
* automated image acquisition.

No sensor should be added merely because it is available.

## 16. Baseline period

Before introducing a major intervention, collect a baseline.

The baseline should establish:

* current plant composition;
* spontaneous vegetation;
* visible biodiversity;
* organic-material condition;
* soil moisture;
* photographs;
* weather/context where available.

The baseline duration should be determined by practical observation frequency and seasonal conditions rather than an arbitrary claim of statistical sufficiency.

## 17. Research questions

Initial questions include:

### Q1

Can heterogeneous observations from a small garden be represented in a common auditable state model?

### Q2

Can AI-generated ecological hypotheses remain clearly separated from validated knowledge?

### Q3

Can spontaneous biodiversity and decomposition be incorporated as first-class observations rather than discarded as noise?

### Q4

Can organic-material inputs and subsequent ecological changes be traced over time?

### Q5

Can the system eventually produce a bounded ecological action whose rationale can be traced back to validated observations?

### Q6

Does this coordination produce measurable value compared with using the same underlying tools without the Carob coordination model?

## 18. Falsification

The garden experiment does not exist to prove Carob Three correct.

The thesis should be weakened or falsified if:

* observations cannot be maintained with adequate provenance;
* heterogeneous observations cannot be integrated;
* AI hypotheses repeatedly cross the validation boundary;
* ecological relationships cannot be distinguished from unsupported speculation;
* the coordination layer adds no measurable value;
* the experiment requires Carob to replace existing tools rather than coordinate them;
* the resulting complexity is greater than the practical value obtained.

A negative result is a valid E1 outcome.

## 19. Scope boundary

This experiment does not require:

* a new blockchain;
* a token;
* NFTs;
* consensus;
* a proprietary AI model;
* a proprietary sensor protocol;
* a universal adapter;
* autonomous agricultural machinery;
* IMMORTAL-specific implementation.

Carob Three remains the ecological research/application layer.

Any interaction with IMMORTAL, if eventually justified, must occur through an external capability/policy boundary without embedding IMMORTAL domain logic into Carob Three.

## 20. Experimental philosophy

The garden is not a demonstration designed to make Carob Three look successful.

It is a living falsification environment.

The system should be allowed to conclude:

```text
supported
rejected
inconclusive
needs more evidence
```

The correct output is whatever the evidence supports.

The purpose of E1 is to determine whether the Carob Three functional machine provides a useful coordination layer for real ecological observation, validation and bounded action.
