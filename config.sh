#!/usr/bin/env bash

# ==============================
#   Kernel Build Configuration
# ==============================

# Kernel name
KERNEL_NAME="QuartiX-v2"

# GKI version (for OnePlus 12R A15)
GKI_VERSION="android14-5.15"

# Build identity
export TZ="Asia/Kolkata"
export KBUILD_BUILD_USER="abhi"
export KBUILD_BUILD_HOST="${KERNEL_NAME}"
export KBUILD_BUILD_TIMESTAMP="$(date)"

# ==============================
#   Kernel Source Configuration
# ==============================

# Kernel source
KERNEL_REPO="https://github.com/OnePlusOSS/android_kernel_oneplus_sm8550"
KERNEL_BRANCH="oneplus/sm8550_u_14.0.0"
KERNEL_DEFCONFIG="gki_defconfig"
DEFCONFIG_FILE="$workdir/common/arch/arm64/configs/${KERNEL_DEFCONFIG}"

# Additional defconfigs (if required)
DEFCONFIGS=""  # Leave empty unless merging more .config files

# ==============================
#   AnyKernel Packaging
# ==============================

ANYKERNEL_REPO="https://github.com/TanakaLun/AnyKernel3"
ANYKERNEL_BRANCH="main"

# ==============================
#   Compiler Options
# ==============================

# AOSP Clang (Disabled)
USE_AOSP_CLANG="false"
AOSP_CLANG_SOURCE="r547379"  # Optional if enabled

# Custom Clang (RvClang - enabled)
USE_CUSTOM_CLANG="true"
CUSTOM_CLANG_SOURCE="https://github.com/Rv-Project/RvClang/releases/download/20.1.0/RvClang-20.1.0-bolt-pgo-full_lto.tar.gz"
CUSTOM_CLANG_BRANCH=""

# ==============================
#   Optional Modules
# ==============================

# Enable KernelSU Next
KSU="Next"

# Enable SUSFS Patch
USE_KSU_SUSFS="true"

# Use manual hook (optional for Next+SUSFS)
USE_KSU_MANUAL_HOOK="true"

# Create boot image (only if device needs it)
BUILD_BOOTIMG="false"

# Build kernel modules (LKM)
BUILD_LKMS="false"

# Generate defconfig from .config after build
GENERATE_DEFCONFIG="false"

# Is this the last build? (used in metadata)
LAST_BUILD="true"

# ==============================
#   Final Output
# ==============================

BUILD_DATE="$(date -d "$KBUILD_BUILD_TIMESTAMP" +"%Y-%m-%d-%H%M")"
ZIP_NAME="${KERNEL_NAME}-KVER-VARIANT.zip"  # Will be replaced during build
