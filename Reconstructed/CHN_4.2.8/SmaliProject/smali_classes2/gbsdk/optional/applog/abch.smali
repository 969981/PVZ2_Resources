.class public Lgbsdk/optional/applog/abch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Landroid/os/Handler;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/json/JSONObject;

.field public final e:Lcom/bytedance/applog/profile/UserProfileCallback;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bytedance/bdtracker/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lgbsdk/optional/applog/abch;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abch;->g:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abch;->b:Ljava/lang/String;

    iput-object p3, p0, Lgbsdk/optional/applog/abch;->c:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/optional/applog/abch;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lgbsdk/optional/applog/abch;->e:Lcom/bytedance/applog/profile/UserProfileCallback;

    iput-object p6, p0, Lgbsdk/optional/applog/abch;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abch;->f:Landroid/content/Context;

    invoke-static {v1}, Lgbsdk/optional/applog/abek;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1
    sget-object v1, Lgbsdk/optional/applog/abch;->a:Landroid/os/Handler;

    new-instance v2, Lgbsdk/optional/applog/abds;

    invoke-direct {v2, p0, v0}, Lgbsdk/optional/applog/abds;-><init>(Lgbsdk/optional/applog/abch;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "X-APIKEY"

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abch;->c:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lgbsdk/optional/applog/abch;->g:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lgbsdk/optional/applog/abch;->b:Ljava/lang/String;

    iget-object v5, p0, Lgbsdk/optional/applog/abch;->d:Lorg/json/JSONObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 3
    sget-object v1, Lgbsdk/optional/applog/abch;->a:Landroid/os/Handler;

    new-instance v2, Lgbsdk/optional/applog/abck;

    invoke-direct {v2, p0}, Lgbsdk/optional/applog/abck;-><init>(Lgbsdk/optional/applog/abch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    iget-object v2, p0, Lgbsdk/optional/applog/abch;->g:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v3, 0x9

    const-string v4, "Report profile failed"

    .line 6
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    sget-object v1, Lgbsdk/optional/applog/abch;->a:Landroid/os/Handler;

    new-instance v2, Lgbsdk/optional/applog/abds;

    invoke-direct {v2, p0, v0}, Lgbsdk/optional/applog/abds;-><init>(Lgbsdk/optional/applog/abch;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
