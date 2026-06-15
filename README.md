# Terraform-demo

Terraform demo repository for creating AWS services using Infrastructure as Code.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.3+ recommended)
- AWS account and IAM user/role with permissions to create required resources
- AWS credentials configured locally (`aws configure` or environment variables)

## Usage

From the repository root:

```bash
terraform init
terraform plan
terraform apply
```

To remove created resources:

```bash
terraform destroy
```

## Notes

- Review planned changes before applying.
- Avoid committing sensitive values (access keys, secrets, tfstate with secrets).
