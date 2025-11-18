How will the system be built?

1. Design drivers
 - Which requirements/quality attributes most strongly shape the architecture?
 - What are the key constraints from the organisation, tech stack, and infrastructure?
 - What trade-offs are intentionally accepted (e.g. latency vs strict “live” data)?

2. Architectural overview
 -What architectural style are we using (monolith, modular monolith, microservices, event-driven, etc.)?
 -Why is this style appropriate given the drivers above?
 -What are the main building blocks (modules/services) at a high level?

3. System context
 - How does this system sit in the wider ecosystem?
 - Which external systems does it interact with, and in which directions?
 - What are the trust boundaries (internal vs external vs third party)?

4. Decomposition (modules / components)
 -How is the system split into modules/components?
 -What responsibilities does each component have?
 -How do components communicate (sync/async, protocols, contracts)?
 -How do we avoid tight coupling and ensure change isolation?

5. Data design
 - What is the high-level data model (key tables/entities, relationships)?
 - How are multitenancy / client isolation implemented in the data layer?
 - How are configuration and versioning represented and stored?
 - How are secrets referenced (not stored) in the data model?

6. API and integration design
 - What are the public APIs (for clients, dashboards, partners)?
 - What are the internal APIs (between components, if any)?
 - How is API-first implemented (OpenAPI, schema versioning, backward compatibility)?
 - How is integration with HMS (e.g. SIHOT) structured and abstracted for future HMS connectors?

7. Security design
 - How are AuthN/AuthZ flows implemented (OAuth2, OIDC, API keys)?
 - How are roles/permissions modelled?
 - How is transport security enforced (HTTPS, TLS config)?
 - How are secrets managed in practice (e.g. Vault, key rotation patterns)?

8. Error handling, resilience, and reliability
 - How do we handle upstream HMS failures, timeouts, and slow responses?
 - Are there retries, circuit breakers, fallbacks?
 - What happens when parts of the system are degraded?
 - How do we prevent data corruption or inconsistent states?

9. Performance and scalability mechanisms
 - How will we meet performance targets (e.g. 95% under 200 ms)?
 - How do we scale horizontally (statelessness, DB scaling approach)?
 - Are there known bottlenecks and how are they addressed?
 - Are caching, batching, or other performance patterns used or explicitly avoided?

10. Deployment and environments
 - How is the system packaged (Docker images, container structure)?
 - What is the deployment topology in each environment (staging, production)?
 - How do we handle configuration per environment and per client?
 - What is the rollback strategy (blue/green, canary, version pinning)?

11. Observability (logging, metrics, tracing)
 -What logs are produced (app, security, audit, integration)?
 -What metrics are collected (latency, errors, throughput, resource usage)?
 -How do Prometheus/Grafana fit into the architecture?
 -Is distributed tracing used, and if so, how?

12. Testing and quality strategy (from a design point of view)
 - What types of tests are expected (unit, integration, contract, end-to-end)?
 - How do we test integration with external HMS systems (stubs, sandboxes)?
 - How does the architecture support testability (clear boundaries, test hooks)?

13. Evolution and extensibility
 - How will we add support for new HMS vendors later?
 - How can the monolith be split into services if needed?
 - What parts of the design are intentionally kept stable vs allowed to change?

14. Risks, trade-offs, and open questions
 - What are the major architectural risks?
 - What trade-offs were consciously made (and why)?
 - What open questions remain that might change the design later?
