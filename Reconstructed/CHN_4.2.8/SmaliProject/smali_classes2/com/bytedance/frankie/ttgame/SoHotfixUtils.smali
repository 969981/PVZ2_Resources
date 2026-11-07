.class public Lcom/bytedance/frankie/ttgame/SoHotfixUtils;
.super Ljava/lang/Object;
.source "SoHotfixUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentHostAbi()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeGetHostAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadedSo()[Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeGetLoadedSo()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadedSoFromMaps()[Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeGetLoadedSoFromMaps()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()Z
    .locals 1

    .line 18
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeSoHotfixUtilsInit()Z

    move-result v0

    return v0
.end method

.method public static lockDlMutex()V
    .locals 0

    .line 22
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeLockDlMutex()V

    return-void
.end method

.method private static native nativeGetHostAbi()Ljava/lang/String;
.end method

.method private static native nativeGetLoadedSo()[Ljava/lang/String;
.end method

.method private static native nativeGetLoadedSoFromMaps()[Ljava/lang/String;
.end method

.method private static native nativeLockDlMutex()V
.end method

.method private static native nativeSoHotfixUtilsInit()Z
.end method

.method private static native nativeUnLockDlMutex()V
.end method

.method public static unLockDlMutex()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/bytedance/frankie/ttgame/SoHotfixUtils;->nativeUnLockDlMutex()V

    return-void
.end method
