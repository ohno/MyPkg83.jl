module MyPkg83

# Public API, accessed as MyPkg83.hello without exporting the name.
public hello

# Packages

import DocStringExtensions

"""
$(DocStringExtensions.TYPEDSIGNATURES)

Return a friendly greeting.

# Examples

```jldoctest
julia> MyPkg83.hello()
"Hello, World!"
```
"""
function hello()
    return "Hello, World!"
end

end
