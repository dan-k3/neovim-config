# Dependencies

## Windows Setup

* `sudo choco install lua-language-server`
* `sudo choco install mingw`
* `sudo choco install ripgrep` 
* `sudo choco install fd`
* `sudo choco install universal-ctags`

## Linux Setup

* `sudo apt update`
* `sudo apt install build-essential cmake ninja-build`
* `sudo apt install ripgrep`
* `sudo apt install fd-find`
* `sudo apt install universal-ctags`

### Lua Language Server Setup
1. https://luals.github.io/#install
 ```bash
   VERSION=3.15.0
   curl -LO https://github.com/LuaLS/lua-language-server/releases/download/${VERSION}/lua-language-server-${VERSION}-submodules.zip
   unzip lua-language-server-${VERSION}-submodules.zip
 ```
2. `mkdir -p ~/lua-language-server`
3. `unzip -o lua-language-server-linux-submodules.zip -d ~/lua-language-server`
4. `cd 3rd/luamake`
5. `chmod +x compile/install.sh` (optional)
6. `./compile/install.sh`
7. `./luamake rebuild` (optional)
