# FAST-PATH compile guide

## compile
```
cd openwrt
git clone git@gitlab.com:Luochongjun/fast-path.git
mkdir -p ./package/qca
mv ./fast-path/* ./package/qca
rm -rf ./fast-path
make menuconfig
make ./package/qca/fast-classifier/compile
```
