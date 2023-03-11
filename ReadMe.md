# gh-action-aspell

This action checks spelling in one or more files.


## Inputs

### `files`

**Optional.** Files on which to run `aspell`. By default, the action will look for `.tex` files in all directories.

### `args`

**Optional.** Arguments passed to `aspell`.


## Example Usage

```yaml
uses: niewprost/gh-action-aspell@main
with:
  files: README.md
  args: --lang=en_GB --mode=markdown
```
