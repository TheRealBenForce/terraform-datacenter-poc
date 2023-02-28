output "hosted_zone_id" {
  description = "Hosted zone ID"
  value       = terraform_subzone.zone_id
}

output "tf_subzone_name" {
  description = "Subzone where all teraform infrastructure created by pipeline will go"
  value       = terraform_subzone.name
}