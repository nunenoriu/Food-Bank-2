# Food-Bank-2

Add a brief description of this project here, in Markdown format.
It will be shown on the main page of the project's GitHub repository.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.

## Configuration so far

1. `cci project init` to initialise project in local repository. 
2. `cci service connect devhub --project` to connect DevHub to cci project, username should match DebHub alias. 
3. `cci flow run dev_org --org dev` creates scratch org, installs dependencies, deploys application, runs post install configuration. 
4. `cci org browser dev` opens dev org
5. make changes in dev scratch org
6. `cci task run list_changes --org dev` show a list of all changes 
    6.1. `cci task run list_changes --org dev -o exclude "Profile:"` show changes excludcing profiles
7. `cci task run retrieve_changes --org dev -o exclude "Profile:"` retrieve changes excluding profiles   
