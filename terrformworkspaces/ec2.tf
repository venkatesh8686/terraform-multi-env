resource "aws_instance" "terraform" {

    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance, terraform.workspace)
    vpc_security_group_ids = ["sg-02f6844c378c0c8e9"]
    
    tags = {
        Name = "terraform-${terraform.workspace}"
    }
}