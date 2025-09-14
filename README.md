# HTC Jetstream - LineageOS 17.1 (Android 10)

Custom Android 10 ROM for HTC Jetstream tablet based on LineageOS 17.1.

## Build Instructions

```bash
repo init -u https://github.com/LineageOS/android.git -b lineage-17.1
repo sync -j$(nproc)
git clone https://github.com/numack4250/htc-jetstream-lineage17.1 device/htc/jetstream
source build/envsetup.sh
lunch lineage_jetstream-userdebug
bash build.sh
fastboot flash recovery twrp.img
fastboot reboot recovery
# In TWRP: Flash lineage-17.1-UNOFFICIAL-jetstream.zip
