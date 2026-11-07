.class public Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;
.super Ljava/lang/Object;
.source "CloudGameInfo.java"


# instance fields
.field public cloudGameName:Ljava/lang/String;

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hostAndroidId:Ljava/lang/String;

.field public hostCaid:Ljava/lang/String;

.field public hostDeviceModel:Ljava/lang/String;

.field public hostIdfa:Ljava/lang/String;

.field public hostImei:Ljava/lang/String;

.field public hostIp:Ljava/lang/String;

.field public hostMac:Ljava/lang/String;

.field public hostOaid:Ljava/lang/String;

.field public hostOsType:Ljava/lang/String;

.field public hostPackageName:Ljava/lang/String;

.field public hostUserAgent:Ljava/lang/String;

.field public hostVersionCode:I

.field public hostVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;->extra:Ljava/util/Map;

    return-void
.end method
