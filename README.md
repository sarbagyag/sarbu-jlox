# jlox

A tree-walking interpreter for the Lox language, written in Java. Built while following [*Crafting Interpreters*](https://craftinginterpreters.com/).

## Pipeline

```
source -> Scanner -> tokens -> Parser -> AST (Expr) -> Interpreter -> result
```

- **Scanner** — turns raw source into a list of tokens.
- **Parser** — builds an expression tree from the tokens (recursive descent).
- **Interpreter** — walks the tree and evaluates it.
- **AstPrinter** — prints an AST back out as a readable string, useful for debugging.

## Requirements

- JDK (`javac` / `java` on your `PATH`)
- `make`

## Usage

```sh
# Build
make build

# Start the REPL
make run

# Run a script
make runfile FILE=test.lox

# Remove compiled classes
make clean
```

## Project layout

```
src/com/craftinginterpreters/lox/   # scanner, parser, interpreter, AST
src/com/craftinginterpreters/tool/  # GenerateAst — generates Expr.java
docs/                                # notes on the interpreter's design
test.lox                             # sample script
```
