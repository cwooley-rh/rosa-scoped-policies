# Reducing Permission Scope for ROSA Classic STS Policies


## Findings


1. The intaller role has a bunch of unneccessary actions that are permitted, so far I have tested removing:

        "ec2:AssociateRouteTable",
        "ec2:AttachInternetGateway",
        "ec2:CreateDhcpOptions",
        "ec2:CreateInternetGateway",
        "ec2:CreateNatGateway",
        "ec2:CreateRoute",
        "ec2:CreateRouteTable",
        "ec2:CreateSubnet",
        "ec2:CreateVpc",
        "ec2:DeleteDhcpOptions",
        "ec2:DeleteInternetGateway",
        "ec2:DeleteNatGateway",
        "ec2:DeleteRoute",
        "ec2:DeleteRouteTable",
        "ec2:DeleteSubnet",
        "ec2:DeleteVpc",
        "ec2:DescribeDhcpOptions",
        "ec2:DetachInternetGateway",
        "ec2:DisassociateRouteTable"

2. The installer role cannot be scoped to a resource tag as the resources required to be tagged do no exist nor do the tags, this role will have to be scoped to minimum permissions
3. Support and Operator Roles can be scoped to a the resource tag *"StringEquals": { "aws:ResourceTag/red-hat-managed": "true" }*   **TESTING STILL**
   1. Some Q's regarding cloudtrail/watch with the resource tag condition
   2. 

    



