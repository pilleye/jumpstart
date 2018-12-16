---
description: How to contribute to Jumpstart.
---

# Contributing

## Development Environment

Setting up a development environment is identical to using Jumpstart.

1. Install `pip`
2. Create a Python virtual environment in `.venv` within the `git` repository.
3. Install `ansible` through `pip`

## File Structure

### Inventory

The folder `inventories/inventory` contains the Ansible inventory used when running the application.

### Playbooks

The folder `playbooks/` contains the Ansible playbooks.

#### Configuration

The playbook `playbooks/configuration.yml` is run if the user wants to customize their installation. This configuration playbook overwrites the user's configuration to `global_vars/vars.yml`.

#### Main

The playbook `playbooks/main.yml` is called after the configuration playbook regardless of whether the user customizes their installation. 

This playbook receives the variables in `global_vars/vars.yml`

This playbook calls the different roles for installation.

#### Roles

The roles are in the folder `playbooks/roles`. 

These roles receive all the variables in `global_vars/vars.yml`

## Continuous Integration

This repository is integrated with [Travis CI](https://travis-ci.com/adityarpillai/macOS-developer-setup). The continuous integration will test everything that is in the `global_vars/vars.yml` file.

#### Exclusions

In order to speed up the testing process, certain tasks can be ignored by using

```yaml
when: is_travis is undefined
```

This is used in cases such as upgrading Homebrew with `brew upgrade` since the Travis CI macOS operating system is preinstalled with a variety of `brew` packages. Thus, if we upgrade Homebrew while testing, it increases the testing time by upwards of `6` minutes!

```yaml
- name: Upgrading Homebrew
  when: is_travis is not defined
  homebrew:
    upgrade_all: true
```



