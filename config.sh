#!/usr/bin/env bash

# Kernel name
KERNEL_NAME="QuartiX-v2"

# GKI Version (use correct GKI branch for OnePlus 12R)
GKI_VERSION="android13-5.15"

# Build identity
export TZ="Asia/Kolkata"
export KBUILD_BUILD_USER="abdul"
export KBUILD_BUILD_HOST="$KERNEL_NAME"
export KBUILD_BUILD_TIMESTAMP=$(date)

# AnyKernel3
ANYKERNEL_REPO="https://github.com/TanakaLun/AnyKernel3"
ANYKERNEL_BRANCH="gki"

# Kernel source
KERNEL_REPO="https://github.com/OnePlusOSS/android_kernel_oneplus_sm8550"
KERNEL_BRANCH="oneplus/SM8550_A13"

# Defconfig
KERNEL_DEFCONFIG="gki_defconfig"
DEFCONFIG_FILE="$workdir/common/arch/arm64/configs/$KERNEL_DEFCONFIG"

# Optional merge defconfigs
DEFCONFIGS=""

# Release target repo (used in artifacts/info.txt)
GKI_RELEASES_REPO="https://github.com/alone412/12r-kernel-releases"

# Toolchain: Use custom Clang from RvClang
USE_AOSP_CLANG="false"
AOSP_CLANG_SOURCE=""

USE_CUSTOM_CLANG="true"
CUSTOM_CLANG_SOURCE="https://github.com/Rv-Project/RvClang/releases/download/20.1.0/RvClang-20.1.0-bolt-pgo-full_lto.tar.gz"
CUSTOM_CLANG_BRANCH=""

# Build zip name
BUILD_DATE=$(date -d "$KBUILD_BUILD_TIMESTAMP" +"%Y-%m-%d-%H%M")
ZIP_NAME="$KERNEL_NAME-KVER-VARIANT.zip"  # Will be auto-filled later
