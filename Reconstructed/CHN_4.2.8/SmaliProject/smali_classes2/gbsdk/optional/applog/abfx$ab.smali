.class public final Lgbsdk/optional/applog/abfx$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abfx;->a(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lgbsdk/optional/applog/abfl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abfx$ab;->a:Landroid/content/Context;

    iput-object p2, p0, Lgbsdk/optional/applog/abfx$ab;->b:Lgbsdk/optional/applog/abfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfx$ab;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lgbsdk/optional/applog/abfx;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Lgbsdk/optional/applog/abfx;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lgbsdk/optional/applog/abfx;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lgbsdk/optional/applog/abfx;->a:Ljava/lang/String;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lgbsdk/optional/applog/abfx$ab;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    instance-of v3, v2, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/NoClassDefFoundError;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "Query Gaid failed"

    const/4 v5, 0x0

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lgbsdk/optional/applog/abfx$ab;->b:Lgbsdk/optional/applog/abfl;

    .line 7
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "google_aid"

    .line 8
    invoke-interface {v2, v3, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lgbsdk/optional/applog/abfx$ab;->b:Lgbsdk/optional/applog/abfl;

    .line 9
    iget-object v3, v3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v4, "google_aid"

    .line 10
    invoke-interface {v3, v4, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lgbsdk/optional/applog/abfx$ab;->b:Lgbsdk/optional/applog/abfl;

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "google_aid"

    .line 13
    invoke-interface {v1, v3, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 14
    :cond_5
    :goto_2
    sput-object v2, Lgbsdk/optional/applog/abfx;->a:Ljava/lang/String;

    .line 15
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 16
    :cond_6
    :goto_3
    sget-object v0, Lgbsdk/optional/applog/abfx;->a:Ljava/lang/String;

    return-object v0
.end method
