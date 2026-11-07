.class public final Lgbsdk/common/host/abuq;
.super Ljava/lang/Object;
.source "SalvageLog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/salvage/SalvageLog;",
        "",
        "()V",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "onPrivacyAgreed",
        "ch_delegate_impl_osdk_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ER:Lgbsdk/common/host/abuq;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abuq;

    invoke-direct {v0}, Lgbsdk/common/host/abuq;-><init>()V

    sput-object v0, Lgbsdk/common/host/abuq;->ER:Lgbsdk/common/host/abuq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ay(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abuq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "7ce7b2c6e63e24505caf977a4de9a997"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abuq;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abuq;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4953a8592e23592be5f463ce0b7492d7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->builder()Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 23
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAppContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->context(Landroid/content/Context;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object v0

    const-string v1, "234224"

    .line 28
    invoke-virtual {v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aid(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object v0

    const-string v1, "ae38201548e7452cb9d7f0a231475238"

    .line 29
    invoke-virtual {v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->token(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object v0

    .line 30
    sget-object v1, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abqs;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->channel(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object v0

    .line 31
    sget-object v1, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abqs;->al(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->debugMode(Z)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getHostVersion()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->updateVersionCode(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object p1

    .line 33
    new-instance v0, Lgbsdk/common/host/abuq$ab;

    invoke-direct {v0}, Lgbsdk/common/host/abuq$ab;-><init>()V

    check-cast v0, Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    invoke-virtual {p1, v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->setDynamicParams(Lcom/monitor/cloudmessage/config/SDKIDynamicParams;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->build()Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    move-result-object p1

    .line 51
    invoke-static {}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->getInstance()Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apmplus/sdk/cloudmessage/SDKCloudManager;->init(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;)V

    return-void
.end method
