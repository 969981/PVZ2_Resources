.class final Lcom/tencent/mm/opensdk/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/a/i$b;,
        Lcom/tencent/mm/opensdk/a/i$a;
    }
.end annotation


# static fields
.field private static final at:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/mm/opensdk/a/j;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/a/j;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/opensdk/a/i;->at:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    const-string v0, "pending_map"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/a/i$a;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/i;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/tencent/mm/opensdk/a/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/mm/opensdk/a/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/opensdk/a/i$a;)V

    :try_start_0
    sget-object p0, Lcom/tencent/mm/opensdk/a/i;->at:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "store resolve submit ex: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance p0, Lcom/tencent/mm/opensdk/a/i$b;

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/a/i$b;-><init>()V

    invoke-interface {p2, p0}, Lcom/tencent/mm/opensdk/a/i$a;->a(Lcom/tencent/mm/opensdk/a/i$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/i;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    :try_start_0
    sget-object v0, Lcom/tencent/mm/opensdk/a/i;->at:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/mm/opensdk/a/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/opensdk/a/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "store remove submit ex: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/i;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    :try_start_0
    sget-object p0, Lcom/tencent/mm/opensdk/a/i;->at:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tencent/mm/opensdk/a/k;

    move-object v1, v0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/tencent/mm/opensdk/a/k;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "store save submit ex: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MicroMsg.SDK.PayReport"

    invoke-static {p1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 9

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    const-string v8, "w"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_1
    cmp-long v5, v6, v1

    if-gez v5, :cond_0

    move-object v0, v4

    move-wide v1, v6

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private static a(Lorg/json/JSONObject;J)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    const-string v7, "w"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    cmp-long v4, v7, v5

    if-lez v4, :cond_2

    sub-long v4, p1, v7

    const-wide/32 v6, 0x927c0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    const/4 p1, 0x1

    goto :goto_2

    :catchall_0
    move v0, p1

    :catchall_1
    move p1, v0

    :cond_4
    return p1
.end method

.method static synthetic b(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/tencent/mm/opensdk/a/i;->a(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lorg/json/JSONObject;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/opensdk/a/i;->a(Lorg/json/JSONObject;J)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    :catchall_0
    :cond_0
    return-object p0
.end method
