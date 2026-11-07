.class public Lgbsdk/common/host/abbf;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public volatile a:Z

.field public final aq:Lgbsdk/common/host/abbk;

.field public final b:Landroid/content/Context;

.field public final be:Landroid/content/SharedPreferences;

.field public bf:Lgbsdk/common/host/abar;

.field public volatile d:Lorg/json/JSONObject;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abbo;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "channel"

    const-string v1, "package"

    const-string v2, "app_version"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lgbsdk/common/host/abbf;->h:I

    .line 86
    iput-object p1, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 88
    iget-object p1, p2, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    .line 89
    iput-object p1, p0, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    .line 90
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 91
    iget-object p1, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-static {p1, v0}, Lgbsdk/common/host/abbh;->a(Landroid/content/Context;Lgbsdk/common/host/abbk;)Lgbsdk/common/host/abar;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;

    .line 92
    iget-object p1, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 93
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 95
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 96
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p2, v0}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 101
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 107
    invoke-static {v0, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 110
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "81c314cc1a838c87db01e7ce02ff9608"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method


# virtual methods
.method public H()I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "648d565c848c2a396eaf123a0ce20bf9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lgbsdk/common/host/abbf;->a:Z

    const-string v2, "version_code"

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    if-ne v1, v3, :cond_3

    .line 5
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->j()Z

    .line 6
    iget-boolean v1, p0, Lgbsdk/common/host/abbf;->a:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public I()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "70fe115db1861b81d37a40da26600a53"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/abbf;->a:Z

    const-string v1, "user_unique_id"

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public J()I
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d2d6c33c23a5edafd88e4340ae308d1a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "device_id"

    const-string v3, ""

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v4, "install_id"

    .line 4
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v5, "bd_did"

    .line 6
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v1}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    :cond_1
    invoke-static {v2}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 10
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const/4 v3, -0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_0
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "af21966b2872abf10e19151bdf95ec82"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/accounts/Account;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e82faac95522fafb3ffdc911bb11bc17"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    sput-object p1, Lgbsdk/common/host/abbh;->bh:Landroid/accounts/Account;

    .line 3
    sget-object v0, Lgbsdk/common/host/abbh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abbh;

    .line 4
    iget-object v2, v1, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    instance-of v2, v2, Lgbsdk/common/host/abaw;

    if-eqz v2, :cond_1

    .line 5
    iget-object v1, v1, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    check-cast v1, Lgbsdk/common/host/abaw;

    .line 6
    iget-object v1, v1, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Lgbsdk/common/host/abao;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 8
    :cond_2
    sput-object p1, Lgbsdk/common/host/abam;->bp:Landroid/accounts/Account;

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c8f1329df6f158e0fae36eca4f8b6176"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 10
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, ","

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 15
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    sget-boolean p1, Lgbsdk/common/host/abdn;->b:Z

    if-eqz p1, :cond_2

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExposedVid ready added "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_1
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abbf;->d(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->w()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 28
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v3, "bav_ab_config"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 29
    iget-object v1, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 30
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 31
    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->isAbEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abbf;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 33
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abbf;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 34
    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v1

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abbf;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lgbsdk/common/host/abax;->onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "48c92bc64d5b5fff1ae9703b711c529c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "custom"

    .line 85
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 87
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public final a(Lgbsdk/common/host/abbo;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "31af2fa487dcc0cca77c33ae3051425c"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 57
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->k()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lgbsdk/common/host/abbo;->d:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSyncFromSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "73c560625571823d1c7bcd64f9b2ddf7"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 38
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    .line 42
    :cond_2
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 45
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46
    invoke-static {v3, v1}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iput-object v3, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 50
    :try_start_1
    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 56
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d5ec07684e7795e8a8e93e98fc28f2eb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v1, "bd_did"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f221f84104d21a98e975967da19de276"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 61
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ","

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "d32578132efa3c9e7343c05c8f919d5c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-static {v0, v1}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, ""

    .line 81
    invoke-static {v1, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_3
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ba7fe01974ec4f1c8e49578b28b41eee"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/abbf;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v1, "custom"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_2

    .line 15
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 16
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v3, "header_custom_info"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f86d0d74345e79109159412e79bd67de"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-static {v1, v0}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgbsdk/common/host/abbf;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e8e0df5e5d164cfb865e0af50e1a0f77"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ab_sdk_version"

    .line 3
    invoke-virtual {p0, v0, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, p1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2205df74650d30d0490045cbffec567c"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgbsdk/common/host/abbf;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 14
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgbsdk/common/host/abbf;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abbf;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 19
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v0, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbk;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v1}, Lgbsdk/common/host/abbf;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abbf;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9a534e1371662559edba35946877812a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lgbsdk/common/host/abbf;->a:Z

    const-string v2, "app_version"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->j()Z

    .line 6
    iget-boolean v1, p0, Lgbsdk/common/host/abbf;->a:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public j()Z
    .locals 12

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "015e1980e13e011e9580f83cb69b05b6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 3
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbj;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbl;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4, v5}, Lgbsdk/common/host/abbl;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbg;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbg;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abby;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4, v5, p0}, Lgbsdk/common/host/abby;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abbf;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abba;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abca;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4, v5}, Lgbsdk/common/host/abca;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbz;

    invoke-direct {v3}, Lgbsdk/common/host/abbz;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbv;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4, v5, p0}, Lgbsdk/common/host/abbv;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abbf;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbu;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/apm/applog/AppLog;->isEnableLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbb;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbx;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbe;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lgbsdk/common/host/abbe;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbf;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbd;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/apm/applog/AppLog;->isOAIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbc;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    iget-object v5, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4, v5}, Lgbsdk/common/host/abbc;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbi;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbi;-><init>(Lgbsdk/common/host/abbk;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v2, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abbm;

    iget-object v4, p0, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lgbsdk/common/host/abbm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v1, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 29
    invoke-static {v2, v1}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lgbsdk/common/host/abbf;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgbsdk/common/host/abbo;

    .line 35
    iget-boolean v9, v7, Lgbsdk/common/host/abbo;->a:Z

    if-eqz v9, :cond_5

    iget-boolean v9, v7, Lgbsdk/common/host/abbo;->c:Z

    if-nez v9, :cond_5

    invoke-virtual {p0, v7}, Lgbsdk/common/host/abbf;->a(Lgbsdk/common/host/abbo;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 37
    :cond_5
    :try_start_1
    invoke-virtual {v7, v2}, Lgbsdk/common/host/abbo;->m(Lorg/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, v7, Lgbsdk/common/host/abbo;->a:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 41
    iget-boolean v10, v7, Lgbsdk/common/host/abbo;->b:Z

    if-nez v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    const-string v10, "loadHeader, "

    .line 43
    invoke-static {v10}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lgbsdk/common/host/abbf;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 44
    invoke-static {v10, v9}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iget-boolean v9, v7, Lgbsdk/common/host/abbo;->a:Z

    if-nez v9, :cond_6

    iget v9, p0, Lgbsdk/common/host/abbf;->h:I

    if-le v9, v8, :cond_6

    .line 46
    iput-boolean v3, v7, Lgbsdk/common/host/abbo;->a:Z

    goto :goto_1

    :catch_1
    move-exception v8

    .line 47
    invoke-static {v8}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 59
    :cond_6
    :goto_1
    iget-boolean v8, v7, Lgbsdk/common/host/abbo;->a:Z

    if-nez v8, :cond_7

    iget-boolean v8, v7, Lgbsdk/common/host/abbo;->b:Z

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 64
    :cond_7
    iget-boolean v8, v7, Lgbsdk/common/host/abbo;->a:Z

    if-nez v8, :cond_9

    iget-boolean v7, v7, Lgbsdk/common/host/abbo;->b:Z

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v7, 0x1

    :goto_3
    and-int/2addr v4, v7

    goto :goto_0

    .line 77
    :cond_a
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 78
    iput-object v2, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 83
    invoke-virtual {p0, v2, v7}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4

    .line 85
    :cond_b
    iput-boolean v4, p0, Lgbsdk/common/host/abbf;->a:Z

    .line 87
    sget-boolean v0, Lgbsdk/common/host/abdn;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string v0, "loadHeader, "

    .line 88
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lgbsdk/common/host/abbf;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abbf;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    const-string v0, "loadHeader, "

    .line 90
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lgbsdk/common/host/abbf;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abbf;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-lez v5, :cond_d

    if-ne v5, v6, :cond_d

    .line 92
    iget v0, p0, Lgbsdk/common/host/abbf;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lgbsdk/common/host/abbf;->h:I

    .line 93
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->J()I

    move-result v0

    if-eqz v0, :cond_d

    .line 95
    iget v0, p0, Lgbsdk/common/host/abbf;->h:I

    add-int/2addr v0, v8

    iput v0, p0, Lgbsdk/common/host/abbf;->h:I

    .line 99
    :cond_d
    iget-boolean v0, p0, Lgbsdk/common/host/abbf;->a:Z

    if-eqz v0, :cond_e

    .line 100
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v3, "install_id"

    const-string v4, ""

    .line 102
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p0}, Lgbsdk/common/host/abbf;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgbsdk/common/host/abax;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_e
    iget-boolean v0, p0, Lgbsdk/common/host/abbf;->a:Z

    return v0

    :catchall_0
    move-exception v0

    .line 107
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final p(Ljava/lang/String;)Ljava/util/Set;
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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ac36ce662204c2aec2ead2cd07944dd9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ","

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    array-length v2, p1

    if-lez v2, :cond_2

    .line 7
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abbf;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0dfdfb4709fa36c536a233630c289ade"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v1, "ssid"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
