.class public Lcom/bytedance/framwork/core/apm/SDKMonitor;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Lgbsdk/common/host/aboe;
.implements Lgbsdk/common/host/abof;
.implements Lgbsdk/common/host/abok;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;,
        Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;,
        Lcom/bytedance/framwork/core/apm/SDKMonitor$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ApmInsight"


# instance fields
.field private volatile A:Z

.field private volatile B:Z

.field private volatile C:Z

.field private volatile D:Z

.field private volatile E:J

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lgbsdk/common/host/abnk;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

.field private a:Landroid/content/Context;

.field private b:Lorg/json/JSONObject;

.field private c:Lgbsdk/common/host/abnp;

.field private d:Lgbsdk/common/host/abnt;

.field private e:Z

.field private volatile f:J

.field private volatile g:J

.field private volatile h:I

.field private volatile i:I

.field private volatile j:I

.field private volatile k:I

.field private volatile l:Lorg/json/JSONObject;

.field private volatile m:Lorg/json/JSONObject;

.field private volatile n:Lgbsdk/common/host/abnr;

.field private volatile o:I

.field private volatile p:I

.field private volatile q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private volatile s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private volatile u:I

.field private volatile v:J

.field private w:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile z:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    const-wide/16 v1, 0x0

    .line 124
    iput-wide v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f:J

    const/4 v1, 0x1

    .line 145
    iput v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->u:I

    .line 152
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->y:Ljava/util/List;

    .line 161
    iput-boolean v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->B:Z

    .line 166
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    .line 182
    new-instance p1, Lgbsdk/common/host/abnk;

    invoke-direct {p1}, Lgbsdk/common/host/abnk;-><init>()V

    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    const-wide/16 v1, 0x0

    .line 124
    iput-wide v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f:J

    const/4 v1, 0x1

    .line 145
    iput v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->u:I

    .line 152
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->y:Ljava/util/List;

    .line 161
    iput-boolean v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->B:Z

    .line 166
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    .line 186
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    .line 187
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    .line 188
    new-instance p1, Lgbsdk/common/host/abnk;

    invoke-direct {p1}, Lgbsdk/common/host/abnk;-><init>()V

    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    .line 189
    iput-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "UTF-8"

    .line 1016
    :goto_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1018
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "?"

    .line 976
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const p1, 0xf6cca

    .line 979
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk_version"

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g()V

    .line 981
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 982
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 983
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 985
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 986
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1005
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const-string v0, "&"

    .line 1006
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "UTF-8"

    .line 1008
    invoke-static {p2, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    .line 1009
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    invoke-static {p3, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3

    .line 1495
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1499
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "log_type"

    .line 1500
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 1501
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1502
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "uri"

    .line 1503
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_2

    const-string p1, "timestamp"

    .line 1506
    invoke-virtual {v0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "status"

    .line 1508
    invoke-virtual {v0, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1509
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "ip"

    .line 1510
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1512
    :cond_3
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "trace_code"

    if-nez p1, :cond_4

    .line 1513
    :try_start_1
    invoke-virtual {v0, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 1515
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "network_type"

    .line 1517
    iget-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-static {p2}, Lgbsdk/common/host/abnc;->U(Landroid/content/Context;)Lgbsdk/common/host/abnc$ad;

    move-result-object p2

    iget p2, p2, Lgbsdk/common/host/abnc$ad;->g:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "app_version"

    const-string v5, "channel"

    const-string v6, "device_id"

    const-string v7, "1"

    const-string v8, "version_code"

    const-string v9, "version_name"

    const-string v10, "1.1.8"

    const-string v11, "sdkmonitor_version"

    const-string v12, "android"

    const-string v13, "device_platform"

    const-string v14, "aid"

    const-string v15, "package_name"

    if-eqz v1, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v16, v4

    const/4 v4, 0x1

    .line 303
    iput-boolean v4, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->C:Z

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    .line 305
    iput-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    .line 307
    :try_start_0
    invoke-static {v2, v1}, Lgbsdk/common/host/abmz;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 308
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lgbsdk/common/host/abmz;->d(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :catch_0
    :try_start_1
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-virtual {v2, v14, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v4, "os"

    const-string v1, "Android"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "os_api"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "device_brand"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "device_manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v2, "monitor_from"

    const-string v4, "sdk"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v1, 0x0

    .line 334
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 335
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 336
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    :cond_2
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 340
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 342
    :cond_3
    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    :cond_4
    iput-object v3, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->w:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    if-nez v3, :cond_5

    .line 347
    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor$9;

    invoke-direct {v1, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$9;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    iput-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->w:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    .line 359
    :cond_5
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->w:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    invoke-interface {v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 363
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    .line 365
    :cond_6
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    const-string v2, "oversea"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->J:Z

    .line 366
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    invoke-interface {v1, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    const-string v2, "minor_version"

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-static {v1, v0}, Lgbsdk/common/host/aboj;->a(Ljava/lang/String;Lgbsdk/common/host/abok;)V

    .line 377
    iget-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-static {v1, v0}, Lgbsdk/common/host/aboi;->a(Ljava/lang/String;Lgbsdk/common/host/abof;)V

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h()V

    .line 380
    new-instance v1, Lgbsdk/common/host/abnp;

    iget-object v2, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abnp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    .line 381
    invoke-virtual {v1}, Lgbsdk/common/host/abnp;->a()V

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1479
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1483
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1484
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1486
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1489
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/framwork/core/apm/SDKMonitor;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;)Z"
        }
    .end annotation

    .line 1454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1457
    :cond_0
    invoke-static {p2}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1458
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1459
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1465
    :cond_2
    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1466
    invoke-static {p3}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 1467
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/regex/Pattern;

    .line 1468
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    return v2

    :catchall_0
    :cond_4
    return v1
.end method

.method static synthetic b(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnk;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    return-object p0
.end method

.method private b()Lgbsdk/common/host/abnr;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->n:Lgbsdk/common/host/abnr;

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "ret"

    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 558
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lorg/json/JSONObject;)V

    .line 559
    invoke-virtual {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 560
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "monitor_configure_refresh_time"

    .line 562
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "monitor_config_update"

    const/4 v3, 0x1

    .line 563
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "monitor_net_config"

    .line 565
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 567
    iget-boolean p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez p1, :cond_0

    .line 568
    iput-boolean v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    .line 569
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    invoke-virtual {p1, p0}, Lgbsdk/common/host/abnk;->k(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->t:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/util/Map;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 436
    invoke-virtual {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "monitor_net_config"

    const/4 v2, 0x0

    .line 437
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "monitor_configure_refresh_time"

    const-wide/16 v3, 0x0

    .line 438
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f:J

    const-string v2, "monitor_config_update"

    const/4 v3, 0x0

    .line 439
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    sget-object v4, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    invoke-virtual {v4, p0}, Lgbsdk/common/host/abob;->a(Lgbsdk/common/host/aboe;)V

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 443
    :try_start_0
    iput-boolean v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    .line 444
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "report_host_new"

    .line 446
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "monitor_config"

    const-string v1, "config error"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->r:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private d()Ljava/lang/String;
    .locals 8

    const-string v0, "device_model"

    const-string v1, "os_version"

    const-string v2, "channel"

    const-string v3, "app_version"

    const-string v4, "device_id"

    .line 520
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "aid"

    .line 522
    iget-object v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "os"

    const-string v7, "Android"

    .line 523
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    iget-object v6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "update_version_code"

    .line 525
    iget-object v6, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v7, "version_code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    iget-object v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x-auth-token"

    .line 530
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "user_id"

    .line 533
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v1}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 546
    :cond_3
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 547
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 548
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/util/List;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->y:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnr;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b()Lgbsdk/common/host/abnr;

    move-result-object p0

    return-object p0
.end method

.method private e()Z
    .locals 5

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/lang/String;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "device_id"

    .line 764
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v2}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 770
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 772
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v2}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    const-string v1, "device_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v2}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    const-string v1, "user_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {v0}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->x:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    invoke-virtual {v2}, Lcom/apmplus/sdk/event/SDKEventIDynamicParams;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    return p0
.end method

.method static synthetic h(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 1023
    new-instance v0, Lcom/bytedance/framwork/core/apm/SDKMonitor$11;

    invoke-direct {v0, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$11;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-static {v0}, Lgbsdk/common/host/abmo;->a(Lgbsdk/common/host/abmo$ac;)V

    return-void
.end method

.method static synthetic i(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnp;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    return-object p0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->w:Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;

    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic j(Lcom/bytedance/framwork/core/apm/SDKMonitor;)Lgbsdk/common/host/abnt;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    return-object p0
.end method


# virtual methods
.method a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 13

    move-object v10, p0

    move-object/from16 v11, p5

    const-string v12, "api_all"

    .line 1418
    invoke-direct {p0, v11}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v10, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abnc;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "api_all"

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 1421
    invoke-direct/range {v0 .. v9}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p9

    .line 1422
    invoke-direct {p0, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_1

    .line 1424
    invoke-direct {p0, v11}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget v1, v10, Lcom/bytedance/framwork/core/apm/SDKMonitor;->p:I

    if-eqz v1, :cond_3

    :cond_2
    :try_start_0
    const-string v1, "hit_rules"

    const/4 v2, 0x1

    .line 1426
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1427
    iget-object v1, v10, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    invoke-virtual {v1, v12, v12, v0}, Lgbsdk/common/host/abnp;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    .locals 12

    .line 1235
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v11, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/framwork/core/apm/SDKMonitor$14;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v11}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 8

    .line 1382
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v7, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/framwork/core/apm/SDKMonitor$6;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 396
    invoke-static {p1}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_0

    .line 579
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "ApmInsight"

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abmv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    sget-object v0, Lgbsdk/common/host/abna;->a:Ljava/lang/String;

    sget-object v1, Lgbsdk/common/host/abna;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lgbsdk/common/host/abng;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 589
    sget-object v2, Lgbsdk/common/host/abna;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 591
    sget-object v3, Lgbsdk/common/host/abna;->i:Ljava/lang/String;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    .line 593
    :cond_2
    iget-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    const-wide/16 v4, 0x258

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 594
    iput-wide v4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    .line 596
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 597
    monitor-exit p0

    return-void

    .line 600
    :cond_4
    :try_start_1
    sget-object v2, Lgbsdk/common/host/abna;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "hosts"

    .line 604
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 605
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 606
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    .line 608
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 609
    iget-boolean v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->J:Z

    if-eqz v7, :cond_6

    const-string v7, ".snssdk."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, ".toutiao."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 610
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 613
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_7

    .line 614
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 621
    :catch_0
    :cond_8
    :goto_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 622
    invoke-static {v2}, Lcom/bytedance/framwork/core/apm/SDKMonitorUtils;->convertReportUrl(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    :cond_9
    const-string v2, "uploading_interval"

    const/16 v3, 0x78

    .line 625
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    .line 626
    iget v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    if-gez v2, :cond_a

    goto :goto_2

    :cond_a
    iget v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    :goto_2
    iput v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    const-string v2, "once_max_count"

    const/16 v3, 0x64

    .line 627
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    .line 628
    iget v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    if-gez v2, :cond_b

    goto :goto_3

    :cond_b
    iget v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    :goto_3
    iput v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    const-string v2, "max_retry_count"

    const/4 v3, 0x4

    .line 629
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->j:I

    const-string v2, "report_fail_base_interval"

    const/16 v3, 0xf

    .line 631
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->k:I

    const-string v2, "log_send_switch"

    const/4 v3, 0x1

    .line 634
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->u:I

    const-string v2, "more_channel_stop_interval"

    const-wide/16 v4, 0x708

    .line 635
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->v:J

    const-string v2, "enable_encrypt"

    .line 637
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->B:Z

    const-string v2, "memory_store_cache_max_count"

    const-wide/16 v3, 0x7d0

    .line 638
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->E:J

    const-string v2, "log_remove_switch"

    .line 640
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->z:Z

    .line 644
    :cond_c
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_d

    const/4 p1, 0x0

    .line 645
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    .line 650
    :cond_d
    :try_start_4
    sget-object v0, Lgbsdk/common/host/abna;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v2, "allow_service_name"

    .line 652
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->l:Lorg/json/JSONObject;

    const-string v2, "allow_log_type"

    .line 653
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->m:Lorg/json/JSONObject;

    .line 657
    :cond_e
    sget-object v0, Lgbsdk/common/host/abna;->c:Ljava/lang/String;

    sget-object v2, Lgbsdk/common/host/abna;->e:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lgbsdk/common/host/abng;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string v0, "enable_api_error_upload"

    .line 659
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->o:I

    const-string v0, "enable_api_all_upload"

    .line 660
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->p:I

    const-string v0, "api_block_list"

    .line 661
    invoke-static {p1, v0}, Lgbsdk/common/host/abnb;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->q:Ljava/util/List;

    const-string v0, "api_block_list"

    .line 662
    invoke-static {p1, v0}, Lgbsdk/common/host/abnb;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->r:Ljava/util/List;

    const-string v0, "api_allow_list"

    .line 663
    invoke-static {p1, v0}, Lgbsdk/common/host/abnb;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->s:Ljava/util/List;

    const-string v0, "api_allow_list"

    .line 664
    invoke-static {p1, v0}, Lgbsdk/common/host/abnb;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->t:Ljava/util/List;

    .line 667
    :cond_f
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    if-nez p1, :cond_10

    .line 668
    new-instance p1, Lgbsdk/common/host/abnt;

    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lgbsdk/common/host/abnt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    .line 669
    invoke-virtual {p1}, Lgbsdk/common/host/abnt;->a()V

    .line 671
    :cond_10
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    invoke-virtual {p1}, Lgbsdk/common/host/abnt;->F()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Z)V
    .locals 5

    .line 463
    iget-wide v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 464
    iput-wide v2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    :cond_0
    if-nez p1, :cond_1

    .line 466
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abnc;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 467
    const-class p1, Lcom/bytedance/framwork/core/apm/SDKMonitor;

    monitor-enter p1

    .line 468
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f:J

    .line 469
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    sget-object p1, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v0, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;

    invoke-direct {v0, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$10;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 469
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    :cond_2
    :goto_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->C:Z

    return v0
.end method

.method b(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 11

    move-object v10, p0

    .line 1434
    iget v0, v10, Lcom/bytedance/framwork/core/apm/SDKMonitor;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    move-object/from16 v6, p5

    invoke-direct {p0, v6}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "api_error"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 1437
    invoke-direct/range {v0 .. v9}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, p9

    .line 1438
    invoke-direct {p0, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v10, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    if-eqz v1, :cond_1

    const-string v2, "api_error"

    .line 1440
    invoke-virtual {v1, v2, v2, v0}, Lgbsdk/common/host/abnp;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 403
    invoke-static {p1}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public deleteAllLogs()V
    .locals 1

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    invoke-virtual {v0}, Lgbsdk/common/host/abnp;->b()V

    .line 965
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    invoke-virtual {v0}, Lgbsdk/common/host/abnt;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dropAllData()V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    invoke-virtual {v0}, Lgbsdk/common/host/abnt;->f()V

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->A:Z

    return-void
.end method

.method public flushBuffer()V
    .locals 2

    .line 1304
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor$2;

    invoke-direct {v1, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$2;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushBuffer(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V
    .locals 2

    .line 1320
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor$3;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushReport()V
    .locals 2

    .line 1349
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;

    invoke-direct {v1, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$4;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushReport(Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V
    .locals 2

    .line 1366
    sget-object v0, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v1, Lcom/bytedance/framwork/core/apm/SDKMonitor$5;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor$5;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLogTypeSwitch(Ljava/lang/String;)Z
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->m:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->m:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getMonitorLogMaxSaveCount()J
    .locals 2

    .line 747
    invoke-virtual {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getMonitorLogMaxSaveCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetWorkType()I
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abmq;->R(Landroid/content/Context;)Lgbsdk/common/host/abmq$ab;

    move-result-object v0

    iget v0, v0, Lgbsdk/common/host/abmq$ab;->h:I

    return v0
.end method

.method public getRemoveSwitch()Z
    .locals 1

    .line 815
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->A:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->z:Z

    :goto_0
    return v0
.end method

.method public getServiceSwitch(Ljava/lang/String;)Z
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->l:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getSp()Landroid/content/SharedPreferences;
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abnd;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor_config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUrlDomainAndPort()Ljava/lang/String;
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lgbsdk/common/host/abnb;->l(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)Z
    .locals 3

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->C:Z

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a:Landroid/content/Context;

    .line 250
    sget-object v1, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v2, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor$8;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v1, v2, p1, p2}, Lgbsdk/common/host/abob;->b(Ljava/lang/Runnable;J)V

    return v0
.end method

.method public init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$a;)Z
    .locals 1

    if-nez p3, :cond_0

    .line 207
    new-instance p3, Lcom/bytedance/framwork/core/apm/SDKMonitor$1;

    invoke-direct {p3, p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor$1;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)Z

    move-result p1

    return p1

    .line 220
    :cond_0
    new-instance v0, Lcom/bytedance/framwork/core/apm/SDKMonitor$7;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor$7;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;Lcom/bytedance/framwork/core/apm/SDKMonitor$a;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->init(Landroid/content/Context;Lorg/json/JSONObject;Lcom/bytedance/framwork/core/apm/SDKMonitor$IGetExtendParams;)Z

    move-result p1

    return p1
.end method

.method public isDebugMode()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    return v0
.end method

.method public isLogSendSwitch()Z
    .locals 2

    .line 706
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public monitorApiError(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v11, p0

    .line 1217
    :try_start_0
    iget-boolean v0, v11, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, v11, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abnl;

    const-string v13, "api_all"

    move-object v12, v1

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    invoke-direct/range {v12 .. v22}, Lgbsdk/common/host/abnl;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnl;)V

    goto :goto_0

    .line 1220
    :cond_0
    sget-object v12, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v13, Lcom/bytedance/framwork/core/apm/SDKMonitor$13;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/framwork/core/apm/SDKMonitor$13;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v12, v13}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorCommonLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1289
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abnf;

    .line 1291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lgbsdk/common/host/abnf;-><init>(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 1290
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnf;)V

    goto :goto_0

    .line 1293
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorCommonLogInternal(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 4

    const-string v0, "common_log"

    const-string v1, "timestamp"

    :try_start_0
    const-string v2, "log_type"

    .line 1392
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "network_type"

    .line 1393
    invoke-virtual {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getNetWorkType()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1394
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "session_id"

    .line 1395
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1398
    invoke-virtual {p2, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1400
    :cond_1
    iget-object p3, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getLogTypeSwitch(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1401
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    invoke-virtual {p1, v0, v0, p2}, Lgbsdk/common/host/abnp;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public monitorDuration(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1081
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public monitorEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1139
    :try_start_0
    iget-boolean v2, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v2, :cond_0

    .line 1140
    iget-object v2, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v3, Lgbsdk/common/host/abpx;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/16 v16, 0x0

    .line 1142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v10, v3

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v18}, Lgbsdk/common/host/abpx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    .line 1140
    invoke-virtual {v2, v3}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abpx;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1144
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x0

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1144
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1162
    :try_start_0
    iget-boolean v2, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v2, :cond_0

    .line 1163
    iget-object v2, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v3, Lgbsdk/common/host/abpx;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v10, v3

    move-object/from16 v11, p1

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v18}, Lgbsdk/common/host/abpx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    .line 1163
    invoke-virtual {v2, v3}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abpx;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1167
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    .line 1167
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1095
    :try_start_0
    iget-boolean v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abpx;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v10, v1

    move-object/from16 v11, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v18}, Lgbsdk/common/host/abpx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    .line 1096
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abpx;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1100
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorSLA(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 23

    move-object/from16 v11, p0

    .line 1189
    :try_start_0
    iget-boolean v0, v11, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, v11, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abnl;

    const-string v13, "api_all"

    move-object v12, v1

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    invoke-direct/range {v12 .. v22}, Lgbsdk/common/host/abnl;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abnl;)V

    goto :goto_0

    .line 1192
    :cond_0
    sget-object v12, Lgbsdk/common/host/abob$ab;->uG:Lgbsdk/common/host/abob;

    new-instance v13, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/framwork/core/apm/SDKMonitor$12;-><init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v12, v13}, Lgbsdk/common/host/abob;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorService(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    .locals 4

    const-string v0, "timestamp"

    const-string v1, "event_log"

    .line 1247
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "log_type"

    .line 1248
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "service"

    .line 1249
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "event_name"

    .line 1250
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "status"

    .line 1251
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "network_type"

    .line 1252
    invoke-virtual {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getNetWorkType()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "value"

    .line 1253
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    const-string p2, "dimension"

    .line 1255
    invoke-virtual {v2, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p5, :cond_1

    const-string p2, "metrics"

    .line 1258
    invoke-virtual {v2, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string p2, "extra"

    .line 1261
    invoke-virtual {v2, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1263
    :cond_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1264
    invoke-virtual {v2, v0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1266
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "session_id"

    .line 1267
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1269
    :cond_4
    iget-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getServiceSwitch(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1270
    iget-object p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    invoke-virtual {p2, v1, v1, v2}, Lgbsdk/common/host/abnp;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1272
    :cond_5
    iget-boolean p2, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    if-eqz p2, :cond_6

    const-string p2, "ApmInsight"

    .line 1273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SDK event:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " simple:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->getServiceSwitch(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lgbsdk/common/host/abmv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method public monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1049
    :try_start_0
    iget-boolean v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abpx;

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v16, p4

    invoke-direct/range {v10 .. v18}, Lgbsdk/common/host/abpx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    .line 1050
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abpx;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    .line 1054
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorStatusAndEvent(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1118
    :try_start_0
    iget-boolean v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->D:Z

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, v9, Lcom/bytedance/framwork/core/apm/SDKMonitor;->G:Lgbsdk/common/host/abnk;

    new-instance v1, Lgbsdk/common/host/abpx;

    const/4 v13, 0x0

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v10 .. v18}, Lgbsdk/common/host/abpx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V

    .line 1119
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abnk;->a(Lgbsdk/common/host/abpx;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1123
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1070
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onTimeEvent(J)V
    .locals 3

    .line 698
    iget-wide p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->g:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 701
    invoke-virtual {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Z)V

    return-void
.end method

.method public reportCount()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    return v0

    .line 732
    :cond_0
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->i:I

    return v0
.end method

.method public reportFailRepeatBaseTime()I
    .locals 1

    .line 799
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->k:I

    if-gtz v0, :cond_0

    const/16 v0, 0xf

    return v0

    .line 802
    :cond_0
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->k:I

    return v0
.end method

.method public reportFailRepeatCount()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->j:I

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 789
    :cond_0
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->j:I

    return v0
.end method

.method public reportInterval()I
    .locals 1

    .line 716
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    if-gtz v0, :cond_0

    const/16 v0, 0x78

    return v0

    .line 719
    :cond_0
    iget v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->h:I

    return v0
.end method

.method public reportJsonHeaderInfo()Lorg/json/JSONObject;
    .locals 1

    .line 758
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->f()V

    .line 759
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public reportUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->F:Ljava/util/List;

    return-object p1
.end method

.method public restoreCollectDelay()V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    invoke-virtual {v0}, Lgbsdk/common/host/abnt;->e()V

    return-void
.end method

.method public sendLog(Ljava/lang/String;[B)Lgbsdk/common/host/aboh;
    .locals 12

    const-string v0, " \ndata:"

    const-string v1, " \nresponse:"

    const-string v2, "SDK Send:\nurl:"

    const-string v3, "ApmInsight"

    .line 821
    new-instance v4, Lgbsdk/common/host/aboh;

    invoke-direct {v4}, Lgbsdk/common/host/aboh;-><init>()V

    .line 823
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 825
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 826
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b()Lgbsdk/common/host/abnr;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 827
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 828
    invoke-static {p2, v5}, Lgbsdk/common/host/abnc;->a([BLjava/util/Map;)[B

    move-result-object p2

    .line 829
    iget-boolean v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->B:Z

    if-eqz v7, :cond_1

    .line 831
    array-length v7, p2

    invoke-static {p2, v7}, Lcom/bytedance/applog/encryptor/EncryptorUtil;->encrypt([BI)[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 833
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&tt_data=a"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "application/octet-stream;tt-data=a"

    const-string v9, "Content-Type"

    .line 835
    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b()Lgbsdk/common/host/abnr;

    move-result-object v8

    invoke-interface {v8, v6, v7, v5}, Lgbsdk/common/host/abnr;->b(Ljava/lang/String;[BLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v5

    .line 838
    iget-object v6, v5, Lgbsdk/common/host/abnw;->fT:[B

    .line 840
    iget-object v5, v5, Lgbsdk/common/host/abnw;->cG:Ljava/util/Map;

    goto :goto_0

    .line 842
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/framwork/core/apm/SDKMonitor;->b()Lgbsdk/common/host/abnr;

    move-result-object v7

    invoke-interface {v7, v6, p2, v5}, Lgbsdk/common/host/abnr;->b(Ljava/lang/String;[BLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v5

    .line 843
    iget-object v6, v5, Lgbsdk/common/host/abnw;->fT:[B

    .line 845
    iget-object v5, v5, Lgbsdk/common/host/abnw;->cG:Ljava/util/Map;

    goto :goto_0

    .line 848
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v11, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 849
    iget-object v5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "aid"

    .line 850
    iget-object v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->H:Ljava/lang/String;

    invoke-interface {v11, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "x-auth-token"

    .line 851
    iget-object v7, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    invoke-interface {v11, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_3
    sget-object v8, Lgbsdk/common/host/abnc$ab;->vo:Lgbsdk/common/host/abnc$ab;

    const-string v9, "application/json; charset=utf-8"

    iget-boolean v10, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->B:Z

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Lgbsdk/common/host/abnc;->a(Ljava/lang/String;[BLgbsdk/common/host/abnc$ab;Ljava/lang/String;ZLjava/util/Map;)Lgbsdk/common/host/abnw;

    move-result-object v5

    .line 855
    iget-object v6, v5, Lgbsdk/common/host/abnw;->fT:[B

    .line 857
    iget-object v5, v5, Lgbsdk/common/host/abnw;->cG:Ljava/util/Map;

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 861
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    const-string v7, "ran"

    .line 862
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    :cond_4
    const/16 v5, 0xc8

    .line 865
    iput v5, v4, Lgbsdk/common/host/aboh;->a:I

    .line 866
    new-instance v5, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v6, "data"

    .line 868
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 869
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 870
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v7}, Lgbsdk/common/host/abmy;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 872
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 873
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_1

    :cond_5
    const-string v6, "message"

    const-string v7, "success"

    .line 875
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    :cond_6
    :goto_1
    iput-object v5, v4, Lgbsdk/common/host/aboh;->b:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 880
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 886
    :goto_2
    iput-object v5, v4, Lgbsdk/common/host/aboh;->b:Lorg/json/JSONObject;

    .line 887
    iget-boolean v5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_7

    .line 889
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lgbsdk/common/host/aboh;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lgbsdk/common/host/abmv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :cond_7
    return-object v4

    :catchall_1
    move-exception v5

    .line 895
    instance-of v6, v5, Lgbsdk/common/host/abne;

    if-eqz v6, :cond_8

    .line 896
    check-cast v5, Lgbsdk/common/host/abne;

    iget v5, v5, Lgbsdk/common/host/abne;->a:I

    iput v5, v4, Lgbsdk/common/host/aboh;->a:I

    goto :goto_3

    :cond_8
    const/4 v5, -0x1

    .line 898
    iput v5, v4, Lgbsdk/common/host/aboh;->a:I

    .line 915
    :goto_3
    iget-boolean v5, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    if-eqz v5, :cond_9

    .line 917
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v4, Lgbsdk/common/host/aboh;->a:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lgbsdk/common/host/abmv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_9
    return-object v4
.end method

.method public setCollectDelay(J)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->d:Lgbsdk/common/host/abnt;

    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/abnt;->a(J)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->e:Z

    return-void
.end method

.method public setDynamicParams(Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->K:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    return-void
.end method

.method public setStopCollect(Z)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->c:Lgbsdk/common/host/abnp;

    iput-boolean p1, v0, Lgbsdk/common/host/abnp;->g:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->I:Ljava/lang/String;

    return-void
.end method

.method public stopMoreChannelInterval()J
    .locals 5

    .line 807
    iget-wide v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->v:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/32 v0, 0x1b7740

    return-wide v0

    .line 810
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor;->v:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method
