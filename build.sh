```bash
#!/bin/bash
echo "🔧 Starting build for HTC Jetstream (LineageOS 17.1)..."
source build/envsetup.sh
lunch lineage_jetstream-userdebug
make otapackage -j$(nproc)
echo "✅ Build complete. Find your flashable ZIP in out/target/product/jetstream/"
