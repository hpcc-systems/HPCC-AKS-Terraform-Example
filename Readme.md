**Intro**
A simple Terraform experience to both understand and work with AKS in the context of HPCC Systems. Basics covered:

- User Assigned Identity that is associated with the AKS cluster
- AKS and nodepools
- Virtual Network and Subnets for AKS
- Persistence Storage Account (Azure Files) for AKS 
- Persitance Volumes and Volume Claims for AKS

**Main Commands**

```console
terraform plan
```

```console
terraform apply
```

```console
helm install hpcccluster hpcc/hpcc -f hpcc-values.yaml 
```

**Other useful commands:**

```console
helm get values -a hpcccluster 
```

```console
kubectl port-forward service/eclwatch 8010:8010 
```

```console
helm uninstall hpcccluster
```

```console
terraform destroy
```