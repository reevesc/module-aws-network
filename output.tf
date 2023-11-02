# Create VPC Resource for the systems network
output "vpc_id" {
  value = aws_vpc.main.id
}

# Create four logical subnets to be bounded parts of the network
output "subnet_ids" {
  value = [
    aws_subnet.public-subnet-a.id,
    aws_subnet.public-subnet-b.id,
    aws_subnet.private-subnet-a.id,
  aws_subnet.private-subnet-b.id]
}

# Define the public subnets
output "public_subnet_ids" {
  value = [aws_subnet.public-subnet-a.id, aws_subnet.public-subnet-b.id]
}

# Define the private subnets
output "private_subnet_ids" {
  value = [aws_subnet.private-subnet-a.id, aws_subnet.private-subnet-b.id]
}
