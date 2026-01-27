# Terraform Cloud Foundation ☁️

A **production-style Terraform project** that demonstrates how to design, build, and operate scalable AWS infrastructure using **modular Terraform**, **remote state**, and **GitHub Actions CI/CD**.

This repository is built incrementally using a **day-by-day contribution approach**, making it ideal both as a learning journey and as a **portfolio-grade DevOps project**.

---

## 🚀 Project Goals

- Build real-world AWS infrastructure using Terraform
- Follow production best practices (state, locking, CI/CD, approvals)
- Keep the project **incrementally extensible**
- Demonstrate DevOps maturity to recruiters and reviewers

---

## 🏗️ Architecture Overview

**Core components:**

- VPC with public subnets
- EC2 instances launched via Launch Template
- Auto Scaling Group (ASG)
- Application Load Balancer (ALB)
- CloudWatch logging from EC2
- Remote Terraform backend (S3 + DynamoDB)
- Multi-environment setup (dev / stage / prod)
- GitHub Actions CI & CD
- AWS Budget & cost alerts (prod only)

```
Internet
   ↓
Application Load Balancer
   ↓
Auto Scaling Group
   ↓
EC2 Instances
   ↓
CloudWatch Logs
```

---

## 📁 Repository Structure

```
.
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── autoscaling/
│   ├── alb/
│   └── budget/
│
├── environments/
│   ├── dev/
│   ├── stage/
│   └── prod/
│
├── .github/
│   └── workflows/
│       ├── terraform-ci.yml
│       └── terraform-apply.yml
│
└── README.md
```

---

## 🌍 Environments

This project supports **multiple isolated environments**, each with its own state and configuration:

| Environment | Purpose | State Isolation | Approval Required |
|------------|--------|----------------|------------------|
| dev | Development & testing | ✅ | ❌ |
| stage | Pre-production | ✅ | ✅ |
| prod | Production | ✅ | ✅ |

Each environment:
- Uses the same Terraform modules
- Has its own backend state file
- Can scale independently

---

## 🗄️ Terraform Remote Backend

Terraform state is stored remotely using:

- **S3** – state storage
- **DynamoDB** – state locking

This ensures:
- Safe collaboration
- No local state drift
- Protection against concurrent applies

---

## 🔁 CI/CD with GitHub Actions

### Terraform CI (`terraform-ci.yml`)
Runs automatically on every push / PR:
- `terraform fmt`
- `terraform validate`
- `terraform plan`

### Terraform Apply (`terraform-apply.yml`)
- Manual trigger (`workflow_dispatch`)
- Environment-based approval gates
- Secure AWS credentials via GitHub Secrets

This mirrors **enterprise infrastructure pipelines**.

---

## 📊 Observability & Logging

- EC2 instances ship logs to **CloudWatch Logs** via user data
- CloudWatch Agent installed automatically on boot
- Logs grouped per environment

Example log group:
```
/personal-cloud/prod/app
```

---

## 💰 Cost Management

Production environment includes:

- AWS monthly budget
- Email alerts at 80% and 100% usage
- Terraform-managed budget configuration

This enforces **financial governance** and prevents surprises.

---

## 🧠 What This Project Demonstrates

- Modular Terraform design
- Multi-environment infrastructure
- Remote state & locking
- Auto scaling & load balancing
- Infrastructure CI/CD
- Manual approval workflows
- Cost controls & governance

This is **not a demo project** — it reflects how real teams operate Terraform in production.

---

## 📅 Incremental Build Log

- **Day 1–3**: Project structure, remote backend, state locking
- **Day 4**: EC2 module & Launch Template
- **Day 5–6**: Auto Scaling Group + Application Load Balancer
- **Day 7**: IAM roles & policies
- **Day 8**: CloudWatch logging from EC2
- **Day 9**: Terraform CI with GitHub Actions
- **Day 10**: Manual Terraform apply with approvals
- **Day 11**: Multi-environment support (dev/stage/prod)
- **Day 12**: AWS budgets & cost alerts

➡️ **Day 13 coming next: Security scanning (tfsec / Checkov)**

---

## 🛣️ Roadmap (Planned)

- [ ] Terraform security scanning
- [ ] Terraform docs automation
- [ ] Blue/Green deployments
- [ ] Monitoring dashboards
- [ ] Disaster recovery patterns

---

## 🤝 Contributions

This repository is intentionally designed to grow daily.

Feel free to fork, learn, or adapt patterns — feedback is welcome.

---

## 👤 Author

**Sujan Bhusal**  
DevOps / Cloud Engineer  

---

⭐ If this project helped you or inspired your own Terraform journey, consider starring the repo.

