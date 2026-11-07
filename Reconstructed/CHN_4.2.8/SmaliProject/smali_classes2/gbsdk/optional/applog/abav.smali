.class public final Lgbsdk/optional/applog/abav;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lgbsdk/optional/applog/abav;


# instance fields
.field public final b:Landroid/content/pm/PackageManager;

.field public final c:Landroid/content/ComponentName;

.field public final d:Z

.field public final e:Lcom/bytedance/applog/store/kv/IKVStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdtracker_dr_migrate_detector"

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abeb;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/optional/applog/abav;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abav;->b:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/bytedance/applog/migrate/MigrateDetectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abav;->c:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abav;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/abav;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "component_state"

    invoke-interface {v1, v2, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    const-string v3, "MigrateDetector#isMigrateInternal cs="

    invoke-static {v3}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lgbsdk/optional/applog/abav;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lgbsdk/optional/applog/abav;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lgbsdk/optional/applog/abav;->d:Z

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const-string v1, "MigrateDetector#constructor migrate="

    invoke-static {v1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lgbsdk/optional/applog/abav;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lgbsdk/optional/applog/abav;
    .locals 2

    sget-object v0, Lgbsdk/optional/applog/abav;->a:Lgbsdk/optional/applog/abav;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/optional/applog/abav;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/optional/applog/abav;->a:Lgbsdk/optional/applog/abav;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/optional/applog/abav;

    invoke-direct {v1, p0}, Lgbsdk/optional/applog/abav;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/optional/applog/abav;->a:Lgbsdk/optional/applog/abav;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/optional/applog/abav;->a:Lgbsdk/optional/applog/abav;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "STATE_DISABLED"

    return-object p0

    :cond_1
    const-string p0, "STATE_ENABLED"

    return-object p0

    :cond_2
    const-string p0, "STATE_DEFAULT"

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MigrateDetector#disableComponent"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abav;->b:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lgbsdk/optional/applog/abav;->c:Landroid/content/ComponentName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v0, p0, Lgbsdk/optional/applog/abav;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "component_state"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    return-void
.end method
