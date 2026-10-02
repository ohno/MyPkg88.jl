```@meta
CurrentModule = MyPkg88
```

# User Guide

Before starting the tutorial, complete the [Quick Start](@ref) section. Feature requests and bug reports are handled through GitHub [Issues](https://github.com/ohno/MyPkg88.jl/issues).

## Tutorial

```@repl
import MyPkg88
MyPkg88.hello()
```

## Examples

```@example
import MyPkg88
text_1 = MyPkg88.hello()
text_2 = "Goodbye, World!"
text_1 * " " * text_2
```
