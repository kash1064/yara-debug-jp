# YARA DEBUG JP

## このリポジトリについて

このリポジトリは、YARA4.1.0のソースコードに、内部仕様についての個人的なリファレンスと日本語のコメントを追加したものです。

主に書籍に書くことのできなかった内部の挙動を中心にまとめています。

## リファレンス

1. [YARA CLI の仕様](Reference/yaracli.md)

## Build Yara

- Download YARA from [VirusTotal/yara](https://github.com/VirusTotal/yara/releases)

```bash
sudo apt-get install automake libtool make gcc pkg-config -y
sudo apt-get install flex bison -y
```

- Build and install

``` bash
cd yara-4.1.0-debug
./bootstrap.sh
./configure
make
make install
cd ../
```

- Add config

``` bash
sudo echo "/usr/local/lib" >> /etc/ld.so.conf
sudo ldconfig 
```

## Build yara-python

``` bash
cd yara-python-4.1.0-debug/
ln -s ../yara-4.1.0-debug/ yara
```

``` bash
python3 setup.py build
pip install .
```

## 補足

- 元のリポジトリのREADMEは[README_origin.md](README_origin.md)です。
- YARAのライセンスは[BSD-3-Clause](https://opensource.org/licenses/BSD-3-Clause)であるため、このリポジトリも[BSD-3-Clause](https://opensource.org/licenses/BSD-3-Clause)を踏襲します。
- このリポジトリのリファレンスおよびコメント文は、あくまで個人的な見解のため、必ずしも内容の正確性は保障していません。
- YARAの著作権表示はソースコード内に記載されています。