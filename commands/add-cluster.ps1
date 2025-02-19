aws eks create-cluster --region us-east-1 --name clusterdamiana \
    --kubernetes-version 1.32 \
    --role-arn arn:aws:iam::992382459406:role/AmazonEKSAutoClusterRole \
    --resources-vpc-config subnetIds=subnet-094119997fd2df175,subnet-0b8be373a77fbaad5 \
    --security-group-ids sg-00a3c3b55bfc737a1
