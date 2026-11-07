.class public Lgbsdk/common/host/ah;
.super Ljava/lang/Object;
.source "UserProfileReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final f:Landroid/os/Handler;


# instance fields
.field public a:Ljava/lang/String;

.field public final ag:Lgbsdk/common/host/ad;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lgbsdk/common/host/ah;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/ad;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/ah;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/ah;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lgbsdk/common/host/ah;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lgbsdk/common/host/ah;->ag:Lgbsdk/common/host/ad;

    .line 6
    iput-object p5, p0, Lgbsdk/common/host/ah;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "04ddffb26ad34cfaa74338d6599dc364"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ah;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Lgbsdk/common/host/ah;->f:Landroid/os/Handler;

    new-instance v2, Lgbsdk/common/host/af;

    invoke-direct {v2, p0, v0}, Lgbsdk/common/host/af;-><init>(Lgbsdk/common/host/ah;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "X-APIKEY"

    .line 5
    :try_start_1
    iget-object v2, p0, Lgbsdk/common/host/ah;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/apm/applog/AppLog;->getNetClient()Lcom/apm/applog/network/INetworkClient;

    move-result-object v1

    iget-object v2, p0, Lgbsdk/common/host/ah;->a:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/ah;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/apm/applog/network/INetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;)Lcom/apm/applog/network/NetworkResponse;

    .line 8
    sget-object v0, Lgbsdk/common/host/ah;->f:Landroid/os/Handler;

    new-instance v1, Lgbsdk/common/host/ag;

    invoke-direct {v1, p0}, Lgbsdk/common/host/ag;-><init>(Lgbsdk/common/host/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    .line 10
    sget-object v1, Lgbsdk/common/host/ah;->f:Landroid/os/Handler;

    new-instance v2, Lgbsdk/common/host/af;

    invoke-direct {v2, p0, v0}, Lgbsdk/common/host/af;-><init>(Lgbsdk/common/host/ah;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
