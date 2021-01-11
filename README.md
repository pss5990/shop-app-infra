Code to create a GKE cluster using terraform.

#### Prerequisite
1. Google cloud access and a project.
2. gcloud & kubectl setup on local machine (if you want to connect to the cluster after creation).
3. Terraform setup on your local machine.


#### How To Use
1. Checkout the repository.
2. Create a service account with project editor role and download the json key file.
3. Add the following key value pairs to terraform.tfvars file.
	<br /> project_sa_key -> Location of the json key file.
	<br /> poject_id -> Google cloud project id.
	<br /> project_default_region -> Google cloud project default region.
	<br /> project_default_zone -> Google cloud project default zone.

	Additionally you can go through the other settings in the variables.tf files and override any default values.

4. Run terraform apply in the directory.

#### Connecting To The Cluster After Creation
1. gcloud container clusters get-credentials shop-app --region=europe-west1 (or the cluster name and region you choose).
2. kubectl get nodes, to see the total number of nodes in the cluster.
