.class public Lgbsdk/optional/applog/abeb;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/store/kv/IKVStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 5

    sget-object v0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "global"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    const-string v1, "[{}][KVStore]KVStoreUtil find KVStore cache, sp_name: {}"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/store/kv/IKVStore;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string v1, "[{}][KVStore]KVStoreUtil create global default KVStore, sp_name: {}"

    invoke-interface {v0, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lgbsdk/optional/applog/abdi;

    invoke-direct {v0, v4, p0, p1}, Lgbsdk/optional/applog/abdi;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;
    .locals 7

    sget-object v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->DEFAULT_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/applog/InitConfig;->getKvStoreConfig()Lcom/bytedance/applog/store/kv/KVStoreConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v5, "[{}][KVStore]KVStoreUtil createKVStore init config is null"

    invoke-interface {p0, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v4, 0x2

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v2

    aput-object p2, p1, v1

    const-string v0, "[{}][KVStore]KVStoreUtil find KVStore cache, sp_name: {}"

    invoke-interface {p0, v0, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/store/kv/IKVStore;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/applog/store/kv/KVStoreConfig;->getAesKey()Ljava/lang/String;

    move-result-object p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "[{}][KVStore]KVStoreUtil createKVStore use SecurityKVStore, sp_name: {}"

    :try_start_1
    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object p2, v6, v1

    invoke-interface {v0, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lgbsdk/optional/applog/abdv;

    invoke-direct {p0, v3, p1, p2}, Lgbsdk/optional/applog/abdv;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lgbsdk/optional/applog/abdv;

    invoke-direct {v0, v3, p1, p2, p0}, Lgbsdk/optional/applog/abdv;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    const-string v1, "[{}][KVStore]KVStoreUtil createKVStore use SecurityKVStore failed, use DefaultKVStore, sp_name: {}"

    invoke-interface {v0, v1, p0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-static {p1, p2, v2}, Lgbsdk/optional/applog/abad;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0, v3}, Lgbsdk/optional/applog/abeb;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance p0, Lgbsdk/optional/applog/abdi;

    invoke-direct {p0, v3, p1, p2}, Lgbsdk/optional/applog/abdi;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 2
    :cond_3
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string v1, "[{}][KVStore]KVStoreUtil createKVStore use DefaultKVStore, sp_name: {}"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lgbsdk/optional/applog/abdi;

    invoke-direct {p0, v3, p1, p2}, Lgbsdk/optional/applog/abdi;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lgbsdk/optional/applog/abeb;->a:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "[{}][KVStore]kv clear failed, preferences == null: {}"

    invoke-interface {p0, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v3, v5, v1

    const-string v3, "[{}][KVStore]SecurityKVStore kv change, delete key: {}"

    invoke-interface {v4, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
