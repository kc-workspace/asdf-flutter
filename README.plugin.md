# flutter features

If you install multiple flutter/dart SDK, you might cannot find the path of current active flutter/dart SDK location. Add below code to your shell config file (e.g. `.zshrc`, `.bashrc`, etc.). This will create `FLUTTER_ROOT` and `DART_ROOT` variable to active flutter/dart SDK location.

```bash
eval "$(asdf flutter setup)"
```
