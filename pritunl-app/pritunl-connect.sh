#!/bin/bash

# Script kết nối Pritunl VPN
# Tạo OTP code và kết nối

# Tạo mã OTP từ secret key
OTP=$(oathtool --totp -b PUDMJ3FBKSFGYDNV)

# Lấy vpn id
PROFILE_ID=$(pritunl-client list | grep -F 'facffm-staging-hetzner' | awk -F '|' '{gsub(/[ \t]/, "", $2); print $2}')

# Chạy lệnh pritunl-client với OTP
pritunl-client start -p "$OTP" "$PROFILE_ID"

# Hiển thị thông báo
if [ $? -eq 0 ]; then
    notify-send "Pritunl VPN" "Đã kết nối thành công!" -i network-vpn
else
    notify-send "Pritunl VPN" "Kết nối thất bại!" -i dialog-error
fi