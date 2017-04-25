# bounds

`bounds` packs two tiny functions. `bounds::bind` implements partial application. `bounds::isBound` checks whether or not a function is bound to its enclosing environment (i.e. has free variables) - is a (common sense) closure.