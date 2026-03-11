# Runbook — Greyfield Industries IT Operations

**Owner:** JP Pesantes · Los Angeles, CA · [github.com/jpierr](https://github.com/jpierr) · [linkedin.com/in/jpierr](https://linkedin.com/in/jpierr)
**Domain:** `greyfield.lab`
**Environment:** On-premises hybrid Active Directory + Azure AD + M365

---

## Overview

This repository is the operational record and tooling base for Greyfield Industries' enterprise IT environment. It covers infrastructure configuration, incident documentation, runbooks, automation scripts, chaos engineering outcomes, and organizational management across a hybrid Windows/Linux footprint with cloud identity integration.

---

## Infrastructure

| Host | OS | Role | IP |
|------|----|------|----|
| DC01 | Windows Server 2022 | Primary Domain Controller, DNS, DHCP, AD DS | 192.168.10.10 |
| SRV01 | Windows Server 2022 | File Server, DFS, Print Services | 192.168.10.20 |
| LNX01 | Ubuntu 24.04 LTS | Utility, Monitoring, Syslog Aggregation | 192.168.10.30 |

**Domain:** `greyfield.lab`
**Azure Tenant:** Greyfield Industries (hybrid-synced via Azure AD Connect)
**M365 Plan:** Microsoft 365 Business Premium

---

## Users

15 users across three departments. All accounts provisioned in on-prem AD and synced to Azure AD.

| # | Username | Display Name | Department | Role |
|---|----------|--------------|------------|------|
| 01 | jcarter | John Carter | IT | Systems Administrator |
| 02 | smendez | Sara Mendez | IT | Network Engineer |
| 03 | mtorres | Mike Torres | IT | Help Desk Technician |
| 04 | lpark | Lisa Park | IT | Security Analyst |
| 05 | dreyes | David Reyes | IT | Junior Sysadmin |
| 06 | achen | Amy Chen | Finance | Controller |
| 07 | bsingh | Bob Singh | Finance | Accounts Payable |
| 08 | cwhite | Carol White | Finance | Financial Analyst |
| 09 | dfoster | Dan Foster | Finance | Payroll Specialist |
| 10 | anguyen | Eva Nguyen | Finance | Accounts Receivable |
| 11 | fdiaz | Frank Diaz | Operations | Operations Manager |
| 12 | gkim | Grace Kim | Operations | Logistics Coordinator |
| 13 | hpatel | Henry Patel | Operations | Field Technician |
| 14 | igomez | Irene Gomez | Operations | Procurement Specialist |
| 15 | jwu | James Wu | Operations | Inventory Analyst |

---

## Departments

| Department | OU Path | Head Count |
|------------|---------|------------|
| IT | `OU=IT,DC=greyfield,DC=lab` | 5 |
| Finance | `OU=Finance,DC=greyfield,DC=lab` | 5 |
| Operations | `OU=Operations,DC=greyfield,DC=lab` | 5 |

---

## Repository Structure

```
.
├── infrastructure/
│   ├── dc01/          # DC01 config, GPOs, AD exports
│   ├── srv01/         # SRV01 config, share definitions, DFS
│   └── lnx01/         # LNX01 config, monitoring stack, cron jobs
├── incidents/         # Incident reports (INC-YYYY-NNN format)
├── runbooks/          # Step-by-step operational procedures
├── automation/        # PowerShell and Python automation scripts
├── chaos-drills/      # Chaos engineering scenarios and outcomes
├── reports/
│   └── weekly/        # Weekly ops reports
└── org/
    ├── users/         # User provisioning records
    └── departments/   # Department policy and group definitions
```

---

## Skills Demonstrated

| Domain | Technologies |
|--------|-------------|
| Active Directory | AD DS, GPO, OU design, FSMO roles, replication |
| Identity & Hybrid Sync | Azure AD Connect, SSO, Conditional Access |
| M365 Administration | Exchange Online, SharePoint, Teams, Intune |
| Endpoint Management | Intune MDM/MAM, Autopilot, compliance policies |
| Incident Response | Detection, triage, containment, post-incident review |
| Automation | PowerShell (AD, M365, Azure), Python (reporting, APIs) |
| Monitoring | Grafana, Prometheus, syslog, alerting pipelines |
| Chaos Engineering | Controlled failure injection, recovery validation |

---

## Incident Log

| ID | Date | Severity | Title | Status | Runbook Used |
|----|------|----------|-------|--------|--------------|
| INC-2026-001 | 2026-03-07 | High | Phishing — bsingh account compromised | Resolved | — |
| INC-2026-002 | 2026-03-08 | Medium | Account lockout — bsingh | Resolved | — |

> Incidents are documented under `incidents/` using the format `INC-YYYY-NNN.md`.

---

## Runbooks Index

| ID | Title | Scope | Last Updated |
|----|-------|-------|--------------|
| — | — | — | — |

> Runbooks live under `runbooks/` using the format `RB-NNN-<slug>.md`.

---

## Automation Scripts Index

| Script | Language | Purpose | Location |
|--------|----------|---------|----------|
| Get-StaleAccounts.ps1 | PowerShell | Weekly stale account report | automation/ |

> All automation lives under `automation/`. PowerShell scripts target Windows Server and M365. Python scripts handle reporting and cross-platform tasks.

---

## Chaos Drills Log

| ID | Date | Scenario | Target | Outcome | Lessons Captured |
|----|------|----------|--------|---------|-----------------|
| — | — | — | — | — | — |

> Chaos drill reports live under `chaos-drills/` using the format `CD-YYYY-NNN.md`.

---

## Weekly Reports

Operational summaries are filed under `reports/weekly/` using the format `YYYY-WNN.md`.

---

## Contact

**JP Pesantes**
Los Angeles, CA
[github.com/jpierr](https://github.com/jpierr)
[linkedin.com/in/jpierr](https://linkedin.com/in/jpierr)
Domain: `greyfield.lab`