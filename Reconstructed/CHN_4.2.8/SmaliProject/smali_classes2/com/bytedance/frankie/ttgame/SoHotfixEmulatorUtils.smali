.class public Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;
.super Ljava/lang/Object;
.source "SoHotfixEmulatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initEmulator()Z
    .locals 1

    .line 12
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->nativeSoHotfixEmulatorUtilsInit()Z

    move-result v0

    return v0
.end method

.method public static lockEmulatorDlMutex()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->nativeLockEmulatorDlMutex()V

    return-void
.end method

.method private static native nativeLockEmulatorDlMutex()V
.end method

.method private static native nativeSoHotfixEmulatorUtilsInit()Z
.end method

.method private static native nativeUnLockEmulatorDlMutex()V
.end method

.method public static unLockEmulatorDlMutex()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixEmulatorUtils;->nativeUnLockEmulatorDlMutex()V

    return-void
.end method
