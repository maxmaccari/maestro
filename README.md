# Maestro

CLI app to help manage development workspaces easily.

The motivation is to be a CLI that helps setup workspace easily to make onboards smoothly and helps manage dependencies between multiple projects. So this project intends to help teams be more product on onboarding and daily tasks like dependencies updates, multi-projects deploys, and other things.

This does not intend to be complex and opinionated as other tools like lerna. It's just intended to make project setups easy and run tasks between different projects that depend on each other simple. You'll be able to use this even for monorepo and multirepo projects.

## Milestones
- [ ] 0.1.0 - Project Setup / Onboarding
  - [ ] Clone git projects based on workspace.json
  - [ ] Mount a dependency tree for a project
  - [ ] `maestro checkout {branch}` checkout all projects at one determined branch, or default branch otherwise
  - [ ] Run npm install on all projects (in parallalel)
  - [ ] Run custom `after_setup` command on all project (in parallalel, by dependency tree)

- [ ] 0.2.0 - Project update
  - [ ] Update NPM version on project dependencies (by the tree)
  - [ ] Allow to push
  - [ ] Allow publishing to npm or git repository (make this configurable)

- [ ] 0.3.0 - Support
  - [ ] Draw the project dependency tree and it paths
  - [ ] Pretty print the command status
  - [ ] Allow adding custom commands (like chain commands, for example)

- [ ] 0.4.0 - Support Elixir via `mix`
- [ ] 0.5.0 - Support Ruby via `bundler`
- [ ] 0.6.0 - Support Rust via `cargo`
- [ ] 0.7.0 - Support Python via `pip`


## Dependencies
  * `git` - required
  * `npm` - required if you want to manage node projects

## Usage

### Setup your workspace

Create a `workspace.json` file with the following contents

```json
{
  "projects": [
    {
      "git": "project-1-git"
    },
    {
      "git": "project-2-git"
    },
    {
      "git": "project-3-git"
    }
  ]
}
```

And run 
```sh
$ maestro setup
```
