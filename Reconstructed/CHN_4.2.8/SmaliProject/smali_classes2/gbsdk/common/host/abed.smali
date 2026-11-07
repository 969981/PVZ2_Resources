.class public Lgbsdk/common/host/abed;
.super Ljava/lang/Object;


# static fields
.field private static b:I

.field private static ci:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abed$1;

    invoke-direct {v0}, Lgbsdk/common/host/abed$1;-><init>()V

    sput-object v0, Lgbsdk/common/host/abed;->ci:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput v0, Lgbsdk/common/host/abed;->b:I

    return-void
.end method

.method public static F()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 2

    const/16 v0, 0x28

    sput v0, Lgbsdk/common/host/abed;->b:I

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    sget-object v1, Lgbsdk/common/host/abed;->ci:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static ar()[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lgbsdk/common/host/abfk;->ad()Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v2, Lgbsdk/common/host/abge;->r:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "aid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lgbsdk/common/host/abfg;->w()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "protector_module#metas"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v6, "metas_module"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :try_start_2
    sget-object v2, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {v2}, Lcom/apm/insight/runtime/ConfigManager;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v0, v1}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/util/Map;[B)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lgbsdk/common/host/abia;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic as()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abed;->ci:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-boolean v0, Lgbsdk/common/host/abht;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/abht;->c()V

    :cond_0
    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lgbsdk/common/host/abht;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lgbsdk/common/host/abed;->i()V

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f()V
    .locals 0

    invoke-static {}, Lgbsdk/common/host/abed;->i()V

    return-void
.end method

.method private static declared-synchronized i()V
    .locals 7

    const-class v0, Lgbsdk/common/host/abed;

    monitor-enter v0

    :try_start_0
    sget v1, Lgbsdk/common/host/abed;->b:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sget v1, Lgbsdk/common/host/abed;->b:I

    sub-int/2addr v1, v2

    sput v1, Lgbsdk/common/host/abed;->b:I

    :cond_0
    const-string v1, "try fetchApmConfig"

    invoke-static {v1}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    sget-object v1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v1}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abed;->ar()[B

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    const-string v5, "npth"

    invoke-static {v5, v4}, Lgbsdk/common/host/abia;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after fetchApmConfig net "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Lcom/apm/insight/runtime/a;->a(Lorg/json/JSONArray;Z)V

    :goto_1
    sput v3, Lgbsdk/common/host/abed;->b:I

    goto :goto_2

    :cond_2
    sget v1, Lgbsdk/common/host/abed;->b:I

    add-int/lit8 v1, v1, -0xa

    sput v1, Lgbsdk/common/host/abed;->b:I

    goto :goto_2

    :cond_3
    invoke-static {}, Lgbsdk/common/host/abht;->c()V

    sget-boolean v1, Lgbsdk/common/host/abht;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic x()I
    .locals 1

    sget v0, Lgbsdk/common/host/abed;->b:I

    return v0
.end method
