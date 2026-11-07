.class public Lcom/mob/mcl/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Lcom/mob/tools/network/NetworkHelper;

.field private static d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method static synthetic a(I)Ljava/lang/Runnable;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/mob/mcl/b/a;->c(I)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 360
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->h()V

    .line 361
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-object v0, v0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string p0, "url"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 316
    :cond_0
    const-string p1, "headers"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 318
    const-string p0, "body"

    invoke-virtual {p3}, Lcom/mob/tools/network/StringPart;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "GET"

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl apc"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object v0

    .line 330
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string p2, "mcl htp"

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 227
    const-string v0, "mcl htp"

    if-nez p0, :cond_1

    sget-object v1, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 237
    invoke-static {p2}, Lcom/mob/mcl/b/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object p2, v1

    .line 243
    :cond_3
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 248
    :cond_4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/mcl/c/h;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    iget v3, p4, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v4, "GET"

    invoke-static {v4, p1, p3, v1}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3ec

    invoke-virtual {v2, v5, v3, v4}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 251
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string p1, "mcl tp"

    invoke-virtual {p0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 252
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    .line 254
    sget-object p0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mob/tools/network/NetworkHelper;->httpGetNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    return-object p0

    :cond_6
    if-eqz p0, :cond_7

    return-object v1

    .line 263
    :cond_7
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x5

    const/4 p2, 0x0

    .line 264
    invoke-static {p0, p2}, Lcom/mob/mcl/b/a;->a(II)V

    .line 266
    :cond_8
    invoke-static {p1, p3, p4}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(II)V
    .locals 2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 83
    new-instance p1, Lcom/mob/mcl/b/a$1;

    invoke-direct {p1, p0}, Lcom/mob/mcl/b/a$1;-><init>(I)V

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public static a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 1

    .line 397
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/mcl/c/h;->a(ILcom/mob/mcl/BusinessMessageListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl ini"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 66
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 75
    :goto_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/b/a$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/mob/mcl/b/a$a;-><init>(Lcom/mob/mcl/b/a$1;)V

    invoke-virtual {p1, p0, p2}, Lcom/mob/mcl/a/a;->a(Landroid/content/Context;Lcom/mob/apc/b$b;)V

    const/4 p0, 0x0

    .line 78
    invoke-static {p0}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 79
    invoke-static {p0, p0}, Lcom/mob/mcl/b/a;->a(II)V

    return-void
.end method

.method public static a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 1

    .line 393
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V

    return-void
.end method

.method public static a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 1

    .line 365
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mgs/OnIdChangeListener;)V

    .line 366
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->h()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 337
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    const-string v1, "POST"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-static {v0}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;Z)V

    .line 340
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    .line 343
    :cond_0
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mob/tools/network/StringPart;",
            "I",
            "Lcom/mob/tools/network/HttpResponseCallback;",
            "Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_1

    .line 272
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v2, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    .line 280
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    invoke-static {}, Lcom/mob/mcl/b/a;->d()V

    .line 285
    :cond_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget v1, p6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const-string v2, "POST"

    invoke-static {v2, p1, p2, p3}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v0, v3, v1, v2}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 288
    new-instance p0, Lcom/mob/mcl/b/b;

    invoke-direct {p0, v0}, Lcom/mob/mcl/b/b;-><init>(Ljava/util/HashMap;)V

    .line 289
    invoke-static {p0}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/b/b;)Lcom/mob/tools/network/HttpConnection;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    return-void

    :cond_3
    if-nez p0, :cond_4

    .line 293
    sget-object v0, Lcom/mob/mcl/b/a;->c:Lcom/mob/tools/network/NetworkHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mob/tools/network/NetworkHelper;->rawPost(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/HTTPPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    const/4 p0, 0x0

    .line 299
    invoke-interface {p5, p0}, Lcom/mob/tools/network/HttpResponseCallback;->onResponse(Lcom/mob/tools/network/HttpConnection;)V

    goto :goto_0

    .line 301
    :cond_5
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/a/a;->b()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 302
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    .line 304
    :cond_6
    invoke-static/range {p1 .. p6}, Lcom/mob/mcl/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 1

    .line 375
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    .line 377
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 378
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xbb8

    .line 379
    invoke-static {p0}, Lcom/mob/mcl/b/a;->e(I)Z

    .line 382
    :cond_0
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 383
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->i()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 387
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b()J
    .locals 2

    .line 370
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->h()V

    .line 371
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-wide v0, v0, Lcom/mob/mcl/c/h;->k:J

    return-wide v0
.end method

.method static synthetic b(I)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/mob/mcl/b/a;->d(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/mob/mcl/b/a;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static c(I)Ljava/lang/Runnable;
    .locals 1

    .line 93
    new-instance v0, Lcom/mob/mcl/b/a$2;

    invoke-direct {v0, p0}, Lcom/mob/mcl/b/a$2;-><init>(I)V

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V

    return-void
.end method

.method private static d()V
    .locals 5

    .line 173
    const-string v0, "rgs tp, main p: "

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 215
    :goto_0
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v2

    .line 179
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 181
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->f:Z

    if-nez v0, :cond_1

    .line 182
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    .line 189
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v2, "tp reg failed"

    invoke-virtual {v0, v2}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_3
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mob/mcl/b/a$3;

    invoke-direct {v2}, Lcom/mob/mcl/b/a$3;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 213
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    :cond_4
    :goto_1
    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    throw v0
.end method

.method private static d(I)V
    .locals 4

    const/4 v0, 0x6

    if-ge p0, v0, :cond_5

    .line 109
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v0

    .line 110
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tp rgs, main p: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1388

    .line 112
    invoke-static {v0}, Lcom/mob/mcl/b/a;->e(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->a()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    if-nez p0, :cond_1

    add-int/2addr p0, v0

    const/16 v0, 0xa

    .line 114
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    add-int/2addr p0, v0

    const/16 v0, 0x1e

    .line 116
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    add-int/2addr p0, v0

    const/16 v0, 0x3c

    .line 118
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    add-int/2addr p0, v0

    const/16 v0, 0xb4

    .line 120
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    add-int/2addr p0, v0

    const/16 v0, 0x12c

    .line 122
    invoke-static {p0, v0}, Lcom/mob/mcl/b/a;->a(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static e()V
    .locals 1

    .line 220
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/a/a;->c()V

    :cond_0
    return-void
.end method

.method private static e(I)Z
    .locals 6

    const-string v0, "init tp, main p: "

    const/4 v1, 0x0

    .line 130
    :try_start_0
    sget-object v2, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 166
    :goto_0
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 135
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v2

    .line 136
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 139
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->f()V

    .line 140
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mob/mcl/c/h;->f:Z

    if-nez v0, :cond_1

    .line 141
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 147
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    .line 148
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-nez p0, :cond_2

    .line 149
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V

    .line 151
    :cond_2
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 153
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object p0

    iget-boolean p0, p0, Lcom/mob/mcl/c/h;->l:Z

    .line 156
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v0, "tp reg failed"

    invoke-virtual {p0, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p0

    const-string v0, "tp reg avail false"

    invoke-virtual {p0, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 162
    :cond_5
    :goto_1
    invoke-static {}, Lcom/mob/mcl/b/a;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 164
    :try_start_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :goto_2
    sget-object p0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :catchall_1
    move-exception p0

    sget-object v0, Lcom/mob/mcl/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    throw p0
.end method
