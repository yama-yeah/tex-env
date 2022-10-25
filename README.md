# Tex-Env
## 概要
texを使いやすくすることを目的とした環境です。  
この環境では講義ごとに最適なテンプレートを利用して、レポートを執筆していくのを目標としています。

## 前提
docker、およびdocker-composeがインストールされているのを前提条件としています。
## 入り方
```bash
docker-compose up
```
で環境を立ち上げたらVscodeにアタッチしてください。
## tesコマンド
```

    //========================\\
   //     This Command is      \\
  //   Tex Environment Helper   \\
  \\    for Fun Students!!!     //
   \\  OPEN SPACE, OPEN MIND   //
    \\========================//
        \\   ^__^
         \\  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||

```
tesコマンドはtexテンプレートの管理コマンドです。  
```bash
tes -t
```
でコマンド実行時のカレントディレクトリで利用できるテンプレートを生成します。
```bash
tes report-name
```
でレポート名をフォルダー名としてもつレポートを生成します。  
カレントディレクトリにテンプレートがない場合、デフォルトのテンプレートを利用します。
```bash
tes -h
```
でヘルプを参照できます
## texをpdfに起こす
texを編集したあとに保存すると自動でpdfが生成されます。
## lint
```bash
npm run lint
```
でlintが走ってあなたのレポートが本当に提出できるできなのかを教えてくれます。
## デフォルトのテンプレートを編集する
tex-tool/templateにデフォルトのテンプレートが配置されています。
## tesコマンドを環境外から呼び出す
tesコマンドはただのシェルスクリプトなのでdockerを使わなくても使えます。
```bash
git clone https://github.com/yama-yeah/tex-env
cd tex-env
export PATH="$PATH":"`pwd`/tex-tool"
```
以上のコマンドを実行すると、パスが通ります。  
ただし、latexmkとlualatexをインストールするのを忘れないでください。