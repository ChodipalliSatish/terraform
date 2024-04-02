
Step -1

Clone/Dowload the code from Github and import into Visual Studio

Step-2: Local setup

Please download the package from google and install it in your local.
•	Install Terraform
•	Install googlesdk
•	Install Kubectl
•	Install helm

Step 3: Set up GCP Project

•	Login into google cloud.
•	Google Cloud will give $300 free credits.
•	Created your Project in GCP.

Step 4: Connect the GCP from your local to run terraform commands.

•	Run gcloud auth application-default login command.
•	It will open your browser, where you need to complete authorization.
•	On successful authorization, you can execute the terraform commands, gcloud commands in your local.

Step 5: Create GKE Cluster using terraform commands.

•	Execute Terraform init command to initialize your code.
•	Execute terraform plan command to see what the services are being created in GCP before we apply.
•	Execute terraform apply command to create the infrastructure in GCP.
•	On Successful execution you can see your infrastructure in GCP.

Step 6: Deploy sample application to GKE Cluster.

•	Execute below helm kubectl commands to deploy the ngnix

•	Run below command to add ngnix repo. 
helm repo add ingress-nginx \ https://kubernetes.github.io/ingress-nginxv

•	Run below command to install ingress to GKE Workload
helm install my-ing ingress-nginx/ingress-nginx \--namespace ingress \ --version 4.0.17 \--values nginx-values.yaml \--create-namespace

•	Run below command to deploy the image to cluster.
             kubectl apply -f k8s/3-example.yaml
             
•	Access the ngnix app in the browser using IP associated to ingress workload.

![image](https://github.com/ChodipalliSatish/terraform-GCP/assets/32178493/8022e997-577f-4c47-970e-a81b1ca09e68)
