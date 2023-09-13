
aws iam create-role \
	--assume-role-policy-document file://sts_instance_worker_trust_policy.json \
	--role-name RcclTest-Worker-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13 Key=rosa_role_type,Value=instance_worker

aws iam create-policy \
	--policy-document file://sts_instance_worker_permission_policy.json \
	--policy-name RcclTest-Worker-Role-Policy \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13 Key=rosa_role_type,Value=instance_worker

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::660250927410:policy/RcclTest-Worker-Role-Policy \
	--role-name RcclTest-Worker-Role

aws iam create-role \
	--assume-role-policy-document file://sts_support_trust_policy.json \
	--role-name RcclTest-Support-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_type,Value=support Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13

aws iam create-policy \
	--policy-document file://sts_support_permission_policy.json \
	--policy-name RcclTest-Support-Role-Policy \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_type,Value=support Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::660250927410:policy/RcclTest-Support-Role-Policy \
	--role-name RcclTest-Support-Role

aws iam create-role \
	--assume-role-policy-document file://sts_installer_trust_policy.json \
	--role-name RcclTest-Installer-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_type,Value=installer Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13

aws iam create-policy \
	--policy-document file://sts_installer_permission_policy.json \
	--policy-name RcclTest-Installer-Role-Policy \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_type,Value=installer Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::660250927410:policy/RcclTest-Installer-Role-Policy \
	--role-name RcclTest-Installer-Role

aws iam create-role \
	--assume-role-policy-document file://sts_instance_controlplane_trust_policy.json \
	--role-name RcclTest-ControlPlane-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13 Key=rosa_role_type,Value=instance_controlplane

aws iam create-policy \
	--policy-document file://sts_instance_controlplane_permission_policy.json \
	--policy-name RcclTest-ControlPlane-Role-Policy \
	--tags Key=red-hat-managed,Value=true Key=rosa_role_prefix,Value=RcclTest Key=rosa_openshift_version,Value=4.13 Key=rosa_role_type,Value=instance_controlplane

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::660250927410:policy/RcclTest-ControlPlane-Role-Policy \
	--role-name RcclTest-ControlPlane-Role

I: Run the following commands to create the hosted CP account roles and policies:

aws iam create-role \
	--assume-role-policy-document file://sts_installer_trust_policy.json \
	--role-name ManagedOpenShift-HCP-ROSA-Installer-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_hcp_policies,Value=true Key=rosa_role_type,Value=installer Key=rosa_managed_policies,Value=true Key=rosa_openshift_version,Value=4.13 Key=rosa_role_prefix,Value=ManagedOpenShift

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::aws:policy/service-role/ROSAInstallerPolicy \
	--role-name ManagedOpenShift-HCP-ROSA-Installer-Role

aws iam create-role \
	--assume-role-policy-document file://sts_support_trust_policy.json \
	--role-name ManagedOpenShift-HCP-ROSA-Support-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_hcp_policies,Value=true Key=rosa_role_type,Value=support Key=rosa_managed_policies,Value=true Key=rosa_openshift_version,Value=4.13 Key=rosa_role_prefix,Value=ManagedOpenShift

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::aws:policy/service-role/ROSASRESupportPolicy \
	--role-name ManagedOpenShift-HCP-ROSA-Support-Role

aws iam create-role \
	--assume-role-policy-document file://sts_instance_worker_trust_policy.json \
	--role-name ManagedOpenShift-HCP-ROSA-Worker-Role \
	--tags Key=red-hat-managed,Value=true Key=rosa_hcp_policies,Value=true Key=rosa_managed_policies,Value=true Key=rosa_openshift_version,Value=4.13 Key=rosa_role_type,Value=instance_worker Key=rosa_role_prefix,Value=ManagedOpenShift

aws iam attach-role-policy \
	--policy-arn arn:aws:iam::aws:policy/service-role/ROSAWorkerInstancePolicy \
	--role-name ManagedOpenShift-HCP-ROSA-Worker-Role