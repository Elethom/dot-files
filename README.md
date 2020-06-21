# dot-files

My config files.

## Manipulating

Deploying to a new system:

```bash
rchome(){
  ln -s "$PWD/$1" ~/"$1"
}

for i in .[^.]*; do [[ $i != .git ]] && rchome "$i"; done
```

Turn file into symlink to dot-files:
```bash
rcify .foorc
```
