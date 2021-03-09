# AWS Statics Layer Terraform module

Terraform module which creates an entire layer (i.e. module to be contained in its own tfstate).
It manage an statics on AWS.

## Usage

```hcl
module "main" {
  source     = "genstackio/layer-statics/aws"

  // ...
}
```
