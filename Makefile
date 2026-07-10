JAVAC = javac
JAVA = java
SRC_DIR = src
PACKAGE_PATH = com/craftinginterpreters/lox
MAIN_CLASS = com.craftinginterpreters.lox.Lox

.PHONY: build run runfile clean

build:
	$(JAVAC) $(SRC_DIR)/$(PACKAGE_PATH)/*.java

run: build
	$(JAVA) -cp $(SRC_DIR) $(MAIN_CLASS)

runfile: build
	$(JAVA) -cp $(SRC_DIR) $(MAIN_CLASS) $(FILE)

clean:
	rm -f $(SRC_DIR)/$(PACKAGE_PATH)/*.class
