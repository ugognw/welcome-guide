# Introduction to ASE

## System Requirements

- MacOS 26.0.1 or later
- A valid [GitHub][github] account
- [VSCode 1.105.1 or later](https://code.visualstudio.com)

## Prerequisites

Before beginning this tutorial, you should already have
[set up your software development environment](./development.md).

If you are not familiar with [Git][git] and version control, it is highly recommended
that you read the following short pages:

- [About Version Control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
- [What is Git?](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F)

## Objectives

- to gain familiarity with the Atomic Simulation Environment
- to create adsorbate complexes
- to create surface slabs from a bulk structure
- to learn best practices for file organization

## Step-by-Step Instructions

The steps outlined herein can be performed from the Terminal; however, for
simplicity, it is recommended to use the VSCode IDE.

1. **Navigate to your project repository.**

2. **Create a virtual environment for this project.**

    This can be done by typing the following from the terminal window within
    VSCode:

    ```shell
    python -m venv .venv
    ```

    or by using the "Python: Create Environment" command from the VSCode
    command palette (accessible via the keyboard shortcut `option-x` or from
    the "View" submenu).

    ??? info "Explanation"

        This will create a virtual environment in your repository directory
        named `.venv`.

    ??? note

        Although it is possible to use a global environment (like that created
        in [Basic Setup](./basic_setup.md)), different projects will likely
        require different packages, and creating separate environments ensures
        that modifications in the environment for one project do not affect the
        environment of another project.

3. **Activate the virtual environment and install some necessary packages.**

   ```shell
    source .venv/bin/activate
   ```
