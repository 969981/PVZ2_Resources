.class public Lgbsdk/optional/applog/abad;
.super Lgbsdk/optional/applog/aber;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abad$ab;
    }
.end annotation


# static fields
.field public static a:Lgbsdk/optional/applog/abad;


# instance fields
.field public final b:Lcom/bytedance/applog/store/kv/IKVStore;

.field public c:Lcom/bytedance/applog/store/kv/IKVStore;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lgbsdk/optional/applog/aber;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/optional/applog/abad;->d:Z

    invoke-static {p1, p2}, Lgbsdk/optional/applog/abeb;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abad;->b:Lcom/bytedance/applog/store/kv/IKVStore;

    iput-boolean p3, p0, Lgbsdk/optional/applog/abad;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lgbsdk/optional/applog/aber;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/optional/applog/abad;->d:Z

    invoke-static {p1, p2, p3}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p3

    iput-object p3, p0, Lgbsdk/optional/applog/abad;->b:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-static {p1, p2, p4}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abad;->c:Lcom/bytedance/applog/store/kv/IKVStore;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 7

    const-string v0, "SharedPreferenceCacheHelper"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0, p1}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Failed to migrate shared preferences."

    :try_start_2
    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    :goto_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Create protected storage context failed"

    invoke-interface {v3, v0, v4, p0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move-object p0, v2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lgbsdk/optional/applog/abad;
    .locals 4

    const-class v0, Lgbsdk/optional/applog/abad;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/optional/applog/abad;->a:Lgbsdk/optional/applog/abad;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/optional/applog/abad;

    const-string v2, "_global_cache"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lgbsdk/optional/applog/abad;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v1, Lgbsdk/optional/applog/abad;->a:Lgbsdk/optional/applog/abad;

    :cond_0
    sget-object p0, Lgbsdk/optional/applog/abad;->a:Lgbsdk/optional/applog/abad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lgbsdk/optional/applog/abad$ab;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    :try_start_1
    invoke-interface {p2}, Lgbsdk/optional/applog/abad$ab;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abad;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abad;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgbsdk/optional/applog/abad;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lgbsdk/optional/applog/abad;->d:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    iget-boolean v1, p0, Lgbsdk/optional/applog/abad;->d:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    return-void
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 1

    const-string v0, "device_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgbsdk/optional/applog/abad;->c:Lcom/bytedance/applog/store/kv/IKVStore;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abad;->b:Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abad;->d(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_0
    invoke-super {p0, p1}, Lgbsdk/optional/applog/aber;->e(Ljava/lang/String;)V

    return-void
.end method
