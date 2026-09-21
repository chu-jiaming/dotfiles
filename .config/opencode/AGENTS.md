# Global instructions

## Environment policy

Whenever environment-related execution is required, follow this policy.

### Workspace root

* Determine the workspace root before running any environment-management command.
* If the initial working directory is inside a Git worktree, use the output of:

  `git rev-parse --show-toplevel`

  as the workspace root.
* Otherwise, use the initial working directory as the workspace root.
* Do not change the workspace root after it has been determined.
* Run all environment-management commands from the workspace root.

### Python

* Use `uv` exclusively to manage Python versions, virtual environments, and Python dependencies.
* Do not use `pip`, `python -m venv`, `virtualenv`, `conda`, or other environment/package managers directly.
* The project virtual environment must be located at:

  `<workspace-root>/.venv`

* If the virtual environment does not exist, create it with `uv`.
* When the project defines dependencies in `pyproject.toml` / `uv.lock`, use `uv sync` to create or update the environment.
* Prefer `uv run <command>` when executing Python commands inside the project environment.
* Do not install Python packages globally or into the system Python environment.
