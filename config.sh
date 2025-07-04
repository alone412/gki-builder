#!/usr/bin/env bash

# ─────────────────────────────────────
# Basic Info
# ─────────────────────────────────────
KERNEL_NAME="Shifa-v2"                   # Your custom kernel name
GKI_VERSION="android15-5.15"              # ✅ GKI version Android 15
DEVICE_CODENAME="oneplus12r"              # Optional use for ZIP naming

# ─────────────────────────────────────
# Build Info
# ─────────────────────────────────────
export TZ="Asia/Kolkata"
export KBUILD_BUILD_USER="abdul"
export KBUILD_BUILD_HOST="$KERNEL_NAME"
export KBUILD_BUILD_TIMESTAMP=$(date)

# ─────────────────────────────────────
# Kernel Source (only for non-manifest builds)
# ─────────────────────────────────────
KERNEL_REPO="https://github.com/OnePlusOSS/android_kernel_oneplus_sm8550"
KERNEL_BRANCH="oneplus/sm8550_v_15.0.0_oneplus_12r"

# ─────────────────────────────────────
# Defconfig
# ─────────────────────────────────────
KERNEL_DEFCONFIG="gki_defconfig"
DEFCONFIG_FILE="/arch/arm64/configs/${KERNEL_DEFCONFIG}"

# ─────────────────────────────────────
# AnyKernel3 ZIP Packaging
# ─────────────────────────────────────
ANYKERNEL_REPO="https://github.com/hazepynut/anykernel"
ANYKERNEL_BRANCH="gki"

# ─────────────────────────────────────
# Optional Defconfig Add-ons
# ─────────────────────────────────────
DEFCONFIGS="" # Keep empty unless you want to merge .config files

# ─────────────────────────────────────
# Releases Repo (Optional)
# ─────────────────────────────────────
GKI_RELEASES_REPO="https://github.com/alone412/quartix-releases"

# ─────────────────────────────────────
# Toolchain Config
# ─────────────────────────────────────
USE_AOSP_CLANG="false"
AOSP_CLANG_SOURCE="r547379" # Only used if AOSP clang is enabled

USE_CUSTOM_CLANG="true"
CUSTOM_CLANG_SOURCE="https://github.com/Rv-Project/RvClang/releases/download/20.1.0/RvClang-20.1.0-bolt-pgo-full_lto.tar.gz"
CUSTOM_CLANG_BRANCH=""

# ─────────────────────────────────────
# ZIP Output
# ─────────────────────────────────────
BUILD_DATE=$(date -d "$KBUILD_BUILD_TIMESTAMP" +"%Y-%m-%d-%H%M")
ZIP_NAME="${KERNEL_NAME}-A15-${DEVICE_CODENAME}-${BUILD_DATE}.zip"
