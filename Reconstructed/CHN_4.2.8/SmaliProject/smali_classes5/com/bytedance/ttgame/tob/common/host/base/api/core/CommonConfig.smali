.class public Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig$Orientation;
    }
.end annotation


# static fields
.field public static final OSDK_PKG_TYPE_FORMAL:I = 0x0

.field public static final OSDK_PKG_TYPE_TEST:I = 0x1

.field public static final OSDK_TYPE_ACTIVITY_LINK:Ljava/lang/String; = "Omnichannel_ActivityLink"

.field public static final OSDK_TYPE_CONVERT:Ljava/lang/String; = "Android_Convert"

.field public static final OSDK_TYPE_DATA_LINK:Ljava/lang/String; = "Omnichannel_DataLink"

.field public static final OSDK_TYPE_ELSE:Ljava/lang/String; = "Android_Else"

.field public static final OSDK_TYPE_GAMEID:Ljava/lang/String; = "Android_GameId"

.field public static final OSDK_TYPE_MERGE:Ljava/lang/String; = "Android_Merge"

.field public static final OSDK_TYPE_OFFICIAL:Ljava/lang/String; = "Android_Official"

.field public static final OSDK_TYPE_SECTRANS:Ljava/lang/String; = "Android_SecTrans"

.field public static final UNION_MODE_ACTIVITY_LINK:I = 0xc

.field public static final UNION_MODE_CPS:I = 0x2

.field public static final UNION_MODE_DATA_LINK:I = 0xb

.field public static final UNION_MODE_DEFAULT:I = 0x64

.field public static final UNION_MODE_LIVE:I = 0x1

.field public static final UNION_MODE_NORMAL:I


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field public clientKey:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_key"
    .end annotation
.end field

.field public debugMode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug_mode"
    .end annotation
.end field

.field public osdkPkgType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osdk_pkg_type"
    .end annotation
.end field

.field public osdkType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osdk_type"
    .end annotation
.end field

.field public screenOrientation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screen_orientation"
    .end annotation
.end field

.field public skipModuleCheck:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_module_check"
    .end annotation
.end field

.field public unionMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "union_mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->debugMode:Z

    const/16 v1, 0x64

    .line 67
    iput v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    .line 73
    iput v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->osdkPkgType:I

    .line 77
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->skipModuleCheck:Z

    return-void
.end method
