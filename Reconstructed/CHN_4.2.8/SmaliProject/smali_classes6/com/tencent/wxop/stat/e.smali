.class public Lcom/tencent/wxop/stat/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile S:Z

.field static volatile aI:I

.field private static aK:Lcom/tencent/wxop/stat/b/f;

.field private static volatile aL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/wxop/stat/a/b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile aO:J

.field private static volatile aP:J

.field private static volatile aQ:I

.field private static volatile aR:Ljava/lang/String;

.field private static volatile aS:Ljava/lang/String;

.field private static aT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static aU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static aV:Lcom/tencent/wxop/stat/b/b;

.field private static aW:Ljava/lang/Thread$UncaughtExceptionHandler;

.field static volatile aX:J

.field private static aY:Landroid/content/Context;

.field static volatile aZ:J

.field private static volatile af:J

.field private static al:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aL:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aM:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/e;->aN:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aO:J

    sput-wide v0, Lcom/tencent/wxop/stat/e;->af:J

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aP:J

    const-string v2, ""

    sput-object v2, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    const/4 v3, 0x0

    sput v3, Lcom/tencent/wxop/stat/e;->aQ:I

    sput-object v2, Lcom/tencent/wxop/stat/e;->aR:Ljava/lang/String;

    sput-object v2, Lcom/tencent/wxop/stat/e;->aS:Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/tencent/wxop/stat/e;->aT:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/tencent/wxop/stat/e;->aU:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->av()Lcom/tencent/wxop/stat/b/b;

    move-result-object v2

    sput-object v2, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/wxop/stat/e;->aW:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/wxop/stat/e;->S:Z

    sput v3, Lcom/tencent/wxop/stat/e;->aI:I

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aX:J

    sput-object v2, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aZ:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static G()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/c;->P:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->L:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "v"

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/tencent/wxop/stat/c;->P:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->L:I

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcom/tencent/wxop/stat/c;->P:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->aI:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/wxop/stat/c;->O:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->L:I

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/wxop/stat/c;->O:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->L:I

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lcom/tencent/wxop/stat/c;->O:Lcom/tencent/wxop/stat/ah;

    iget v2, v2, Lcom/tencent/wxop/stat/ah;->aI:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method static H()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/tencent/wxop/stat/e;->aI:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aX:J

    return-void
.end method

.method static I()V
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/e;->aI:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/e;->aI:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aX:J

    sget-object v0, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/e;->p(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic J()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic K()Lcom/tencent/wxop/stat/b/b;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    return-object v0
.end method

.method static synthetic L()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aW:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic M()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aT:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic N()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic P()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/e;->aO:J

    return-wide v0
.end method

.method static synthetic Q()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aN:Ljava/util/Map;

    return-object v0
.end method

.method static a(Landroid/content/Context;ZLcom/tencent/wxop/stat/f;)I
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-wide v4, Lcom/tencent/wxop/stat/e;->af:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/tencent/wxop/stat/c;->m()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-ltz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    sput-wide v0, Lcom/tencent/wxop/stat/e;->af:J

    sget-wide v4, Lcom/tencent/wxop/stat/e;->aP:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->ad()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/wxop/stat/e;->aP:J

    :cond_1
    sget-wide v4, Lcom/tencent/wxop/stat/e;->aP:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->ad()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aP:J

    invoke-static {p0}, Lcom/tencent/wxop/stat/t;->s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/t;->t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/b/c;->as()I

    move-result p1

    if-eq p1, v2, :cond_2

    invoke-static {p0}, Lcom/tencent/wxop/stat/t;->s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/t;->t(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/b/c;->z()V

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/c;->C()V

    sput v3, Lcom/tencent/wxop/stat/e;->aI:I

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->aw()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    move p1, v2

    :cond_3
    sget-object v0, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->a(Lcom/tencent/wxop/stat/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/f;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v1, Lcom/tencent/wxop/stat/e;->aU:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, p1

    :goto_1
    if-eqz v2, :cond_8

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->a(Lcom/tencent/wxop/stat/f;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/tencent/wxop/stat/c;->D()I

    move-result p1

    invoke-static {}, Lcom/tencent/wxop/stat/c;->A()I

    move-result p2

    if-ge p1, p2, :cond_6

    invoke-static {p0}, Lcom/tencent/wxop/stat/b/l;->O(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p2, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/b/b;->d(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p0, p2}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V

    :goto_2
    sget-object p1, Lcom/tencent/wxop/stat/e;->aU:Ljava/util/Map;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-boolean p1, Lcom/tencent/wxop/stat/e;->S:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance p2, Lcom/tencent/wxop/stat/i;

    invoke-direct {p2, p0}, Lcom/tencent/wxop/stat/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    sput-boolean v3, Lcom/tencent/wxop/stat/e;->S:Z

    :cond_b
    sget p0, Lcom/tencent/wxop/stat/e;->aQ:I

    return p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/e;->aW:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    .locals 4

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "start new session."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/tencent/wxop/stat/e;->aQ:I

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->r()I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/e;->aQ:I

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/c;->z()V

    invoke-static {}, Lcom/tencent/wxop/stat/c;->B()V

    new-instance v0, Lcom/tencent/wxop/stat/p;

    new-instance v1, Lcom/tencent/wxop/stat/a/i;

    sget v2, Lcom/tencent/wxop/stat/e;->aQ:I

    invoke-static {}, Lcom/tencent/wxop/stat/e;->G()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/tencent/wxop/stat/a/i;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/wxop/stat/f;)V

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/p;-><init>(Lcom/tencent/wxop/stat/a/d;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/p;->ah()V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/as;

    invoke-direct {v1, v0, p0, p2}, Lcom/tencent/wxop/stat/as;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/ap;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/ap;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static a()Z
    .locals 2

    sget v0, Lcom/tencent/wxop/stat/e;->aI:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aX:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "MTA SDK version conflicted, current: 2.0.3,required: "

    const-string v1, "MTA SDK version, current: 2.0.3 ,required: "

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "MTA StatService is disable."

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v3, "2.0.3"

    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/wxop/stat/b/b;->e(Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_8

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/tencent/wxop/stat/b/l;->u(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/tencent/wxop/stat/b/l;->u(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/tencent/wxop/stat/c;->a(Z)V

    return v2

    :cond_3
    invoke-static {p0}, Lcom/tencent/wxop/stat/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    const-string p2, "-"

    invoke-static {p2}, Lcom/tencent/wxop/stat/c;->n(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance p2, Lcom/tencent/wxop/stat/m;

    invoke-direct {p2, p0}, Lcom/tencent/wxop/stat/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    const-string p0, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object p1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/tencent/wxop/stat/c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {p1, p0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return v2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/k;

    invoke-direct {v1, p0, v0, p2}, Lcom/tencent/wxop/stat/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/f;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/wxop/stat/e;->aO:J

    return-wide p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The Context of StatService.trackCustomEvent() can not be null!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tencent/wxop/stat/a/b;

    invoke-direct {v0, p1}, Lcom/tencent/wxop/stat/a/b;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/ar;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wxop/stat/ar;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/a/b;)V

    invoke-virtual {p1, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string p1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    return-object p0
.end method

.method private static declared-synchronized j(Landroid/content/Context;)V
    .locals 9

    const-class v0, Lcom/tencent/wxop/stat/e;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/wxop/stat/c;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/wxop/stat/b/q;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "2.0.3"

    invoke-static {v3}, Lcom/tencent/wxop/stat/b/l;->u(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    const/4 v6, 0x0

    if-gtz v5, :cond_1

    sget-object v5, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MTA is disable for current version:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",wakeup version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    move v1, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/tencent/wxop/stat/c;->W:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/wxop/stat/b/q;->f(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    sget-object v1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MTA is disable for current time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",wakeup time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-static {v6}, Lcom/tencent/wxop/stat/c;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    new-instance v1, Lcom/tencent/wxop/stat/b/f;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/b/f;-><init>()V

    sput-object v1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    invoke-static {}, Lcom/tencent/wxop/stat/b/l;->aw()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/wxop/stat/e;->al:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/tencent/wxop/stat/c;->af:J

    add-long/2addr v1, v3

    sput-wide v1, Lcom/tencent/wxop/stat/e;->aO:J

    sget-object v1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v2, Lcom/tencent/wxop/stat/an;

    invoke-direct {v2, p0}, Lcom/tencent/wxop/stat/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->j(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    sget-object v1, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v1, p0}, Lcom/tencent/wxop/stat/b/b;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tencent/wxop/stat/c;->a(Z)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_1
    sget-object p0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/l;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/ao;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/ao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static n(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string v0, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/wxop/stat/a/f;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/a/f;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/ak;->Z(Landroid/content/Context;)Lcom/tencent/wxop/stat/ak;

    move-result-object p0

    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1}, Lcom/tencent/wxop/stat/aq;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wxop/stat/ak;->a(Lcom/tencent/wxop/stat/a/d;Lcom/tencent/wxop/stat/aj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string v1, "commitEvents, maxNumber=-1"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string v0, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v0, Lcom/tencent/wxop/stat/e;->aY:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/g;->r(Landroid/content/Context;)Lcom/tencent/wxop/stat/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/g;->X()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->k(Landroid/content/Context;)Lcom/tencent/wxop/stat/b/f;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/wxop/stat/e;->aK:Lcom/tencent/wxop/stat/b/f;

    new-instance v1, Lcom/tencent/wxop/stat/h;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public static p(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/e;->aM:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/tencent/wxop/stat/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/tencent/wxop/stat/c;->ay:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/tencent/wxop/stat/e;->aV:Lcom/tencent/wxop/stat/b/b;

    const-string v0, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/tencent/wxop/stat/t;->s(Landroid/content/Context;)Lcom/tencent/wxop/stat/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/t;->H()V

    return-void
.end method

.method static synthetic q(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/e;->aR:Ljava/lang/String;

    return-object p0
.end method

.method static q(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    invoke-static {}, Lcom/tencent/wxop/stat/c;->u()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-long v2, v3

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/wxop/stat/e;->aZ:J

    const-string v0, "last_period_ts"

    sget-wide v1, Lcom/tencent/wxop/stat/e;->aZ:J

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/wxop/stat/b/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/e;->o(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/e;->aS:Ljava/lang/String;

    return-object p0
.end method
