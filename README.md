# Architecture Diagrams

This repo uses [Structurizr](https://docs.structurizr.com) to render architecture diagrams out of the `workspace.dsl` file.

## Getting Started
Install [Devenv](https://devenv.sh/getting-started/)
Then `devenv up`.

*OR*

Install [Devbox](https://jetify-com.vercel.app/docs/devbox/installing_devbox/)
Then `devbox services up`

*OR*

Install Docker and run `docker run -it --rm -p 8080:8080 -v .:/usr/local/structurizr structurizr/lite`


## Regular Usage
Open the `workspace.dsl` file in your editor.
Execute `devenv up` to run the viewer. It'll auto refresh as you save changes to the `workspace.dsl`.

Use the [Structurizr DSL Cookbook](https://docs.structurizr.com/dsl/cookbook/) for inspiration and copy-pasta.