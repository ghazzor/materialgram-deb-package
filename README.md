### Info
This project repackages [materialgram](https://github.com/kukuruzka165/materialgram) into a .deb file, offering a more convenient alternative to manually replacing the binary.

CI is set to run automatically every 4th day.

### Installation/Update

```bash
rm -rf materialgram-deb-package && \
git clone --depth=1 https://github.com/ghazzor/materialgram-deb-package && \
cd materialgram-deb-package && \
sudo dpkg -i *.deb && \
cd .. && \
rm -rf materialgram-deb-package
```
