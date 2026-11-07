.class public Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;,
        Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$PackageChannel;
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field protected cloudGameInfo:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

.field protected extraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected packageChannel:Ljava/lang/String;

.field protected packageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->packageChannel:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->packageTag:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->extraInfo:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCloudGameInfo()Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->cloudGameInfo:Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->extraInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPackageChannel()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->packageChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageTag()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->packageTag:Ljava/lang/String;

    return-object v0
.end method
