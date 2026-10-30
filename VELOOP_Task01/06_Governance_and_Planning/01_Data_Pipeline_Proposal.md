# Data Pipeline Proposal

```mermaid
flowchart TD
 A[App / backend / partner callbacks] --> B[Ingestion]
 B --> C[Immutable raw layer]
 C --> D[Schema, ID, timestamp validation]
 D -->|valid| E[Transform, deduplicate, standardize]
 D -->|invalid| Q[Quarantine + issue log]
 E --> F[Curated analytical tables]
 F --> G[Semantic KPI layer]
 G --> H[BI dashboards / reports]
 Q --> J[Owner alert and remediation]
```

Start with scheduled batch exports if volume/latency allows; add streaming only when justified. Keep raw data immutable, transformations reproducible and metric logic version-controlled. Engineering owns producers; Data owns transformations and quality; Finance/Operations own transaction state reconciliation; BI owns semantic models and reporting. Monitor freshness, volume, schema drift, duplicate IDs, null required fields, orphan references and refresh failures.
