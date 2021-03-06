########################################################
# Organization
########################################################
organizations_shared_account_id = ""
organizations_dev_account_id    = ""
organizations_stg_account_id    = ""
organizations_prod_account_id   = ""
organizations_ou_web_id         = ""

########################################################
# Global
########################################################
vpc_tags            = {}
vpc_resource_prefix = "vpc"
common_tags = {
  Terraform = "true",
  Team      = "web"
}
dhcp_options_tags                              = {}
dhcp_options_resource_prefix                   = "dpo"
subnet_resource_prefix                         = "sbn"
edge_subnet_tags                               = {}
edge_subnet_tier_name                          = "edge"
private_subnet_tags                            = {}
private_subnet_tier_name                       = "private"
eks_cluster_resource_prefix                    = "eks"
eks_cluster_tier_name                          = "master"
data_subnet_tags                               = {}
data_subnet_tier_name                          = "data"
db_subnet_group_resource_prefix                = "sng"
db_subnet_group_tags                           = {}
default_network_acl_tags                       = {}
network_acl_resource_prefix                    = "nacl"
default_network_acl_tier_name                  = "default"
edge_network_acl_tags                          = {}
private_network_acl_tags                       = {}
data_network_acl_tags                          = {}
internet_gateway_tags                          = {}
internet_gateway_resource_prefix               = "igw"
eip_tags                                       = {}
nat_eip_resource_prefix                        = "eip"
nat_eip_tier_name                              = "edge"
nat_gateway_tags                               = {}
nat_gateway_resource_prefix                    = "ngw"
route_table_tags                               = {}
route_table_resource_prefix                    = "rtb"
transit_gateway_tags                           = {}
transit_gateway_resource_prefix                = "tgw"
transit_gateway_vpc_attachment_tags            = {}
transit_gateway_vpc_attachment_resource_prefix = "tga"
transit_gateway_route_table_tags               = {}
transit_gateway_route_table_resource_prefix    = "tgr"
ram_resource_share_tags                        = {}
ram_resource_share_resource_prefix             = "ram"

########################################################
# Shared Account Network
########################################################
shared_account_environment_name                 = "shared"
shared_account_cidr_block                       = "10.10.0.0/16"
shared_account_enable_dns_support               = true
shared_account_enable_dns_hostnames             = true
shared_account_enable_dhcp_options              = false
shared_account_dhcp_options_domain_name         = ""
shared_account_dhcp_options_domain_name_servers = []
shared_account_dhcp_options_ntp_servers         = []
shared_account_edge_subnets                     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
shared_account_private_subnets                  = ["10.10.11.0/24", "10.10.12.0/24", "10.10.13.0/24"]
shared_account_data_subnets                     = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]
shared_account_default_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_default_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_edge_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_edge_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_private_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_private_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_data_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
shared_account_data_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]

########################################################
# Development Account Network
########################################################
dev_account_environment_name                 = "dev"
dev_account_cidr_block                       = "10.0.0.0/16"
dev_account_enable_dns_support               = true
dev_account_enable_dns_hostnames             = true
dev_account_enable_dhcp_options              = false
dev_account_dhcp_options_domain_name         = ""
dev_account_dhcp_options_domain_name_servers = []
dev_account_dhcp_options_ntp_servers         = []
dev_account_edge_subnets                     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
dev_account_private_subnets                  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
dev_account_data_subnets                     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
dev_account_default_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_default_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_edge_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_edge_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_private_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_private_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_data_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
dev_account_data_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]

########################################################
# Staging Account Network
########################################################
stg_account_environment_name                 = "stg"
stg_account_cidr_block                       = "10.1.0.0/16"
stg_account_enable_dns_support               = true
stg_account_enable_dns_hostnames             = true
stg_account_enable_dhcp_options              = false
stg_account_dhcp_options_domain_name         = ""
stg_account_dhcp_options_domain_name_servers = []
stg_account_dhcp_options_ntp_servers         = []
stg_account_edge_subnets                     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
stg_account_private_subnets                  = ["10.1.11.0/24", "10.1.12.0/24", "10.1.13.0/24"]
stg_account_data_subnets                     = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
stg_account_default_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_default_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_edge_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_edge_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_private_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_private_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_data_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
stg_account_data_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]

########################################################
# Production Account Network
########################################################
prod_account_environment_name                 = "prod"
prod_account_cidr_block                       = "10.2.0.0/16"
prod_account_enable_dns_support               = true
prod_account_enable_dns_hostnames             = true
prod_account_enable_dhcp_options              = false
prod_account_dhcp_options_domain_name         = ""
prod_account_dhcp_options_domain_name_servers = []
prod_account_dhcp_options_ntp_servers         = []
prod_account_edge_subnets                     = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
prod_account_private_subnets                  = ["10.2.11.0/24", "10.2.12.0/24", "10.2.13.0/24"]
prod_account_data_subnets                     = ["10.2.101.0/24", "10.2.102.0/24", "10.2.103.0/24"]
prod_account_default_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_default_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_edge_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_edge_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_private_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_private_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_data_network_acl_ingress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]
prod_account_data_network_acl_egress_rules = [
  {
    rule_no    = 100
    action     = "allow"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  },
]

########################################################
# Shared Account Transit Gateway
########################################################
shared_account_share_transit_gateway = true
