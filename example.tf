#--------------------------------------------------------------
# Instance
#--------------------------------------------------------------
resource "aws_instance" "main" {
    instance_type = "c4.large"

    # Trusty 14.04
    ami = "ami-2a734c42"

    # This will create 1 instances
    count = 1

    subnet_id = "subnet-197b707b"
    security_groups = ["sg-eeeef48c", "sg-788d851a", "sg-b7d371d2"]
}
