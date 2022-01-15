# python-action
Write GitHub Actions workflows using Python by running python scripts. The tool uses Microsoft Windows Server.
## Usage
### `action.y(a)ml`
```yaml
name: Python Hello World

jobs:
  python3runner:
    runs-on: windows-latest
    steps:
      - uses: Tyler887/python-action@main
```
### `workflow.py`
```python
print("Hello World")
```
