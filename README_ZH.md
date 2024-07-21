
# 隨機數字動畫

這個專案是一個 Bash 腳本，每次按下 Enter 鍵時會顯示從 1 到 9 的隨機數字。腳本包括數字變換的動畫效果，數字使用 ASCII art 格式顯示在屏幕中央。每次抽取的數字在所有數字都被抽取過之前不會重複。

![Demo](demo.gif)

## 功能

- 顯示從 1 到 9 的隨機數字。
- 數字以大型 ASCII art 格式顯示。
- 數字變化動畫效果逐漸變慢。
- 確保數字在所有數字都被顯示之前不會重複。

## 需求

- 安裝 `figlet` 工具。

## 安裝

使用以下命令安裝 `figlet`：
```bash
sudo apt-get install figlet
```

## 使用方法

1. 克隆倉庫：
   ```bash
   git clone https://github.com/yourusername/random-number-animation.git
   cd random-number-animation
   ```

2. 使腳本可執行：
   ```bash
   chmod +x random_number.sh
   ```

3. 運行腳本：
   ```bash
   ./random_number.sh
   ```

## 作者

此腳本由 ChatGPT 根據用戶需求撰寫。

## 分享鏈接

有關創建過程的更多詳情，請查看對話鏈接：[ChatGPT 對話](https://chatgpt.com/share/fdadc2ea-97f0-4519-b7e9-4b9420e9aa7d)

## 許可證

此專案採用 MIT 許可證。
