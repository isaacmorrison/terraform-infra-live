# terraform-infra-live

A DRY (Don't Repeat Yourself) Terraform repository for Azure infrastructure, leveraging symlinks to maximize reuse and minimize duplication across environments. This repo is designed for DevOps teams who want scalable, maintainable, and modular Infrastructure as Code with minimal configuration overhead.

## Key Concepts

- **Symlinked Environment Folders**: Instead of copying configuration files for each environment (dev, prod, sand, etc.), we use symbolic links to point environment folders to a single canonical set of Terraform files.
- **Single Source of Truth**: All core logic (main.tf, variables, modules) lives in one place. Environment-specific values are provided via `.auto.tfvars` files.
- **DRY Structure**: No duplicated code. All environments reference the same Terraform files, ensuring consistency and easy updates.

## Repository Structure

```
terraform-infra-live/
├── blob/
│   ├── default/           # Canonical Terraform files (main.tf, variables.tf, outputs.tf)
│   ├── sand/              # Symlinked to default/
│   ├── prod/              # Symlinked to default/
│   ├── dev/               # Symlinked to default/
│   └── ...
```

## How to Create Symlinks

To set up a new environment folder (e.g., sand, prod, dev) as a symlink to the default configuration:

```bash
cd terraform-infra-live/blob
ln -s default sand
ln -s default prod
ln -s default dev
```

This creates symlinks so that `blob/sand`, `blob/prod`, and `blob/dev` all reference the files in `blob/default`.

## How to Use

1. **Clone the repository**:
   ```bash
   git clone git@github.com-isaacmorrison:isaacmorrison/terraform-infra-live.git
   cd terraform-infra-live/blob
   ```
2. **Create symlinks for environments** (if not already present):
   ```bash
   ln -s default sand
   ln -s default prod
   ln -s default dev
   ```
3. **Add environment-specific `.auto.tfvars` files** in each environment folder (e.g., `blob/sand/sand.auto.tfvars`). These files contain values unique to that environment.
4. **Deploy**:
   - Set your working directory to the desired environment folder (e.g., `blob/sand`)
   - Run Terraform commands:
     ```bash
     terraform init
     terraform plan -var-file=sand.auto.tfvars
     terraform apply -var-file=sand.auto.tfvars
     ```

## Deployment Context

- All environments share the same Terraform logic, modules, and structure.
- Only the `.auto.tfvars` files differ, providing environment-specific values.
- Symlinks ensure that updates to the default configuration are instantly reflected in all environments.
- This approach is ideal for teams managing multiple environments with identical infrastructure requirements.

## Example: Adding a New Environment

To add a new environment (e.g., qa):

```bash
cd terraform-infra-live/blob
ln -s default qa
cp sand/sand.auto.tfvars qa/qa.auto.tfvars  # Edit values as needed
```

## Security & Best Practices

- Store secrets in Azure Key Vault or use secure variables.
- Use managed identities and RBAC for resource access.
- Keep `.auto.tfvars` files out of version control if they contain sensitive data.
