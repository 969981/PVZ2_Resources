.class public Lgbsdk/common/host/abkj;
.super Ljava/lang/Object;
.source "StoreRegionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abkj$ab;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sA:Ljava/lang/String; = "store_region"

.field private static final sB:Ljava/lang/String; = "store_region_did"

.field private static final sC:Ljava/lang/String; = "store_region_uid"

.field private static final sD:Ljava/lang/String; = "store_region_src"

.field private static final sE:Ljava/lang/String; = "disable_store_region"

.field private static volatile sl:Lgbsdk/common/host/abkj; = null

.field public static final sm:Ljava/lang/String; = "x-tt-store-region"

.field public static final sn:Ljava/lang/String; = "x-tt-store-region-src"

.field public static final so:Ljava/lang/String; = "x-tt-store-region-did"

.field public static final sp:Ljava/lang/String; = "x-tt-store-region-uid"

.field public static final sq:Ljava/lang/String; = "x-tt-local-region"

.field public static final sr:Ljava/lang/String; = "x-tt-store-idc"

.field public static final ss:Ljava/lang/String; = "x-tt-tnc-attr"

.field public static final st:Ljava/lang/String; = "x-tt-with-tnc"

.field public static final su:Ljava/lang/String; = "x-ss-etag"

.field public static final sv:Ljava/lang/String; = "x-tt-tnc-config"

.field private static final sw:Ljava/lang/String; = "update_store_idc_path_list"

.field private static final sx:Ljava/lang/String; = "add_store_idc_host_list"

.field private static final sy:Ljava/lang/String; = "ttnet_store_region"

.field private static final sz:Ljava/lang/String; = "store_idc"


# instance fields
.field private mContext:Landroid/content/Context;

.field public sF:Ljava/lang/String;

.field private sG:Ljava/lang/String;

.field private sH:Ljava/lang/String;

.field private sI:Ljava/lang/String;

.field public sJ:Ljava/lang/String;

.field private sK:Ljava/lang/String;

.field private sL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sN:Z

.field private sO:Z

.field private sP:Lgbsdk/common/host/abkk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lgbsdk/common/host/abkj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abkj;->sM:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    .line 63
    iput-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    return-void
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "uid"

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "did"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private a(Losdk/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 377
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "url"

    .line 379
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "headers"

    .line 380
    invoke-virtual {p1}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Losdk/okhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "base"

    .line 381
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "report_time"

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "store_idc"

    .line 383
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "store_region"

    .line 384
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "source"

    .line 385
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "did_region"

    .line 386
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid_region"

    .line 387
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "local"

    .line 388
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 393
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Request$Builder;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/client/Request;",
            "Lcom/bytedance/retrofit2/client/Request$Builder;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 172
    :cond_3
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "none"

    const-string v2, "x-tt-store-region-did"

    if-nez v0, :cond_4

    .line 173
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    iget-object v3, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_4
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, "x-tt-store-region-uid"

    if-nez v0, :cond_5

    .line 179
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    iget-object v1, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_5
    new-instance v0, Lcom/bytedance/retrofit2/client/Header;

    invoke-direct {v0, v2, v1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_1
    new-instance p3, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "okhttp_version"

    const-string v0, "4.1.79.36-gsdk"

    .line 185
    invoke-virtual {p3, p1, v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/retrofit2/client/Request$Builder;->url(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Request$Builder;

    return-void
.end method

.method private aS(Ljava/lang/String;)Z
    .locals 2

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "uid"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "did"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private aT(Ljava/lang/String;)Z
    .locals 3

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 418
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 419
    invoke-static {p1, v2}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public static cD()Lgbsdk/common/host/abkj;
    .locals 2

    .line 67
    sget-object v0, Lgbsdk/common/host/abkj;->sl:Lgbsdk/common/host/abkj;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lgbsdk/common/host/abkj;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abkj;->sl:Lgbsdk/common/host/abkj;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lgbsdk/common/host/abkj;

    invoke-direct {v1}, Lgbsdk/common/host/abkj;-><init>()V

    sput-object v1, Lgbsdk/common/host/abkj;->sl:Lgbsdk/common/host/abkj;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abkj;->sl:Lgbsdk/common/host/abkj;

    return-object v0
.end method

.method private cF()V
    .locals 4

    .line 139
    iget-object v0, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    const-string v1, "ttnet_store_region"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "store_idc"

    const-string v3, ""

    .line 140
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    const-string v1, "store_region"

    .line 141
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v1, "store_region_uid"

    .line 142
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    const-string v1, "store_region_did"

    .line 143
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    const-string v1, "store_region_src"

    .line 144
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v1, "disable_store_region"

    .line 145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    .line 146
    invoke-direct {p0}, Lgbsdk/common/host/abkj;->cG()V

    .line 147
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sP:Lgbsdk/common/host/abkk;

    iget-object v1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lgbsdk/common/host/abkk;->onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init idc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cG()V
    .locals 1

    .line 398
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v0, "uid"

    .line 400
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v0, "did"

    .line 403
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    iput-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v0, "local"

    .line 406
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "none"

    .line 408
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v0, ""

    .line 409
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 491
    :cond_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lgbsdk/common/host/abkk;)V
    .locals 5

    .line 104
    sget-object v0, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rule json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    if-nez p4, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "update_store_idc_path_list"

    .line 109
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 111
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    iget-object v4, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "add_store_idc_host_list"

    .line 116
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 117
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 118
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    iget-object v2, p0, Lgbsdk/common/host/abkj;->sM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_4
    iput-object p3, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    .line 124
    iput-object p4, p0, Lgbsdk/common/host/abkj;->sP:Lgbsdk/common/host/abkk;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 126
    iput-object p1, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    .line 127
    :cond_5
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lgbsdk/common/host/abkj;->sL:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lgbsdk/common/host/abkj;->sN:Z

    .line 130
    invoke-direct {p0}, Lgbsdk/common/host/abkj;->cF()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;[BLgbsdk/common/host/abkj$ab;)V
    .locals 10

    if-eqz p1, :cond_4

    .line 440
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 442
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abkj;->aT(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "x-tt-store-region"

    .line 446
    invoke-static {p1, v0}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "x-tt-store-region-src"

    .line 447
    invoke-static {p1, v0}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-direct {p0, v3, v4}, Lgbsdk/common/host/abkj;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "x-tt-store-idc"

    .line 452
    invoke-static {p1, v0}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "x-tt-with-tnc"

    .line 453
    invoke-static {p1, v0}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-tt-tnc-attr"

    .line 454
    invoke-static {p1, v1}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "x-ss-etag"

    .line 455
    invoke-static {p1, v1}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "x-tt-tnc-config"

    .line 456
    invoke-static {p1, v1}, Lgbsdk/common/host/abkj;->getHeaderValueIgnoreCase(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "tnc_data"

    .line 461
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"data\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 465
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    const-string p2, ""

    :goto_0
    move-object v8, p2

    .line 469
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 470
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 471
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "url"

    .line 473
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "headers"

    .line 474
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 476
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 479
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p3

    invoke-interface/range {v1 .. v9}, Lgbsdk/common/host/abkj$ab;->notifyStoreRegionUpdatedForCronet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Losdk/okhttp3/Response;Ljava/lang/String;[B)V
    .locals 12

    .line 249
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 253
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_c

    .line 257
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abkj;->aT(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "x-tt-store-region"

    .line 261
    invoke-virtual {p1, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-tt-store-region-src"

    .line 262
    invoke-virtual {p1, v1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 265
    invoke-direct {p0, v1}, Lgbsdk/common/host/abkj;->aS(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_5

    .line 268
    :cond_3
    sget-object v2, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origin idc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " source: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " did: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " local: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "x-tt-store-idc"

    .line 272
    invoke-virtual {p1, v2}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    iget-object v3, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    const-string v9, "ttnet_store_region"

    const/4 v10, 0x0

    .line 275
    invoke-virtual {v3, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v9, "did"

    .line 276
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_4

    iget-object v9, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 278
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    const-string v1, "store_region_did"

    .line 279
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v9, "uid"

    .line 281
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "none"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "store_region_uid"

    if-eqz v1, :cond_5

    .line 284
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ""

    .line 285
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    .line 286
    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 290
    :cond_5
    iput-object v0, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    .line 291
    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 296
    :goto_1
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lgbsdk/common/host/abkj;->cG()V

    .line 300
    iget-object v9, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "store_idc"

    if-eqz v1, :cond_8

    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move v11, v0

    goto :goto_3

    .line 302
    :cond_8
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 303
    iput-object v2, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    .line 304
    :cond_9
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v1, "store_region"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-interface {v3, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v10, 0x1

    .line 310
    :goto_3
    sget-object v0, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update idc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " update tnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_a

    .line 316
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v1, "store_region_src"

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sP:Lgbsdk/common/host/abkk;

    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abkj;->a(Losdk/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, v9}, Lgbsdk/common/host/abkk;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p2, p0, Lgbsdk/common/host/abkj;->sP:Lgbsdk/common/host/abkk;

    iget-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lgbsdk/common/host/abkk;->onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string p2, "x-ss-etag"

    .line 326
    invoke-virtual {p1, p2}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "x-tt-tnc-attr"

    .line 327
    invoke-virtual {p1, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-tt-with-tnc"

    .line 328
    invoke-virtual {p1, v1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 332
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "tnc_data"

    .line 333
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    :cond_b
    :goto_4
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sP:Lgbsdk/common/host/abkk;

    invoke-interface {p1, v1, p2, v0, v10}, Lgbsdk/common/host/abkk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    :catch_1
    :cond_c
    :goto_5
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 343
    iget-object v0, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 344
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 346
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "ttnet_store_region"

    .line 352
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    iput-object p1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    .line 356
    :cond_3
    iput-object p2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string p1, "uid"

    .line 357
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    iput-object p1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "did"

    .line 360
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 361
    iput-object p1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    .line 365
    :cond_5
    :goto_0
    sget-object p1, Lgbsdk/common/host/abkj;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "saveStoreRegionForCronet idc:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " region:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " source:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string p2, "store_region"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    const-string p2, "store_idc"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string p2, "store_region_src"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sH:Ljava/lang/String;

    const-string p2, "store_region_did"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    iget-object p1, p0, Lgbsdk/common/host/abkj;->sI:Ljava/lang/String;

    const-string p2, "store_region_uid"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    :goto_1
    return-void
.end method

.method public cE()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Request;
    .locals 5

    .line 190
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-nez v0, :cond_9

    .line 191
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 194
    iget-object v2, p0, Lgbsdk/common/host/abkj;->sM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    return-object v1

    .line 205
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_4
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    const-string v3, "x-tt-store-idc"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_5
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "x-tt-local-region"

    if-nez v1, :cond_7

    .line 214
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgbsdk/common/host/abkj;->aS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v3, "x-tt-store-region"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v2, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v3, "x-tt-store-region-src"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_6
    iget-object v1, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v3, "local"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    iget-object v3, p0, Lgbsdk/common/host/abkj;->sK:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_7
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_8
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->newBuilder()Lcom/bytedance/retrofit2/client/Request$Builder;

    move-result-object v1

    .line 225
    invoke-direct {p0, p1, v1, v0}, Lgbsdk/common/host/abkj;->a(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Request$Builder;Ljava/util/List;)V

    .line 226
    invoke-virtual {v1, v0}, Lcom/bytedance/retrofit2/client/Request$Builder;->headers(Ljava/util/List;)Lcom/bytedance/retrofit2/client/Request$Builder;

    .line 227
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request$Builder;->build()Lcom/bytedance/retrofit2/client/Request;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_1
    return-object v1
.end method

.method public k(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sG:Ljava/lang/String;

    const-string v1, "x-tt-store-idc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sF:Ljava/lang/String;

    const-string v1, "x-tt-store-region"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lgbsdk/common/host/abkj;->sJ:Ljava/lang/String;

    const-string v1, "x-tt-store-region-src"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public u(Z)V
    .locals 2

    .line 85
    iget-object v0, p0, Lgbsdk/common/host/abkj;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lgbsdk/common/host/abkj;->sN:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v1, p0, Lgbsdk/common/host/abkj;->sO:Z

    if-eq v1, p1, :cond_1

    .line 87
    iput-boolean p1, p0, Lgbsdk/common/host/abkj;->sO:Z

    const/4 p1, 0x0

    const-string v1, "ttnet_store_region"

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 90
    iget-boolean v0, p0, Lgbsdk/common/host/abkj;->sO:Z

    const-string v1, "disable_store_region"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method
