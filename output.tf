# --- FASE 0: Recursos existentes (VPC + 1a) ---
output "vpc_id" {
  value = aws_vpc.clc_vpc.id
}

output "igw_id" {
  value = aws_internet_gateway.gw_clc_vpc.id
}

output "public_rt_id" {
  value = aws_route_table.public_rt.id
}

output "public_subnet_1a_id" {
  value = aws_subnet.public_subnet_1a.id
}

output "private_subnet_1a_id" {
  value = aws_subnet.private_subnet_1a.id
}

output "public_rt_assoc_1a_id" {
  value = aws_route_table_association.rt_pub_association_subnet_1a.id
}

output "private_rt_1a_id" {
  description = "ID of the private route table for 1a"
  value       = aws_route_table.private_rt_1a.id
}

output "private_rt_assoc_1a_id" {
  value = aws_route_table_association.rt_priv_association_subnet_1a.id
}

output "eip_1a_id" {
  value = aws_eip.eip_nat_gw_1a.id
}

output "nat_gw_1a_id" {
  value = aws_nat_gateway.nat_gw_1a.id
}

# --- FASE 1: Subnets 1c ---
output "public_subnet_1c_id" {
  value = aws_subnet.public_subnet_1c.id
}

output "private_subnet_1c_id" {
  value = aws_subnet.private_subnet_1c.id
}

# --- FASE 2: Associação pública 1c ---
output "public_rt_assoc_1c_id" {
  value = aws_route_table_association.rt_pub_association_subnet_1c.id
}

# --- FASE 3: EIP + NAT Gateway 1c ---
output "eip_1c_id" {
  value = aws_eip.eip_nat_gw_1c.id
}

output "nat_gw_1c_id" {
  value = aws_nat_gateway.nat_gw_1c.id
}

# --- FASE 4: Route table privada 1c + Associação ---
output "private_rt_1c_id" {
  value = aws_route_table.private_rt_1c.id
}

output "private_rt_assoc_1c_id" {
  value = aws_route_table_association.rt_priv_association_subnet_1c.id
}

# --- FASE 5: EC2 pública com Apache ---
# output "ec2_security_group_id" {
#   value = aws_security_group.ec2_web_sg.id
# }
#
# output "ec2_instance_id" {
#   value = aws_instance.web.id
# }
#
# output "ec2_public_ip" {
#   value = aws_instance.web.public_ip
# }