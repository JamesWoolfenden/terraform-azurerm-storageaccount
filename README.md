# terraform-azurerm-storageaccount

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-storageaccount.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-storageaccount.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-storageaccount/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-storageaccount&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-storageaccount/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-storageaccount&benchmark=INFRASTRUCTURE+SECURITY)

DNS in Azure, a WIP.

```terraform
module "storage" {
  source                   = "JamesWoolfenden/storageaccount/azurerm"
  version                  = "0.2.0"
  common_tags              = var.common_tags
}
```

This module implements the common_tags scheme.   In the the example implementation **examplea.auto.tfvars** you'll find a basic map described:

```HCL
common_tags = {
  environment = "Production"
}
```

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) |
| [azurerm_storage_account_network_rules](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account_network_rules) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_tier | Can only be Hot or Cool | `string` | `"Hot"` | no |
| account\_kind | Defines the Kind of account. | `string` | `"StorageV2"` | no |
| account\_name | Storage account name | `string` | n/a | yes |
| account\_replication\_type | Defines the type of replication to use for this storage account | `string` | `"LRS"` | no |
| account\_tier | (optional) describe your variable | `string` | `"Standard"` | no |
| allow\_blob\_public\_access | Allow or disallow public access to all blobs or containers in the storage account. | `bool` | `false` | no |
| blobs | n/a | `list` | `[]` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| custom\_domain | n/a | `list` | `[]` | no |
| default\_action | describe your variable | `string` | `"Deny"` | no |
| enable\_https\_traffic\_only | Boolean flag which forces HTTPS if enabled | `bool` | `true` | no |
| is\_hns\_enabled | Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 | `bool` | `false` | no |
| large\_file\_share\_enabled | n/a | `bool` | `false` | no |
| network\_rules | n/a | `list` | `[]` | no |
| queue\_properties | n/a | `list` | `[]` | no |
| resource\_group | Resource group name | `any` | n/a | yes |
| static\_website | n/a | `map` | <pre>{<br>  "error_404_document": "404.html",<br>  "index_document": "index.html"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| storage | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-storageaccount&url=https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-storageaccount&url=https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount
[share_email]: mailto:?subject=terraform-azurerm-storageaccount&body=https://github.com/JamesWoolfenden/terraform-azurerm-storageaccount
