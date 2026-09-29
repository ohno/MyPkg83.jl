```@meta
CurrentModule = MyPkg83
```

# User Guide

Before starting the tutorial, complete the [Quick Start](@ref) section. Feature requests and bug reports are handled through GitHub [Issues](https://github.com/ohno/MyPkg83.jl/issues).

## Tutorial

```@repl
import MyPkg83
MyPkg83.hello()
```

## Examples

```@example
import MyPkg83
text_1 = MyPkg83.hello()
text_2 = "Goodbye, World!"
text_1 * " " * text_2
```
