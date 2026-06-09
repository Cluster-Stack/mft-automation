# MFT Automation

CI/CD automation workflows and deployment templates for Managed File Transfer (MFT) platforms using GitHub Actions, Azure, Kubernetes, Helm, and enterprise integration automation practices.

---

## Features

- Azure OIDC Authentication
- Azure Key Vault Integration
- AKS Deployment Automation
- ConfigMap Management
- Helm-based MFT Agent Deployment
- Kubernetes Namespace Automation
- GitHub Actions CI/CD Workflows
- Shell Script Deployment Automation

---

## Repository Structure

```text
mft-automation/
│
├── .github/workflows/
│   └── mft_Instantiate.yml
│
├── scripts/
│   └── deploy-agent.sh
│
├── helm/
│   └── mft-agent/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│
├── config/
│   └── mft-agent-01/
│       └── agent.properties
│
└── README.md
