.class public final Lcom/tencent/wxop/stat/b/d;
.super Ljava/lang/Object;


# static fields
.field static cw:Lcom/tencent/wxop/stat/b/e;

.field private static cx:Lcom/tencent/wxop/stat/b/b;

.field private static cz:Lorg/json/JSONObject;


# instance fields
.field c:Ljava/lang/String;

.field cy:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/b/d;->cx:Lcom/tencent/wxop/stat/b/b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/b/d;->cz:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/d;->cy:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/d;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/tencent/wxop/stat/b/d;->u(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/b/l;->F(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/b/d;->cy:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/wxop/stat/g;->r(Landroid/content/Context;)Lcom/tencent/wxop/stat/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/g;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/b/d;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/wxop/stat/b/d;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static declared-synchronized u(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/e;
    .locals 3

    const-class v0, Lcom/tencent/wxop/stat/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/b/d;->cw:Lcom/tencent/wxop/stat/b/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/b/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/wxop/stat/b/e;-><init>(Landroid/content/Context;B)V

    sput-object v1, Lcom/tencent/wxop/stat/b/d;->cw:Lcom/tencent/wxop/stat/b/e;

    :cond_0
    sget-object p0, Lcom/tencent/wxop/stat/b/d;->cw:Lcom/tencent/wxop/stat/b/e;
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
.method public final a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/b/d;->cw:Lcom/tencent/wxop/stat/b/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p2}, Lcom/tencent/wxop/stat/b/e;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_0
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/wxop/stat/b/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/b/d;->cy:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "tn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "ev"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string p2, "errkv"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object p2, Lcom/tencent/wxop/stat/b/d;->cz:Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "eva"

    sget-object v0, Lcom/tencent/wxop/stat/b/d;->cz:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/wxop/stat/b/d;->cx:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p2, p1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method
