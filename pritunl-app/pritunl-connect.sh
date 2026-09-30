#!/bin/bash

# Script kết nối Pritunl VPN
# Tạo OTP code và kết nối

# Tạo mã OTP từ secret key
OTP=$(oathtool --totp -b PUDMJ3FBKSFGYDNV)

# Chạy lệnh pritunl-client với OTP
pritunl-client start -p "$OTP" vamo19rsfadibo8z

# Hiển thị thông báo
if [ $? -eq 0 ]; then
    notify-send "Pritunl VPN" "Đã kết nối thành công!" -i network-vpn
else
    notify-send "Pritunl VPN" "Kết nối thất bại!" -i dialog-error
fi
