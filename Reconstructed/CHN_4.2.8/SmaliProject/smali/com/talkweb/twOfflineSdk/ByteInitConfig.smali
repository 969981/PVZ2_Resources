.class public Lcom/talkweb/twOfflineSdk/ByteInitConfig;
.super Ljava/lang/Object;
.source "ByteInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/talkweb/twOfflineSdk/ByteInitConfig$PackageChannel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2

    .line 29
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;-><init>()V

    const-string v1, "official"

    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;->packageChannel(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig$Builder;->build()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/talkweb/twOfflineSdk/ByteInitConfig$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/ByteInitConfig$1;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v1, v0}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    return-void
.end method
