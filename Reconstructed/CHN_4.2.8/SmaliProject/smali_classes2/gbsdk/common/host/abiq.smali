.class public Lgbsdk/common/host/abiq;
.super Ljava/net/CookieManager;
.source "SSCookieHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abiq$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SSCookieHandler"

.field public static final ll:Ljava/lang/String; = "X-SS-No-Cookie"

.field public static final lm:Ljava/lang/String; = "Cookie"

.field public static final ln:Ljava/lang/String; = "Set-Cookie"

.field public static lo:Z = false

.field public static final lp:Ljava/lang/String; = "X-SS-Cookie"

.field public static final lq:Ljava/lang/String; = "X-SS-Set-Cookie"

.field private static final lw:Ljava/lang/String; = "TTNET-COOKIE"

.field public static lx:Z


# instance fields
.field private final lr:Landroid/webkit/CookieManager;

.field public volatile ls:Lgbsdk/common/host/abjz;

.field private lt:Ljava/util/regex/Pattern;

.field private final lu:Lgbsdk/common/host/abiq$ab;

.field private lv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/webkit/CookieManager;Ljava/util/ArrayList;Lgbsdk/common/host/abiq$ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/webkit/CookieManager;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lgbsdk/common/host/abiq$ab;",
            ")V"
        }
    .end annotation

    const-string v0, "init"

    .line 63
    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    const-string v1, "(?<=Domain=)([^;]*)"

    const/4 v2, 0x2

    .line 52
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abiq;->lt:Ljava/util/regex/Pattern;

    if-lez p2, :cond_0

    .line 65
    invoke-static {}, Lcom/bytedance/common/utility/concurrent/TTExecutors;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lgbsdk/common/host/abiq$1;

    invoke-direct {v2, p0, p1}, Lgbsdk/common/host/abiq$1;-><init>(Lgbsdk/common/host/abiq;Landroid/content/Context;)V

    int-to-long p1, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 72
    :cond_0
    new-instance p2, Lgbsdk/common/host/abjz;

    new-instance v1, Lgbsdk/common/host/abiv;

    invoke-direct {v1, p1}, Lgbsdk/common/host/abiv;-><init>(Landroid/content/Context;)V

    sget-object p1, Lgbsdk/common/host/abjy;->kG:Lgbsdk/common/host/abjy;

    invoke-direct {p2, v1, p1}, Lgbsdk/common/host/abjz;-><init>(Lgbsdk/common/host/abiu;Lgbsdk/common/host/abjy;)V

    iput-object p2, p0, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    .line 74
    :goto_0
    iput-object p3, p0, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    .line 75
    iput-object p4, p0, Lgbsdk/common/host/abiq;->lv:Ljava/util/ArrayList;

    .line 76
    iput-object p5, p0, Lgbsdk/common/host/abiq;->lu:Lgbsdk/common/host/abiq$ab;

    .line 77
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "success"

    .line 79
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 81
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 83
    :goto_1
    iget-object p2, p0, Lgbsdk/common/host/abiq;->lu:Lgbsdk/common/host/abiq$ab;

    if-eqz p2, :cond_1

    const-string p3, "TTNET-COOKIE"

    .line 84
    invoke-interface {p2, p3, v0, p1}, Lgbsdk/common/host/abiq$ab;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 130
    sget-boolean v1, Lgbsdk/common/host/abiq;->lo:Z

    const-string v2, "Cookie"

    if-eqz v1, :cond_5

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 133
    invoke-direct {p0, p2, v2}, Lgbsdk/common/host/abiq;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_0
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string v1, "X-SS-Cookie"

    if-eqz p2, :cond_4

    .line 141
    invoke-direct {p0, p2, v1}, Lgbsdk/common/host/abiq;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 142
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 143
    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    .line 150
    invoke-direct {p0, p2, v2}, Lgbsdk/common/host/abiq;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 151
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 152
    :cond_6
    invoke-static {v2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_7
    invoke-static {v2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abiq;->lu:Lgbsdk/common/host/abiq$ab;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    const-string p3, "return"

    .line 450
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :catch_0
    iget-object p2, p0, Lgbsdk/common/host/abiq;->lu:Lgbsdk/common/host/abiq$ab;

    const-string p3, "TTNET-COOKIE"

    const-string v0, "put"

    invoke-interface {p2, p3, v0, p1}, Lgbsdk/common/host/abiq$ab;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 459
    invoke-static {p2}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 465
    iget-object v2, p0, Lgbsdk/common/host/abiq;->lt:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 466
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 469
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    .line 472
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "SSCookieHandler"

    if-eqz p2, :cond_0

    .line 101
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/CookieManager;->flush()V

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force flush cookie: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object p2, p0, Lgbsdk/common/host/abiq;->lv:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_3

    .line 111
    iget-object p2, p0, Lgbsdk/common/host/abiq;->lv:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/CookieManager;->flush()V

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path match flush cookie: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SSCookieHandler"

    const-string v1, "Cookie"

    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_2

    :try_start_1
    const-string v4, "X-SS-No-Cookie"

    .line 168
    invoke-direct {p0, p2, v4}, Lgbsdk/common/host/abiq;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 170
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 171
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-SS-No-Cookie "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 180
    :cond_2
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getAppCookieStore()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 182
    invoke-interface {v4, p1, p2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 183
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "X-SS-Cookie"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    :cond_3
    return-object v4

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v2

    .line 189
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    if-eqz p1, :cond_d

    .line 191
    iget-object v4, p0, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    if-nez v4, :cond_5

    goto/16 :goto_3

    .line 195
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCookieShareInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 197
    sget-boolean v5, Lgbsdk/common/host/abiq;->lx:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    :goto_1
    iget-object v5, p0, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    invoke-interface {v4, v2, v5, p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;->getShareCookie(Landroid/webkit/CookieManager;Lgbsdk/common/host/abjz;Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lcom/bytedance/common/utility/Lists;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 201
    invoke-direct {p0, v2, p2}, Lgbsdk/common/host/abiq;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :catchall_2
    move-exception v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    :cond_7
    sget-boolean v2, Lgbsdk/common/host/abiq;->lx:Z

    if-nez v2, :cond_9

    .line 211
    :try_start_3
    iget-object v2, p0, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 212
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 213
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-direct {p0, v0, p2}, Lgbsdk/common/host/abiq;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    :cond_9
    iget-object v0, p0, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    if-nez v0, :cond_a

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 230
    :cond_a
    :try_start_4
    iget-object v0, p0, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    if-nez p2, :cond_b

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_2

    :cond_b
    move-object v2, p2

    :goto_2
    invoke-virtual {v0, p1, v2}, Lgbsdk/common/host/abjz;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 232
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 233
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 234
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abiq;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-object p1

    :catchall_3
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 192
    :cond_d
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 276
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCookieShareInterceptor()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$CookieShareInterceptor;->getShareCookieHostList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 280
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    const-string v8, "Set-Cookie"

    if-eqz v3, :cond_1

    .line 282
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    :try_start_0
    const-string v0, "shareHostList"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    if-nez v4, :cond_2

    move-object v11, v10

    goto :goto_2

    .line 286
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v9, :cond_3

    const-string v0, "responseHeaders"

    .line 288
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "url"

    if-nez v2, :cond_4

    goto :goto_3

    .line 290
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getAppCookieStore()Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 298
    invoke-interface {v0, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AppCookieStore;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    :cond_5
    :goto_4
    sget-boolean v0, Lgbsdk/common/host/abiq;->lx:Z

    const-string v10, "X-SS-Set-Cookie"

    if-nez v0, :cond_16

    if-eqz v2, :cond_15

    if-eqz v3, :cond_15

    .line 307
    iget-object v0, v1, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    if-nez v0, :cond_6

    goto/16 :goto_11

    .line 311
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    sget-boolean v11, Lgbsdk/common/host/abiq;->lo:Z

    if-eqz v11, :cond_7

    .line 314
    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 316
    :cond_7
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    .line 318
    :goto_5
    array-length v12, v11

    const/4 v13, 0x0

    :goto_6
    if-ge v6, v12, :cond_14

    aget-object v14, v11, v6

    .line 319
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_8

    .line 320
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 321
    :cond_8
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_13

    .line 322
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    goto/16 :goto_f

    :cond_9
    :try_start_3
    const-string v7, "cookieMgrList"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v17, v11

    .line 328
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_1
    move-object/from16 v17, v11

    .line 333
    :catch_2
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 334
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 335
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 337
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v7

    const-string v7, "sessionid="

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v13, 0x1

    .line 340
    :cond_a
    iget-object v7, v1, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    invoke-virtual {v7, v0, v11}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :try_start_5
    invoke-static {v4}, Lcom/bytedance/common/utility/Lists;->isEmpty(Ljava/util/List;)Z

    move-result v7

    const/4 v15, 0x1

    xor-int/2addr v7, v15

    if-nez v7, :cond_b

    move/from16 v20, v12

    goto/16 :goto_d

    .line 346
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 348
    :try_start_6
    invoke-static {v15}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v19, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 v19, v7

    .line 351
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_a
    move-object/from16 v7, v19

    goto :goto_9

    .line 354
    :cond_d
    invoke-direct {v1, v2, v11}, Lgbsdk/common/host/abiq;->a(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_a

    .line 358
    :cond_e
    iget-object v7, v1, Lgbsdk/common/host/abiq;->lt:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-static {v7}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v20, :cond_f

    move/from16 v20, v12

    .line 360
    :try_start_8
    iget-object v12, v1, Lgbsdk/common/host/abiq;->lr:Landroid/webkit/CookieManager;

    invoke-virtual {v12, v15, v7}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_c

    :catchall_1
    :cond_f
    :goto_b
    move/from16 v20, v12

    goto :goto_c

    :catchall_2
    move-object/from16 v19, v7

    goto :goto_b

    :catchall_3
    :goto_c
    move-object/from16 v7, v19

    move/from16 v12, v20

    goto :goto_9

    :catchall_4
    :cond_10
    move/from16 v20, v12

    .line 369
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive cookie: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "SSCookieHandler"

    invoke-static {v11, v7}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_d
    move-object/from16 v7, v18

    move/from16 v12, v20

    goto/16 :goto_8

    :cond_12
    :goto_e
    move/from16 v20, v12

    goto :goto_10

    :cond_13
    :goto_f
    move-object/from16 v17, v11

    goto :goto_e

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v17

    move/from16 v12, v20

    goto/16 :goto_6

    .line 376
    :cond_14
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v13}, Lgbsdk/common/host/abiq;->b(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_12

    :catchall_5
    nop

    goto :goto_12

    :cond_15
    :goto_11
    const-string v0, "uri responseHeaders or mCookieMgr is null"

    .line 308
    invoke-direct {v1, v5, v0, v9}, Lgbsdk/common/host/abiq;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void

    .line 382
    :cond_16
    :goto_12
    iget-object v0, v1, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    if-nez v0, :cond_17

    const-string v0, "mAppCookieMgr is null"

    .line 383
    invoke-direct {v1, v5, v0, v9}, Lgbsdk/common/host/abiq;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void

    .line 388
    :cond_17
    :try_start_a
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 389
    sget-boolean v6, Lgbsdk/common/host/abiq;->lo:Z

    if-eqz v6, :cond_18

    .line 390
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 391
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_18
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 395
    iget-object v6, v1, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    invoke-virtual {v6, v2, v0}, Lgbsdk/common/host/abjz;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 396
    invoke-static {v4}, Lcom/bytedance/common/utility/Lists;->isEmpty(Ljava/util/List;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-nez v6, :cond_19

    const-string v0, "isInShareCookieList is false"

    .line 398
    invoke-direct {v1, v5, v0, v9}, Lgbsdk/common/host/abiq;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void

    .line 401
    :cond_19
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catchall_6
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 403
    :try_start_b
    invoke-static {v6}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_13

    .line 406
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_13

    .line 409
    :cond_1b
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_1c

    const-string v6, "cookieList is null"

    .line 411
    invoke-direct {v1, v5, v6, v9}, Lgbsdk/common/host/abiq;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void

    .line 415
    :cond_1c
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 416
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 417
    :cond_1d
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 418
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 419
    invoke-direct {v1, v2, v11}, Lgbsdk/common/host/abiq;->a(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    goto :goto_14

    .line 423
    :cond_1e
    iget-object v12, v1, Lgbsdk/common/host/abiq;->lt:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 424
    invoke-static {v11}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    .line 425
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 428
    :cond_1f
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v7, v1, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 429
    invoke-virtual {v7, v6, v0}, Lgbsdk/common/host/abjz;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_20
    const-string v0, "last return"

    .line 440
    invoke-direct {v1, v5, v0, v9}, Lgbsdk/common/host/abiq;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method
