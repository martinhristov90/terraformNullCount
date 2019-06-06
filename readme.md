## This reposistory is created with learning purposes for Terraform, focusing on Terraform Null provider and Count.

## Purpose :

- It provides a simple example of how to create Terraform Null resource and how to create N number of Null_resources.

## How to install terraform : 

- The information about installing terraform can be found on the HashiCorp website 
[here](https://learn.hashicorp.com/terraform/getting-started/install.html)

## How to use it :

- In a directory of your choice, clone the github repository :
    ```
    git clone https://github.com/martinhristov90/terraformNullCount.git
    ```

- Change into the directory :
    ```
    cd terraformNullCount
    ```
- Run `terraform init` to download the null provider.

- Run `terraform plan` to see what actions are going to be performed by Terraform. Output should look like this :
    ```
    Terraform will perform the following actions:

      + null_resource.helloWorld[0]
          id: <computed>
        ---SNIP--
      + null_resource.helloWorld[9]
          id: <computed>
    Plan: 10 to add, 0 to change, 0 to destroy.
    ```

- Run `terraform apply` to create the `null_resource`. When `terraform apply` is running you might notice that resources are not created in order, that is because Terraform is trying to parallelize as much as work possible.

- In order to destroy the created resources, you can use `terraform destroy`.
