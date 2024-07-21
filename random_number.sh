#!/bin/bash

# 初始化數字列表
numbers=(1 2 3 4 5 6 7 8 9)
used_numbers=()

# 定義一個函數來打亂數字列表
shuffle_numbers() {
  for ((i=${#numbers[@]}-1; i>0; i--)); do
    j=$((RANDOM % (i+1)))
    tmp=${numbers[i]}
    numbers[i]=${numbers[j]}
    numbers[j]=$tmp
  done
}

# 定義一個函數來顯示動畫效果
show_animation() {
  local delay=0.05
  local total_duration=3
  local end_time=$((SECONDS + total_duration))

  while [ $SECONDS -lt $end_time ]; do
    for n in {1..9}; do
      clear
      output=$(figlet -f big $n)
      width=$(echo "$output" | wc -L)
      padding=$(( (100 - width) / 2 ))
      echo -e "\033[0;0H"
      echo "$output" | while IFS= read -r line; do
        printf "%*s\n" $((padding + ${#line})) "$line"
      done
      sleep $delay
    done
    delay=$(echo "$delay + 0.05" | bc)
  done
}

# 開始無限循環
while true; do
  # 如果所有數字都被使用過，重新初始化列表
  if [ ${#used_numbers[@]} -eq 9 ]; then
    used_numbers=()
  fi

  # 確保數字不重複
  while true; do
    shuffle_numbers
    number=${numbers[0]}
    if [[ ! " ${used_numbers[@]} " =~ " ${number} " ]]; then
      used_numbers+=($number)
      break
    fi
  done

  # 顯示動畫效果
  show_animation

  # 顯示選擇的數字
  clear
  output=$(figlet -f big $number)
  width=$(echo "$output" | wc -L)
  padding=$(( (100 - width) / 2 ))
  echo -e "\033[0;0H"
  echo "$output" | while IFS= read -r line; do
    printf "%*s\n" $((padding + ${#line})) "$line"
  done

  # 等待用戶按下 Enter
  read -p "Press Enter to get a number (Ctrl+C to quit)"
done

