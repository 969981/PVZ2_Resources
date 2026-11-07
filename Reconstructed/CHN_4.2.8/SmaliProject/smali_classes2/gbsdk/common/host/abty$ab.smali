.class public final Lgbsdk/common/host/abty$ab;
.super Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;
.source "GodzillaHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0003H\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0004R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/GodzillaHelper$DownloadPluginHandler;",
        "Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;",
        "jsonObject",
        "",
        "(Ljava/lang/String;)V",
        "isAllow",
        "",
        "()Z",
        "setAllow",
        "(Z)V",
        "pluginPackageName",
        "getPluginPackageName",
        "()Ljava/lang/String;",
        "setPluginPackageName",
        "version",
        "",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "getInfo",
        "handle",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private ED:Ljava/lang/String;

.field private EE:Z

.field private kQ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DownloadPluginHandler"

    .line 108
    invoke-direct {p0, v0}, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lgbsdk/common/host/abty$ab;->ED:Ljava/lang/String;

    .line 115
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "pluginPackageName"

    .line 116
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "json.optString(\"pluginPackageName\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lgbsdk/common/host/abty$ab;->ED:Ljava/lang/String;

    const-string p1, "version"

    .line 117
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lgbsdk/common/host/abty$ab;->kQ:I

    const-string p1, "isAllow"

    .line 118
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lgbsdk/common/host/abty$ab;->EE:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public at(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/common/host/abty$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "6b8d6fe417beee7882a72c7172f27cc0"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abty$ab;->ED:Ljava/lang/String;

    iget v0, p0, Lgbsdk/common/host/abty$ab;->kQ:I

    iget-boolean v1, p0, Lgbsdk/common/host/abty$ab;->EE:Z

    invoke-static {p1, v0, v1}, Lcom/volcengine/zeus/Zeus;->setAllowDownloadPlugin(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abty$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "51a73c20105bcb6db5bb0459a420004e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lgbsdk/common/host/abty$ab;->ED:Ljava/lang/String;

    return-void
.end method

.method public final eO()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lgbsdk/common/host/abty$ab;->EE:Z

    return v0
.end method

.method public eP()Ljava/lang/String;
    .locals 1

    const-string v0, "DownloadPluginHandler"

    return-object v0
.end method

.method public final getPluginPackageName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lgbsdk/common/host/abty$ab;->ED:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 110
    iget v0, p0, Lgbsdk/common/host/abty$ab;->kQ:I

    return v0
.end method

.method public final r(I)V
    .locals 0

    .line 110
    iput p1, p0, Lgbsdk/common/host/abty$ab;->kQ:I

    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lgbsdk/common/host/abty$ab;->EE:Z

    return-void
.end method
