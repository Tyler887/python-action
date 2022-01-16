# python-action
Write GitHub Actions workflows using Python by running python scripts. The tool uses Microsoft Windows Server.
## Usage
To use the workflow, there must be a `workflow.py` in the branch where you are trying to publish your action to Marketplace at. I reccommemd that your action runs on `Windows-latest` to ensure you are always running the latest version of Windows Server.
## Example

### `action.y(a)ml`
```yaml
name: Python Hello World

jobs:
  python3runner:
    runs-on: windows-latest
    steps:
      - uses: Tyler887/python-action@main
        env:
          OWNER: # Owner of the repository defined in REPO
          REPO: # Name of the repo (without "OWNER/")
          
```
### `workflow.py`
```python
print("Hello World")
```
