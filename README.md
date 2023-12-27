# delete-github-repository

```
Deleting a repository requires admin access. If OAuth is used, the delete_repo scope is required.

If an organization owner has configured the organization to prevent members from deleting organization-owned repositories, you will get a 403 Forbidden response.
```

reference: [delete-github-repository](https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#delete-a-repository)

## How code works

* requires owner name / organization name
* requires repository name

```
These parameters are received from the github workflow UI. These are then passed to restAPI in bash script
``` 

* The credential used is ``` FINE GRAINED PERSONAL ACCESS TOKEN ```
