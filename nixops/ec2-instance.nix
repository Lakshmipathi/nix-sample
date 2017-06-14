{
  webserver =
    { 
    deployment.targetEnv = "ec2";
    deployment.ec2.keyPair = "container";
    deployment.ec2.privateKey = "/home/laks/container.pem";
#
# export EC2_SECRET_KEY="key1"
# export EC2_ACCESS_KEY="key2"
# or setvia deployment.ec2.accessKeyId = "INSERT_YOUR_KEY";
#
    deployment.ec2.region = "us-west-2";
    deployment.ec2.instanceType = "m3.medium";
    deployment.ec2.ami="ami-5139ae31";
    deployment.ec2.securityGroups = [ "launch-wizard-2" ];
    };
}
