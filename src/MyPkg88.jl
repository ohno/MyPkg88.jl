module MyPkg88

# Public API, accessed as MyPkg88.hello without exporting the name.
public hello

# Packages

import DocStringExtensions

"""
$(DocStringExtensions.TYPEDSIGNATURES)

Return a friendly greeting.

# Examples

```jldoctest
julia> MyPkg88.hello()
"Hello, World!"
```
"""
function hello()
    return "Hello, World!"
end

end
