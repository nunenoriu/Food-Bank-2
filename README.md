# Food-Bank-2

Add a brief description of this project here, in Markdown format.
It will be shown on the main page of the project's GitHub repository.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.

## Configuration so far
### Setup new project
1. `cci project init` to initialise project in local repository. 
2. `cci service connect devhub --project` to connect DevHub to cci project, username should match DebHub alias. 
3. `cci flow run dev_org --org dev` creates scratch org, installs dependencies, deploys application, runs post install configuration. 
4. `cci org browser dev` opens dev org
5. make changes in dev scratch org
6. `cci task run list_changes --org dev` show a list of all changes 
    6.1. `cci task run list_changes --org dev -o exclude "Profile:"` show changes excludcing profiles
7. `cci task run retrieve_changes --org dev -o exclude "Profile:"` retrieve changes excluding profiles 
8. create feature branch. Bring changes over  
9. commit changes
10. publish feature branch
11. create a pill request
12. in automatically created #Changes section, enter description of change made
13. in #Issues section, link issue
14. PR should be reviewed and QA started, run `cci flow run qa_org --org qa` to create qa scratch org
15. open qa - `cci org browser qa`
16. after review, merge PR
17. delete branch
18. delete local branch
19. `cci org scratch_delete dev` delete dev scratch
20. `cci org scratch_delete qa` delete qa scratch org, if you've used it. 
### Dataset 
21. create new feature branch and  dev org like in steps above, then create a data mapping file `cci task run generate_dataset_mapping --org dev` . This will generate `mapping.yml`, it defines what objects and in which order needs to be created. 
22. `cci org browser dev` open dev org and create some sample data, you'd like to show when testing feature.
23. `cci task run extract_dataset --org dev` extract sample data from dev org based on mapping file.
### CircleCI Flow modification
24. `cci flow info qa_org` check all flows for qa_org
25. `cci flow info config_qa` check specific config_qa flow
25. flow can be change by editing cumulusci.yml `flows: <flow_name>: steps:`

