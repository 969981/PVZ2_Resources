.class public Lgbsdk/optional/applog/abaj;
.super Lgbsdk/optional/applog/abcq;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgbsdk/optional/applog/abcq;-><init>(ZZ)V

    iput-object p1, p0, Lgbsdk/optional/applog/abaj;->b:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abaj;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SigHash"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgbsdk/optional/applog/abaj;->a:Landroid/content/Context;

    iget-object v3, p0, Lgbsdk/optional/applog/abaj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    .line 1
    invoke-static {v2, v3, v4}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 2
    iget-object v3, p0, Lgbsdk/optional/applog/abaj;->b:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Get package info failed"

    .line 4
    invoke-interface {v3, v5, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    aget-object v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lgbsdk/optional/applog/abfe;->b([B)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "sig_hash"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
