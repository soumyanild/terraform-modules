output "dev_public_1_id" {
  description = "Public Subnet 1 id"
  value       = "${aws_subnet.dev-public-1.id}"
}
output "dev_public_1_id" {
  description = "Public Subnet 2 id"
  value       = "${aws_subnet.dev-public-2.id}"
}
output "dev_private_1_id" {
  description = "Private Subnet 1 id"
  value       = "${aws_subnet.dev-private-1.id}"
}
output "dev_private_2_id" {
  description = "Private Subnet 2 id"
  value       = "${aws_subnet.dev-private-2.id}"
}
