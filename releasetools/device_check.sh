#!/sbin/sh
#
# Copyright (C) 2016 CyanogenMod Project
# Copyright (C) 2018 LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_MODEL=`getprop ro.product.model`
NFC_MODEL="T1-A21W T1-A21L T1-A23L"

RESULT=$(echo $NFC_MODEL | grep "$PRODUCT_MODEL")

if [[ "$RESULT" = "" ]]
then
    # Remove NFC
    rm /system/vendor/etc/permissions/android.hardware.nfc.xml
fi
