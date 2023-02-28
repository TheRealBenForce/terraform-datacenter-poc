output "hosted_zone_id" {
  description = "Hosted zone ID"
  value       = aws_route53_zone.terraform_subzone.zone_id
}

output "tf_subzone_name" {
  description = "Subzone where all teraform infrastructure created by pipeline will go"
  value       = aws_route53_zone.terraform_subzone.name
}