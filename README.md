# Mac OSX setting script

これはMac book airからproに移行した際に用いたスクリプトである。

## Useage

- 先にsshの設定
- githubで利用するkeyを保存しておくこと

```
$ ssh-add <Github key>
```


```
./setup.sh
```

## Scripts

- brew.sh

brewでインストール出来る物をスクリプトに固める

- setup.sh

Macで設定する物をスクリプトにしていく

- Brewfile

現在未使用

- Vagrantfile

テスト用にやりたかったらしい。。。 しかしOSXは有料なので無理があったようだ。

## 注意事項

sshやdbに関してはgitには上げないで所持しているPCあるいはサーバから持ってくること。
