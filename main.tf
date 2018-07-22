provider "aws" {
	region	= "us-west-2"
}

resource "aws_key_pair" "web" {
  key_name   = "jeff"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPtF6CFbpdRf2NrQnT+Fq5UEXJel/sXKPESYfGiC02FoVGq1+oZQ1V/mFA3SH8tntPi5YA2y1afIztZ+nEyYwhrQTAa3Qb96/actPxlpfPR8tM3VFVahnS0r+9HJn46RzSR7rB2+Qp8lB/5J7FX3uYvJVHiZ06sR5Do1N05kd2yU9Cgp0B7ObXnZVSisXwFo4TVeGytZ6WDgirk5fBB+TTS0gged5pMDU4tafsASaTfe50l2SxLczOa1A06tPsvk4PZupPsvF3nh3o5llNrZBG0xie4owmmUkAjFVutKTpevvZxfPu/ESWX+ncjK8HLRVvshq6MMw3YP1+MKkjdvx1 hathora@Elysium.local"
}

resource "aws_instance" "example" {
	ami					=	"ami-a9d09ed1"
	instance_type		=	"t2.micro"
	availability_zone	=	"us-west-2a"
	subnet_id			=	"subnet-e0644d87"
	key_name			=	"jeff"
	
	tags {
		Name	=	"personal web"
	}
}