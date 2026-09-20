# Micros Template Repo
Template repository to build micros images using github actions

## Usage
The template repository includes a workflow for building images using github actions, a flake.nix file which defines the dependencies and output image, a hardware-configuration.nix file pre-built for running in VM environments, and a configuration.nix file with a basic configuration. This template is identical to the template used in the [getting started documentation](https://micros.snugnug.org/getting-started.html), and it is recommended to follow along there for configuration tips and a further explanation of the options provided.

1. create a repo using this template. Ensure it is a public repo, as private repositories do not have free github actions.
2. Enable github actions in the actions tab
3. Select the `.github/workflows/main.yml` workflow, and use the "run workflow" button to run the build tool on the main branch.

After the workflow finishes, a `micros-image.iso` file is created which can be booted anywhere. 
Whenever modifications are made to the repo, e.g. a configuration change, repeat step 3 to rebuild the image.
