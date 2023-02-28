output "hosted_zone_id" {
  description = "Hosted zone ID"
  value       = data.aws_route53_zone.selected.zone_id
}