### Info
Unofficial apt repository for [materialgram](https://github.com/kukuruzka165/materialgram), offering a more convenient alternative to manually replacing the binary or flatpaks.

CI is set to run automatically every 4th day.

### Installation/Update

```bash
wget -qO- https://myrepo.example/myrepo.asc | sudo tee /etc/apt/trusted.gpg.d/myrepo.asc
echo "deb [arch=amd64] https://raw.githubusercontent.com/ghazzor/materialgram-deb-package/refs/heads/master/apt/repo/ bionic main" | sudo tee /etc/apt/sources.list.d/materialgram.list
sudo apt update && sudo apt install materialgram
```
