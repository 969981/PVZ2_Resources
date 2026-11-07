.class public final Lgbsdk/common/host/absw$ad;
.super Ljava/lang/Object;
.source "ZeusManager.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/absw;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/util/List;Lcom/volcengine/zeus/download/IZeusDownloadListener;Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/bytedance/ttgame/tob/common/host/main/plugin/ZeusManager$initGlobalParamToZeus$2$1$innerDownloadInterceptor$1",
        "Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInterceptor;",
        "intercept",
        "",
        "ch_main_tobRelease"
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
.field final synthetic aEL:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/absw$ad;->aEL:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absw$ad;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cd02e8bac4daec7a0e556080c200972d"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 970
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/absw$ad;->aEL:Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/volcengine/zeus/download/IZeusDownloadInterceptor;->intercept()Z

    move-result v0

    :cond_1
    return v0
.end method
