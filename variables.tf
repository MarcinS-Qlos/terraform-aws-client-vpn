variable "name" {
  type          = string
  default       = null
  description   = "Client VPN name"
}

variable "description" {
  type          = string
  default       = null
  description   = "Client VPN description"
}

variable "server_certificate_arn" {
  type          = string
  default       = null
  description   = "ARN of the AWS Certificate Manager (ACM) server certificate"
}

variable "client_cidr_block" {
  type          = string
  default       = null
  description   = ""
}

variable "client_connect_options_enabled" {
  type          = string
  default       = null
  description   = ""
}

variable "client_connect_options_lambda_function_arn" {
  type          = string
  default       = null
  description   = ""
}

variable "client_login_banner_options_banner_text" {
  type          = string
  default       = null
  description   = ""
}

variable "client_login_banner_options_enabled" {
  type          = string
  default       = null
  description   = ""
}

variable "dns_servers" {
  type          = list(string)
  default       = []
  description   = ""
}

variable "security_group_ids" {
  type          = list(string)
  default       = []
  description   = "IDs of associated security groups"
}

variable "self_service_portal" {
  type          = string
  default       = null
  description   = ""
}

variable "session_timeout_hours" {
  type          = string
  default       = 24
  description   = "Maximum session duration. Valid values are: 8,10,12 or 24"
}

variable "split_tunnel" {
  type          = bool
  default       = false
  description   = "If true, enables split tunnel"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource."
}

variable "transport_protocol" {
  type          = string
  default       = null
  description   = "Protocol used to connect. Can be tcp or udp. AWS default is udp" 
}

variable "vpc_id" {
  type          = string
  default       = null
  description   = "ID of the VPC where VPN is created"
}

variable "vpn_port" {
  type          = string
  default       = 443
  description   = "Port used to VPN connection. Can be 443 or 1194"
}

variable "authentication_options_type" {
  type          = string
  default       = null
  description   = "Required variable. Specify authentication type. Valid values are: certificate-authentication, directory-service-authentication or federated-authentication"
}

variable "authentication_options_active_directory_id" {
  type          = string
  default       = null
  description   = "ID of Active Directory used for authentication. Used if authentication type is set to directory-service-authentication"
}

variable "authentication_options_root_certificate_chain_arn" {
  type          = string
  default       = null
  description   = "ARN of the cert used on client side, cert must be stored in AWS Certificate Manager (ACM). Used if authentication type is set to certificate-authentication"
}

variable "authentication_options_saml_provider_arn" {
  type          = string
  default       = null
  description   = "ARN of the IAM SAML identity provider. Used if authentication type is set to federated-authentication"
}

variable "authentication_options_self_service_saml_provider_arn" {
  type          = string
  default       = null
  description   = "ARN of the IAM SAML identity provider for the self service portal. Used if authentication type is set to federated-authentication"
}

variable "connection_log_options_enabled" {
  type          = bool
  default       = false
  description   = ""
}

variable "connection_log_options_cloudwatch_log_group" {
  type          = string
  default       = null
  description   = ""
}

variable "connection_log_options_cloudwatch_log_stream" {
  type          = string
  default       = null
  description   = ""
}

variable "target_network_cidr" {
  type          = string
  default       = null
  description   = ""
}

variable "authorize_all_groups" {
  type          = bool
  default       = false
  description   = ""
}

variable "access_group_id" {
  type          = string
  default       = null
  description   = ""
}

variable "authorization_rule_description" {
  type          = string
  default       = null
  description   = ""
}

variable "subnet_id" {
  type          = string
  default       = null
  description   = ""
}

variable "destination_cidr_block" {
  type          = string
  default       = null
  description   = ""
}

variable "route_description" {
  type          = string
  default       = null
  description   = ""
}