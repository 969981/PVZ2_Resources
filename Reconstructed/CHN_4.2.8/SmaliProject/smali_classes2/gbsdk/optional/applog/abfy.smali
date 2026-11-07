.class public Lgbsdk/optional/applog/abfy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public volatile b:Z

.field public final c:Landroid/content/Context;

.field public final d:Lgbsdk/optional/applog/abfl;

.field public volatile e:Lorg/json/JSONObject;

.field public f:Z

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgbsdk/optional/applog/abcq;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/bytedance/applog/store/kv/IKVStore;

.field public final i:Lgbsdk/optional/applog/abfp;

.field public final j:Lcom/bytedance/bdtracker/d;

.field public k:I

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "channel"

    const-string v1, "package"

    const-string v2, "app_version"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/optional/applog/abfy;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lgbsdk/optional/applog/abfy;->k:I

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lgbsdk/optional/applog/abfy;->l:Ljava/util/Set;

    iput-boolean v0, p0, Lgbsdk/optional/applog/abfy;->m:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lgbsdk/optional/applog/abfy;->n:Ljava/util/Set;

    iput-object p1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iput-object p3, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object p2, p3, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 2
    iput-object p2, p0, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 3
    iget-object p2, p1, Lcom/bytedance/bdtracker/d;->d:Lgbsdk/optional/applog/aben;

    .line 4
    iget-object p3, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p2, p1, p3, v1}, Lgbsdk/optional/applog/aben;->a(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;)Lgbsdk/optional/applog/abfp;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string p2, "forbid_report_phone_detail_info"

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lgbsdk/optional/applog/abfy;->m:Z

    .line 5
    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 6
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string p2, "is_first_app_launch"

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 7
    iget-object p3, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 8
    iget-object p3, p3, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {p3}, Lcom/bytedance/applog/InitConfig;->getUserUniqueId()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 10
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getUserUniqueIdType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lgbsdk/optional/applog/abfy;->e(Ljava/lang/String;)Z

    :cond_0
    invoke-static {v1}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abfy;->f(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 12
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_2
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "install_id"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bd_did"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v3}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lgbsdk/optional/applog/abfm;

    .line 7
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0, v1, p1, p2, p3}, Lgbsdk/optional/applog/abfm;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    instance-of v1, v0, Lgbsdk/optional/applog/abfp;

    if-eqz v1, :cond_4

    .line 1
    iget-object v1, v0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    iget-object v2, v0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceParamsProvider#clearDidAndIid clearKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sDeviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lgbsdk/optional/applog/abfp;->e:Ljava/lang/String;

    const-string v1, "clear_key_prefix"

    invoke-static {v1, p1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lgbsdk/optional/applog/abfp;->m:Lgbsdk/optional/applog/abfl;

    .line 4
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 5
    iget-object v3, v0, Lgbsdk/optional/applog/abfp;->h:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lgbsdk/optional/applog/abeb;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_3

    invoke-interface {v2, v1, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "device_id"

    invoke-interface {v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_1
    const-string v3, "install_id"

    invoke-interface {v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_2
    iget-object v2, v0, Lgbsdk/optional/applog/abfp;->i:Lgbsdk/optional/applog/aber;

    invoke-virtual {v2, v1}, Lgbsdk/optional/applog/aber;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 7
    iget-object v0, v0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "clearKey:{} installId and deviceId finish"

    invoke-interface {v1, v0, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lgbsdk/optional/applog/abfp;->l:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    iget-object v0, v0, Lgbsdk/optional/applog/abfp;->n:Ljava/util/List;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "clearKey:{} is already cleared"

    invoke-interface {v1, v0, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 11
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v0, "device_token"

    .line 12
    invoke-interface {p1, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 9
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p2}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lgbsdk/optional/applog/abbs;->onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfy;->s()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 42
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "DeviceManager"

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Set custom header failed"

    invoke-interface {v1, v2, v4, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfy;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9

    .line 44
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 47
    monitor-enter p0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v5, v4}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v4, p0, Lgbsdk/optional/applog/abfy;->b:Z

    if-nez v4, :cond_2

    if-nez p2, :cond_2

    iget-object v4, p0, Lgbsdk/optional/applog/abfy;->l:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, v5}, Lgbsdk/optional/applog/abfy;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    iget-object v5, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 48
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "DeviceManager"

    .line 49
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "Update header:{} to value:{} failed"

    :try_start_2
    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v2

    aput-object p2, v8, v1

    invoke-interface {v5, v6, v7, v4, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v4, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 50
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v5, "DeviceManager"

    .line 51
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v0, v6, v1

    aput-object p2, v6, v3

    const-string p1, "Update header:{} from old:{} to new value:{}"

    invoke-interface {v4, v5, p1, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    iget-boolean v3, p0, Lgbsdk/optional/applog/abfy;->b:Z

    if-nez v3, :cond_4

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    iget-object p2, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 52
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v0, "\u672a\u521d\u59cb\u5316\u65f6\u90fd\u4e3a null \u65e0\u6cd5\u505a\u5230\u8d4b\u503c\u7684: "

    .line 53
    invoke-static {v0, p1}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v5, p6

    monitor-enter p0

    :try_start_0
    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "DeviceManager"

    .line 14
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveRegisterInfo -> uuid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", did:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", iid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", ssid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", did:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cd:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", response:{}"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-interface {v4, v6, v8, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "saveRegisterInfo interrupted for uuid is changed"

    .line 16
    invoke-interface {v0, v11, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v11

    :cond_0
    :try_start_1
    const-string v2, "new_user"

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lgbsdk/optional/applog/abfy;->f:Z

    const-string v2, "device_token"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v12

    invoke-static/range {p4 .. p4}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v14

    invoke-static/range {p6 .. p6}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v15

    invoke-static/range {p7 .. p7}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static/range {p5 .. p5}, Lgbsdk/optional/applog/abce;->e(Ljava/lang/String;)Z

    move-result v4

    iget-object v6, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v8, "version_code"

    invoke-interface {v6, v8, v13}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 17
    iget-object v8, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v11, "version_code"

    .line 18
    invoke-virtual {v8, v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v6, v8, :cond_2

    iget-object v6, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v11, "version_code"

    invoke-interface {v6, v11, v8}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_2
    iget-object v6, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v8, "channel"

    const-string v11, ""

    invoke-interface {v6, v8, v11}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    iget-object v8, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v11, "channel"

    const-string v13, ""

    .line 20
    invoke-virtual {v8, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v11, "channel"

    invoke-interface {v6, v11, v8}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_3
    iget-object v6, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v8, "device_token"

    invoke-interface {v6, v8, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    if-nez v12, :cond_4

    if-eqz v15, :cond_5

    if-eqz v10, :cond_5

    :cond_4
    if-eqz v14, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "register_time"

    invoke-interface {v0, v2, v8, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "register_time"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-nez v12, :cond_7

    if-eqz v15, :cond_6

    if-nez v10, :cond_7

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "response"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v6, "tt_fetch_did_error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v8, 0x0

    .line 21
    :try_start_6
    invoke-virtual {v0, v6, v2, v8}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 22
    :cond_7
    :goto_1
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    .line 23
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfp;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "bd_did"

    const/4 v8, 0x0

    invoke-interface {v2, v6, v8}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v8, "DeviceManager"

    .line 25
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device: od="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " nd="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ck="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    new-array v13, v11, [Ljava/lang/Object;

    invoke-interface {v2, v8, v9, v13}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_9

    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v8, "device_id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v8, v2}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v8}, Lgbsdk/optional/applog/abfy;->d(Lorg/json/JSONObject;)V

    .line 26
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    .line 27
    invoke-virtual {v2, v3}, Lgbsdk/optional/applog/abfp;->a(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :cond_a
    :goto_3
    if-eqz v15, :cond_b

    const-string v0, "bd_did"

    invoke-virtual {v1, v0, v5}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "bd_did"

    invoke-interface {v0, v2, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 v8, 0x1

    .line 28
    :cond_b
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v2, "install_id"

    const-string v3, ""

    .line 29
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_c

    const-string v2, "install_id"

    invoke-virtual {v1, v2, v7}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "install_id"

    invoke-interface {v2, v3, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 v8, 0x1

    .line 30
    :cond_c
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v3, "ssid"

    const-string v9, ""

    .line 31
    invoke-virtual {v2, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_d

    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Lgbsdk/optional/applog/abfy;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v11, p5

    :cond_e
    move v3, v8

    :goto_4
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 32
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    if-eqz v2, :cond_f

    .line 33
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 34
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    move-object v4, v6

    move-object/from16 v5, p6

    move-object v6, v0

    move-object/from16 v7, p4

    move-object v8, v9

    move-object/from16 v9, p5

    .line 35
    invoke-virtual/range {v2 .. v9}, Lgbsdk/optional/applog/abbs;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    const/4 v4, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v2, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 36
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v3, "DeviceManager"

    .line 37
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "JSON handle failed"

    invoke-interface {v2, v3, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    if-nez v12, :cond_10

    if-eqz v15, :cond_11

    if-eqz v10, :cond_11

    :cond_10
    if-eqz v14, :cond_11

    const/4 v11, 0x1

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    :goto_6
    monitor-exit p0

    return v11

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .locals 5

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/optional/applog/abfb;->b(Landroid/content/Context;)I

    move-result v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/optional/applog/abfb;->b(Landroid/content/Context;)I

    move-result v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v3, "ab_sdk_version"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 5
    iget-object v3, v0, Lgbsdk/optional/applog/abfl;->b:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v4, "ConfigManager"

    .line 7
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "setExternalAbVersion:{}"

    invoke-interface {v3, v4, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v4, "external_ab_version"

    invoke-interface {v3, v4, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 p1, 0x0

    iput-object p1, v0, Lgbsdk/optional/applog/abfl;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abfy;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfy;->q()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 38
    iget-object v1, v0, Lgbsdk/optional/applog/abfl;->b:Lcom/bytedance/bdtracker/d;

    .line 39
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "ConfigManager"

    .line 40
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "setAbConfig:{}"

    invoke-interface {v1, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, v0, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "ab_configure"

    invoke-interface {v2, v3, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 v1, 0x0

    iput-object v1, v0, Lgbsdk/optional/applog/abfl;->g:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lgbsdk/optional/applog/abgc;

    invoke-direct {v1, v0, p1}, Lgbsdk/optional/applog/abgc;-><init>(Lgbsdk/optional/applog/abfl;Lorg/json/JSONObject;)V

    const-string v0, "set_abconfig"

    invoke-static {v0, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const-string v1, "app_version"

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lgbsdk/optional/applog/abfy;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abfy;->e(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized c(Lorg/json/JSONObject;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "null abconfig"

    .line 4
    invoke-interface {v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "vid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v7, "DeviceManager"

    .line 8
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "JSON handle failed"

    invoke-interface {v6, v7, v9, v5, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {p1}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->i(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lgbsdk/optional/applog/abfy;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfy;->d(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ab_sdk_version"

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_0
    return-void
.end method

.method public final d(Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lgbsdk/optional/applog/abfy$ac;

    invoke-direct {v0, p0, p1}, Lgbsdk/optional/applog/abfy$ac;-><init>(Lgbsdk/optional/applog/abfy;Lorg/json/JSONObject;)V

    const-string p1, "set_header"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abcf;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/abcf;-><init>(Lcom/bytedance/bdtracker/d;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abfs;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v5, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4, v5}, Lgbsdk/optional/applog/abfs;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abed;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/abed;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/al;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lgbsdk/optional/applog/al;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abbu;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    iget-object v5, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v5}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v5}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/applog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v2, v3, v4, v1, v5}, Lgbsdk/optional/applog/abbu;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abfy;Lcom/bytedance/applog/ISensitiveInfoProvider;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/as;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lgbsdk/optional/applog/as;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abbl;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v5, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4, v5}, Lgbsdk/optional/applog/abbl;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abba;

    invoke-direct {v2}, Lgbsdk/optional/applog/abba;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abam;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4, v1}, Lgbsdk/optional/applog/abam;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abfy;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abaj;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/abaj;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abab;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/abab;-><init>(Lgbsdk/optional/applog/abfl;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abep;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4, v1}, Lgbsdk/optional/applog/abep;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abfy;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abcs;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3}, Lgbsdk/optional/applog/abcs;-><init>(Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abdh;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lgbsdk/optional/applog/abdh;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/abdb;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    invoke-direct {v2, v3}, Lgbsdk/optional/applog/abdb;-><init>(Lcom/bytedance/bdtracker/d;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/ae;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/ae;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    new-instance v2, Lgbsdk/optional/applog/az;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->c:Landroid/content/Context;

    iget-object v4, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-direct {v2, v3, v4}, Lgbsdk/optional/applog/az;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v0}, Lgbsdk/optional/applog/abce;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v9, 0xa

    const/4 v10, 0x2

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lgbsdk/optional/applog/abcq;

    .line 3
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 4
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getLoaderFilters()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v11}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v9, "Filter "

    .line 8
    invoke-static {v9}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Loader"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-interface {v0, v9, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->g:Z

    if-nez v0, :cond_3

    .line 9
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 10
    :cond_3
    :try_start_0
    invoke-virtual {v11, v2}, Lgbsdk/optional/applog/abcq;->a(Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, v11, Lgbsdk/optional/applog/abcq;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-boolean v12, v11, Lgbsdk/optional/applog/abcq;->f:Z

    if-nez v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    iget-object v12, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v12, v12, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v13, "DeviceManager"

    .line 12
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "loadHeader mCountPermission: "

    invoke-static {v14}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lgbsdk/optional/applog/abfy;->k:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v0, v15, v5

    invoke-interface {v12, v13, v14, v15}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->e:Z

    if-nez v0, :cond_4

    iget v0, v1, Lgbsdk/optional/applog/abfy;->k:I

    if-le v0, v9, :cond_4

    iput-boolean v4, v11, Lgbsdk/optional/applog/abcq;->e:Z

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v9, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v12, v5, [Ljava/lang/Object;

    const-string v13, "loader load error"

    .line 14
    invoke-interface {v9, v13, v0, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->f:Z

    if-nez v0, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v9, "DeviceManager"

    .line 16
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v11}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v5

    iget-boolean v12, v11, Lgbsdk/optional/applog/abcq;->e:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v4

    const-string v12, "Loader:{} is ready:{}"

    invoke-interface {v0, v9, v12, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->e:Z

    if-nez v0, :cond_7

    iget-boolean v0, v11, Lgbsdk/optional/applog/abcq;->f:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :goto_5
    and-int/2addr v6, v0

    goto/16 :goto_1

    :cond_8
    if-eqz v6, :cond_a

    sget-object v0, Lgbsdk/optional/applog/abfy;->a:[Ljava/lang/String;

    array-length v3, v0

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v3, :cond_a

    aget-object v12, v0, v11

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 v14, v13, 0x1

    and-int/2addr v6, v14

    if-eqz v13, :cond_9

    iget-object v13, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v13, v13, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v14, "DeviceManager"

    .line 18
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is empty!"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v12, v5, [Ljava/lang/Object;

    invoke-interface {v13, v14, v9, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0xa

    goto :goto_6

    :cond_a
    monitor-enter p0

    :try_start_1
    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    iget-object v3, v1, Lgbsdk/optional/applog/abfy;->l:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v11, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-object v11, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Loader newHeader remove "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v5, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-virtual {v1, v2}, Lgbsdk/optional/applog/abfy;->d(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    iput-boolean v6, v1, Lgbsdk/optional/applog/abfy;->b:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "DeviceManager"

    .line 22
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v6, v1, Lgbsdk/optional/applog/abfy;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    iget v5, v1, Lgbsdk/optional/applog/abfy;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v5, v1, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    aput-object v5, v3, v10

    const-string v5, "Loader header ready:{}, permission count:{}, header:{}"

    invoke-interface {v0, v2, v5, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v7, :cond_d

    if-ne v7, v8, :cond_d

    iget v0, v1, Lgbsdk/optional/applog/abfy;->k:I

    add-int/2addr v0, v4

    iput v0, v1, Lgbsdk/optional/applog/abfy;->k:I

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->n()I

    move-result v0

    if-eqz v0, :cond_d

    iget v0, v1, Lgbsdk/optional/applog/abfy;->k:I

    const/16 v2, 0xa

    add-int/2addr v0, v2

    iput v0, v1, Lgbsdk/optional/applog/abfy;->k:I

    :cond_d
    iget-boolean v0, v1, Lgbsdk/optional/applog/abfy;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 23
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->y:Lgbsdk/optional/applog/abbs;

    if-eqz v0, :cond_e

    .line 24
    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lgbsdk/optional/applog/abbs;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abfy;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lgbsdk/optional/applog/abfy$ab;

    invoke-direct {v0, v1}, Lgbsdk/optional/applog/abfy$ab;-><init>(Lgbsdk/optional/applog/abfy;)V

    const-string v2, "local_did_load"

    invoke-static {v2, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_f
    iget-boolean v0, v1, Lgbsdk/optional/applog/abfy;->b:Z

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v2, "user_unique_id"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->d()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "custom"

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "user_unique_id"

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 6
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-static {p1}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfl;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_unique_id_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_unique_id_type"

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 5
    iget-object v1, v1, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "bd_did"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ssid"

    invoke-virtual {p0, v0, p1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v1}, Lgbsdk/optional/applog/abfl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ab_sdk_version"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "abtest_exposure"

    .line 5
    :try_start_1
    invoke-virtual {p1, v2, v1, v0}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "DeviceManager"

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "udid"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "install_id"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lgbsdk/optional/applog/abfy;->j:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v1, "DeviceManager"

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "addExposedVid ready added: "

    invoke-static {v2, v0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abfy;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v2, "ssid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 4
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public l()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "openudid"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfy;->d(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lgbsdk/optional/applog/abfy;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abfy;->b(Lorg/json/JSONObject;)V

    .line 5
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public n()I
    .locals 4

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->h:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "version_code"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const/4 v3, -0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->f:Z

    return v0
.end method

.method public p()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->m:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public final s()Lorg/json/JSONObject;
    .locals 4

    iget-boolean v0, p0, Lgbsdk/optional/applog/abfy;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->e:Lorg/json/JSONObject;

    const-string v1, "custom"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfy;->d:Lgbsdk/optional/applog/abfl;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "header_custom_info"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method
