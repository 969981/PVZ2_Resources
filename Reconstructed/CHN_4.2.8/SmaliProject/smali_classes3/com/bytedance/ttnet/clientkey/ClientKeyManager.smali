.class public Lcom/bytedance/ttnet/clientkey/ClientKeyManager;
.super Ljava/lang/Object;
.source "ClientKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile aFX:Lcom/bytedance/ttnet/clientkey/ClientKeyManager; = null

.field private static aFY:Lcom/bytedance/keva/Keva; = null

.field private static volatile aGb:Z = false

.field private static aGg:Z = true

.field private static aGh:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final aGi:Ljava/lang/String; = "ttnet_client_key_config"

.field private static final aGj:Ljava/lang/String; = "client_key_config"

.field private static final aGk:Ljava/lang/String; = "client_key"

.field private static final aGl:Ljava/lang/String; = "session_id"

.field private static final aGm:Ljava/lang/String; = "session_url"

.field private static final aGn:Ljava/lang/String; = "kms_version"

.field private static final aGo:Ljava/lang/String; = "x-bd-client-key"

.field private static final aGp:Ljava/lang/String; = "x-bd-lanusk"

.field private static final aGq:Ljava/lang/String; = "x-bd-kmsv"

.field private static final aGr:Ljava/lang/String; = "x-bd-lanusv"

.field private static final aGs:Ljava/lang/String; = "Max-Age="

.field private static final aGt:Ljava/lang/String; = "session_time"

.field private static final aGu:Ljava/lang/String; = "\r\n"


# instance fields
.field private aFZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aGa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aGc:Ljava/lang/String;

.field private aGd:Ljava/lang/String;

.field private aGe:Ljava/lang/String;

.field private aGf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFZ:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGa:Ljava/util/List;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    return-void
.end method

.method private I(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "client_key_sign_enabled"

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    .line 355
    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    if-nez v0, :cond_1

    .line 356
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    const-string v0, "clear client key storage."

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    invoke-virtual {p1}, Lcom/bytedance/keva/Keva;->clear()V

    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "update_host_list"

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 364
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 365
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 366
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 368
    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFZ:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "update_path_list"

    .line 374
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 376
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 377
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 378
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGa:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private static R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 410
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-bd-client-key"

    .line 415
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "x-bd-kmsv"

    .line 416
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 146
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    goto :goto_3

    .line 152
    :cond_0
    array-length v1, p0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Max-Age="

    if-ge v5, v1, :cond_2

    aget-object v7, p0, v5

    .line 153
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string p0, "="

    .line 154
    invoke-virtual {v7, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    move-object v7, p0

    :goto_1
    if-eqz p0, :cond_6

    .line 160
    array-length v1, p0

    if-eq v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    .line 165
    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long p0, v1, v3

    if-gtz p0, :cond_4

    return-object v0

    .line 170
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p1

    const-wide/16 p0, 0x3e8

    div-long/2addr v8, p0

    sub-long/2addr v1, v8

    cmp-long p0, v1, v3

    if-gtz p0, :cond_5

    goto :goto_2

    :cond_5
    move-wide v3, v1

    .line 175
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_6
    :goto_3
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/net/CookieHandler;Ljava/net/URI;)V
    .locals 3

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Set-Cookie"

    .line 216
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p2, p3, v0}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 218
    sget-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Refresh session cookie: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cw(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Cookie"

    .line 182
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 194
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    sget-object v3, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cookieStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sessionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 199
    invoke-direct {p0, p1, v1, v2}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->a(Ljava/lang/String;Ljava/net/CookieHandler;Ljava/net/URI;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->cx(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0, p1, v1, v2}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->a(Ljava/lang/String;Ljava/net/CookieHandler;Ljava/net/URI;)V

    const-string p1, "empty"

    .line 204
    invoke-direct {p0, p1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->cx(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method private cx(Ljava/lang/String;)V
    .locals 5

    .line 223
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "report_time"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cookie_line"

    .line 225
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "session_id"

    .line 226
    iget-object v1, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    .line 227
    iget-object v1, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object p1

    const-string v1, "cookie_mismatch"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/ttnet/ITTNetDepend;->monitorLogSend(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFX:Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFX:Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    invoke-direct {v1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;-><init>()V

    sput-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFX:Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFX:Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    return-object v0
.end method

.method public static getClientKeyHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGg:Z

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGh:Ljava/util/Map;

    return-object v0

    .line 430
    :cond_1
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v1, "client_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v3, "kms_version"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public F(Z)V
    .locals 6

    .line 76
    sput-boolean p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGg:Z

    :try_start_0
    const-string p1, "ttnet_client_key_config"

    const/4 v0, 0x1

    .line 78
    invoke-static {p1, v0}, Lcom/bytedance/keva/Keva;->getRepo(Ljava/lang/String;I)Lcom/bytedance/keva/Keva;

    move-result-object p1

    sput-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :goto_0
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "client_key_config"

    const-string v1, ""

    .line 87
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->I(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    .line 97
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    if-nez v0, :cond_2

    return-void

    .line 101
    :cond_2
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-wide/16 v3, 0x0

    const-string v5, "session_time"

    invoke-virtual {v2, v5, v3, v4}, Lcom/bytedance/keva/Keva;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 103
    sget-object v4, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v5, "session_url"

    invoke-virtual {v4, v5, v1}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    .line 104
    sget-object v4, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v5, "client_key"

    invoke-virtual {v4, v5, v1}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    .line 105
    sget-object v4, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v5, "kms_version"

    invoke-virtual {v4, v5, v1}, Lcom/bytedance/keva/Keva;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGh:Ljava/util/Map;

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, ";"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 115
    array-length v4, v1

    if-lez v4, :cond_4

    const/4 v4, 0x0

    .line 116
    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    .line 119
    :cond_4
    iget-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    .line 124
    :cond_5
    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->a([Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v0, v1

    .line 129
    :cond_6
    sget-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | kms version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | session cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | sessionid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " | session time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " session url: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " config: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->cw(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;)V
    .locals 8

    monitor-enter p0

    .line 249
    :try_start_0
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 256
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/util/URIUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz v1, :cond_10

    .line 261
    :try_start_2
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFZ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 268
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 274
    monitor-exit p0

    return-void

    .line 279
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 280
    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGa:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    .line 288
    monitor-exit p0

    return-void

    :cond_7
    :try_start_4
    const-string v1, ""

    const-string v2, ""

    const-string v3, "Set-Cookie"

    .line 295
    invoke-virtual {p2, v3}, Lcom/bytedance/retrofit2/client/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 296
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 297
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/retrofit2/client/Header;

    .line 298
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 299
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sessionid="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v1, v5

    :cond_9
    const-string v3, ";"

    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 307
    array-length v5, v3

    if-lez v5, :cond_a

    .line 308
    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 311
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_b

    .line 312
    monitor-exit p0

    return-void

    .line 315
    :cond_b
    :try_start_5
    sget-object v3, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original sessionid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new sessionid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, ""

    const-string v5, "x-bd-lanusk"

    .line 319
    invoke-virtual {p2, v5}, Lcom/bytedance/retrofit2/client/Response;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object v5

    const-string v6, "x-bd-lanusv"

    .line 320
    invoke-virtual {p2, v6}, Lcom/bytedance/retrofit2/client/Response;->getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;

    move-result-object p2

    if-eqz v5, :cond_d

    if-eqz p2, :cond_d

    .line 322
    invoke-virtual {v5}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {p2}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_c
    const-string p2, ""

    .line 325
    iput-object p2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    const-string p2, ""

    .line 326
    iput-object p2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    goto :goto_3

    .line 330
    :cond_d
    iget-object p2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 331
    iget-object v3, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    .line 332
    iget-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    .line 335
    :cond_e
    :goto_3
    iput-object v3, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    .line 336
    iput-object v4, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    .line 338
    iput-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGd:Ljava/lang/String;

    .line 339
    sget-object v2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v3, "session_url"

    invoke-virtual {v2, v3, p2}, Lcom/bytedance/keva/Keva;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v2, "session_id"

    invoke-virtual {p2, v2, v1}, Lcom/bytedance/keva/Keva;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v2, "client_key"

    iget-object v3, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lcom/bytedance/keva/Keva;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v2, "kms_version"

    iget-object v3, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lcom/bytedance/keva/Keva;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    const-string v2, "session_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Lcom/bytedance/keva/Keva;->storeLong(Ljava/lang/String;J)V

    .line 344
    iget-object p2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    sput-object p2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGh:Ljava/util/Map;

    .line 345
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 346
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/bytedance/retrofit2/RetrofitMetrics;->updateClientKeyDuration:J

    .line 348
    :cond_f
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save session url: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGe:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " session cookie: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " client key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kms version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    monitor-exit p0

    return-void

    .line 262
    :cond_10
    :goto_4
    monitor-exit p0

    return-void

    .line 250
    :cond_11
    :goto_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Lcom/bytedance/retrofit2/RetrofitMetrics;",
            ")V"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGc:Ljava/lang/String;

    const-string v3, "x-bd-client-key"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v2, p0, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGf:Ljava/lang/String;

    const-string v3, "x-bd-kmsv"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->addClientKeyDuration:J

    :cond_1
    :goto_0
    return-void
.end method

.method public cy(Ljava/lang/String;)V
    .locals 5

    const-string v0, "client_key_config"

    .line 387
    sget-object v1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 393
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 395
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    const-string v0, "clear client key storage."

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 396
    sput-boolean p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aGb:Z

    .line 397
    sget-object p1, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    invoke-virtual {p1}, Lcom/bytedance/keva/Keva;->clear()V

    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    sget-object v2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v2, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->aFY:Lcom/bytedance/keva/Keva;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/keva/Keva;->storeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, p1}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->I(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
