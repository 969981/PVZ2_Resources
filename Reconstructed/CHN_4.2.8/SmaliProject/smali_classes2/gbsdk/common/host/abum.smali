.class public final Lgbsdk/common/host/abum;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final EW:[Ljava/lang/String;

.field public static final FLAVOR:Ljava/lang/String; = "tob"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.bytedance.ttgame.tob.common.host.main"

.field public static final VERSION_CODE:I = 0x61a8

.field public static final VERSION_NAME:Ljava/lang/String; = "2.5.0.0-rc6"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "screenrecord"

    const-string v1, "ug"

    const-string v2, "debug"

    const-string v3, "videoeditor"

    const-string v4, "cloudgame"

    const-string v5, "cps"

    const-string v6, "profile"

    const-string v7, "datalink"

    const-string v8, "share"

    const-string v9, "union"

    const-string v10, "livebroadcast"

    const-string v11, "player"

    .line 11
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abum;->EW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
