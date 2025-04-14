### Info
Unofficial apt repository for [materialgram](https://github.com/kukuruzka165/materialgram), offering a more convenient alternative to manually replacing the binary or flatpaks.

CI is set to run automatically on Sunday and Tuesday at midnight @IST.

### Installation

```bash
$ bash <(curl -s "https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/master/install.sh")
```
*OR*
```bash
$ wget -qO- https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/master/materialgram_repo.asc | sudo tee /etc/apt/trusted.gpg.d/materialgram_repo.asc
$ echo "deb [arch=amd64] https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/master/apt/repo/ bionic main" | sudo tee /etc/apt/sources.list.d/materialgram.list
$ sudo apt update && sudo apt install materialgram
```
