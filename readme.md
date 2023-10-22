
# Windows Auto Video Play
This program automates the task of playing videos on a Windows machine using the task scheduler.

## Installation
Download the repository either by cloning or directly downloading:

```https://github.com/isankadn/windows-auto-video-play.git ```

Once downloaded, move the downloaded program to your Desktop and unzip it.

## Prerequisites
  1. Ensure that the auto sleep and auto lock features are disabled on your Windows system.
  2. Connect the computer to a continuous power source to prevent interruptions.
  3. Ensure you login as admin user


## Media File Setup
Place your desired .mp4 video file into the program's directory. This program contains a sample file. After you adding your media file delete the sample file. 
1. In case multiple mp4 files are present, the program will select and play only one of them.

## Time Configuration 

### Set your computer's time to desired timezone
```
https://www.pcworld.com/article/1513815/how-to-make-your-laptop-change-time-zones-automatically-in-windows-11.html
```

### Set start and stop time: 
The program will determine the video's start and end times based on your desired input to ***time.txt (time)*** file.
#### example of the time.txt file

```
10:00 
17:00
```
10:00  is start time and 17:00 is stop time

1. Open the "time.txt" file.
2. Specify the start time and stop time in 24 hour format for the video playback.

## Running the Program
Locate and double-click on the ***"Program.bat" (Program)*** file in the downloaded folder to initiate the process.
1. If you encounter a popup notification from Windows Defender or any antivirus software, please allow the program to run.

## Logs
Any activity or errors encountered by the program will be logged.
You can review these logs in the "logs.txt" file.


# Windows Auto Video Play
このプログラムは、タスクスケジューラを使用してWindowsマシンでビデオの再生を自動化します。

## インストール
リポジトリをクローンするか、直接ダウンロードしてください：
```
https://github.com/isankadn/windows-auto-video-play.git
```

ダウンロードが完了したら、ダウンロードしたプログラムをデスクトップに移動させ、それを解凍してください。

## 前提条件
1 Windowsシステムでの自動スリープおよび自動ロック機能が無効になっていることを確認してください。
2. 割り込みを防ぐために、コンピュータを継続的な電源に接続してください。
3. 管理者としてログインしていることを確認してください。
## メディアファイルの設定
希望する.mp4ビデオファイルをプログラムのディレクトリに配置してください。このプログラムにはサンプルファイルが含まれています。メディアファイルを追加した後、サンプルファイルを削除してください。

複数のmp4ファイルが存在する場合、プログラムはその中の1つだけを選択して再生します。
## 時間の設定
### 希望のタイムゾーンにコンピュータの時刻を設定してください
```
https://www.pcworld.com/article/1513815/how-to-make-your-laptop-change-time-zones-automatically-in-windows-11.html
```

## 開始と終了時刻の設定:
プログラムは、time.txt (time) ファイルにあるあなたの希望する入力に基づいて、ビデオの開始時刻と終了時刻を決定します。

time.txtファイルの例
```
10:00
17:00
```

10:00は開始時刻、17:00は終了時刻です。

1. "time.txt"ファイルを開きます。
2. ビデオの再生のための開始時刻と終了時刻を24時間形式で指定してください。

## プログラムの実行
ダウンロードしたフォルダ内の***"Program.bat (Program)***"ファイルを探して、ダブルクリックしてプロセスを開始します。
1. Windows Defenderや他のアンチウイルスソフトウェアからのポップアップ通知が表示された場合、プログラムの実行を許可してください。

## ログ
プログラムがエンカウンターした活動やエラーはログとして記録されます。
これらのログは"logs.txt"ファイルで確認することができます。