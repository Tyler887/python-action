# python-action
Write GitHub Actions workflows using Python by running python scripts. The tool uses Microsoft Windows Server.
> Only supports Python 3. **Python 2 is [deprecated](https://www.google.com/url?sa=t&source=web&rct=j&url=https://www.python.org/doc/sunset-python-2/%23:~:text%3DWe%2520have%2520decided%2520that%2520January,as%2520soon%2520as%2520you%2520can.&ved=2ahUKEwiO7LKg37n1AhVCgv0HHd5rDq0QFnoECAQQBQ&usg=AOvVaw3VKra0lIbRuX6L4ED4iVcJ).**
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
