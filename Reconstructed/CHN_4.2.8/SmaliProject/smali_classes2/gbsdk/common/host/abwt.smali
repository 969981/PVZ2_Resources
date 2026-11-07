.class public Lgbsdk/common/host/abwt;
.super Ljava/lang/Object;
.source "TNCManager.java"

# interfaces
.implements Lgbsdk/common/host/abin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abwt$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TNCManager"

.field public static final aJj:Ljava/lang/String; = "ttnet_tnc_etag"

.field public static final aJk:Ljava/lang/String; = "ttnet_tnc_abtest"

.field private static final aJl:Ljava/lang/String; = "tt-idc-switch"

.field private static final aJm:Ljava/lang/String; = "@"

.field private static final aJn:I = 0x3e8

.field private static final aJo:I = 0x2710

.field private static final aJp:I = 0x2710

.field private static aJr:Lgbsdk/common/host/abwt; = null

.field public static aJs:Ljava/lang/String; = null

.field public static final rK:Ljava/lang/String; = "ttnet_tnc_config"


# instance fields
.field private aJA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aJB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aJq:J

.field public aJt:Lgbsdk/common/host/abwu;

.field private aJu:I

.field private aJv:J

.field private aJw:I

.field private aJx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aJy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aJz:I

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mInited:Z

.field private mIsMainProcess:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lgbsdk/common/host/abwt;->aJq:J

    const/4 v2, 0x0

    .line 129
    iput-boolean v2, p0, Lgbsdk/common/host/abwt;->mInited:Z

    .line 134
    iput v2, p0, Lgbsdk/common/host/abwt;->aJu:I

    .line 135
    iput-wide v0, p0, Lgbsdk/common/host/abwt;->aJv:J

    .line 138
    iput v2, p0, Lgbsdk/common/host/abwt;->aJw:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    .line 141
    iput v2, p0, Lgbsdk/common/host/abwt;->aJz:I

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lgbsdk/common/host/abwt;->mIsMainProcess:Z

    .line 459
    new-instance v0, Lgbsdk/common/host/abwt$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/abwt$2;-><init>(Lgbsdk/common/host/abwt;Landroid/os/Looper;)V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private D(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private E(I)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abwt;->hy()Lgbsdk/common/host/abwr;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v2, v1, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v1, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 507
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 508
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 509
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V
    .locals 5

    .line 81
    invoke-interface {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getCarrierRegion()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-interface {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getSysRegion()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 91
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v1

    invoke-interface {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getStoreIdcRuleJSON()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/ttnet/ITTNetDepend;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lgbsdk/common/host/abwt$1;

    invoke-direct {v4, p0}, Lgbsdk/common/host/abwt$1;-><init>(Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;)V

    .line 91
    invoke-virtual {v1, v0, v2, v3, v4}, Lgbsdk/common/host/abkj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lgbsdk/common/host/abkk;)V

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-static {v0}, Lcom/bytedance/ttnet/TTNetInit;->getGetDomainConfigByRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    .line 112
    :cond_2
    sget-object v1, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-interface {p0}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getGetDomainDefaultJSON()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    .line 115
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " json: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lgbsdk/common/host/abwt;->aJs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TNCManager"

    invoke-static {v0, p0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;)V
    .locals 3

    .line 659
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    instance-of v1, v0, Lgbsdk/common/host/abto;

    if-eqz v1, :cond_0

    .line 661
    check-cast v0, Lgbsdk/common/host/abto;

    invoke-virtual {v0}, Lgbsdk/common/host/abto;->gG()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 664
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ZJLgbsdk/common/host/abwt$ab;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lgbsdk/common/host/abwt;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abwt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 449
    iput v1, v0, Landroid/os/Message;->what:I

    .line 450
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 451
    iget p1, p4, Lgbsdk/common/host/abwt$ab;->lM:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_1

    .line 453
    iget-object p1, p0, Lgbsdk/common/host/abwt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 455
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abwt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZLgbsdk/common/host/abwt$ab;)Z
    .locals 17

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "4.1.79.36-gsdk"

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdomain internal, use retrofit okhttp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", tnc source: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TNCManager"

    invoke-static {v4, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttnet/config/AppConfig;->getTncHostArrays()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttnet/config/AppConfig;->getTncHostArrays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttnet/config/AppConfig;->getTncHostArrays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 540
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttnet/config/AppConfig;->getConfigServers()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 541
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 542
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 546
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/ttnet/config/AppConfig;->getConfigServers()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 549
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    .line 551
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/get_domains/v5/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    new-instance v8, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v0, v7, :cond_4

    .line 556
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_2

    .line 558
    :cond_4
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v6

    :goto_2
    const-string v7, "abi"

    .line 560
    invoke-virtual {v8, v7, v0}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tnc_src"

    .line 561
    iget v7, v2, Lgbsdk/common/host/abwt$ab;->lM:I

    invoke-virtual {v8, v0, v7}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;I)V

    const-string v0, "okhttp_version"

    .line 562
    invoke-virtual {v8, v0, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ttnet_version"

    .line 563
    invoke-virtual {v8, v0, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-static {v8}, Lgbsdk/common/host/abwt;->a(Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 574
    :goto_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    invoke-static {}, Lgbsdk/common/host/abkj;->cD()Lgbsdk/common/host/abkj;

    move-result-object v7

    invoke-virtual {v7, v0}, Lgbsdk/common/host/abkj;->k(Ljava/util/Map;)V

    if-nez v1, :cond_7

    .line 577
    new-instance v7, Lgbsdk/common/host/abwd;

    invoke-direct {v7}, Lgbsdk/common/host/abwd;-><init>()V

    .line 578
    invoke-virtual {v8}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lgbsdk/common/host/abwd;->url:Ljava/lang/String;

    const/4 v8, 0x1

    .line 579
    iput-boolean v8, v7, Lgbsdk/common/host/abwd;->aIA:Z

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 582
    :try_start_1
    iget-object v10, v7, Lgbsdk/common/host/abwd;->url:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v0, v11, v7}, Lgbsdk/common/host/abwa;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lgbsdk/common/host/abwd;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    iput-wide v10, v7, Lgbsdk/common/host/abwd;->aIv:J

    .line 584
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_1

    .line 586
    :cond_5
    iget-object v8, v7, Lgbsdk/common/host/abwd;->aIB:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 587
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v8

    iget-object v9, v7, Lgbsdk/common/host/abwd;->aIB:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/bytedance/ttnet/config/AppConfig;->setTncEtag(Ljava/lang/String;)V

    .line 589
    :cond_6
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v8

    iget-object v8, v8, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    iget-object v7, v7, Lgbsdk/common/host/abwd;->aIC:Ljava/lang/String;

    iput-object v7, v8, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 590
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->cy(Ljava/lang/String;)V

    .line 592
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v2, v8, v9}, Lcom/bytedance/ttnet/config/AppConfig;->handleResponse(Ljava/lang/Object;Lgbsdk/common/host/abwt$ab;J)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 597
    :cond_7
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getTTNetDepend()Lcom/bytedance/ttnet/ITTNetDepend;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/ttnet/ITTNetDepend;->getAppId()I

    move-result v7

    const-string v9, "aid"

    invoke-virtual {v8, v9, v7}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;I)V

    const-string v7, "device_platform"

    const-string v9, "android"

    .line 598
    invoke-virtual {v8, v7, v9}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetProvider()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 601
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetProvider()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getVersionCode()Ljava/lang/String;

    move-result-object v7

    const-string v9, "version_code"

    invoke-virtual {v8, v9, v7}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcom/bytedance/ttnet/TTNetInit;->getCronetProvider()Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/frameworks/baselib/network/http/cronet/ICronetAppProvider;->getChannel()Ljava/lang/String;

    move-result-object v7

    const-string v9, "channel"

    invoke-virtual {v8, v9, v7}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 606
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 607
    new-instance v9, Lcom/bytedance/retrofit2/client/Header;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 611
    :cond_a
    invoke-virtual {v8}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 616
    :try_start_2
    invoke-static {v0, v14}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->parseUrl(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 617
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 618
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    const-class v0, Lcom/bytedance/ttnet/INetworkApi;

    invoke-static {v7, v0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->createSsService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/bytedance/ttnet/INetworkApi;

    if-nez v10, :cond_b

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x1

    const/4 v12, -0x1

    const/16 v16, 0x0

    .line 628
    invoke-interface/range {v10 .. v16}, Lcom/bytedance/ttnet/INetworkApi;->doGet(ZILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)Lcom/bytedance/retrofit2/Call;

    move-result-object v7

    .line 630
    :try_start_3
    invoke-interface {v7}, Lcom/bytedance/retrofit2/Call;->execute()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->headers()Ljava/util/List;

    move-result-object v8

    .line 632
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsResponse;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "x-ss-etag"

    .line 633
    invoke-static {v8, v9}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "x-tt-tnc-abtest"

    .line 634
    invoke-static {v8, v10}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->getHeaderValueIgnoreCase(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-static {v0}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v10, :cond_c

    if-eqz v7, :cond_3

    .line 650
    :goto_5
    invoke-interface {v7}, Lcom/bytedance/retrofit2/Call;->cancel()V

    goto/16 :goto_1

    .line 637
    :cond_c
    :try_start_4
    invoke-static {v9}, Lcom/bytedance/common/utility/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 638
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/bytedance/ttnet/config/AppConfig;->setTncEtag(Ljava/lang/String;)V

    .line 640
    :cond_d
    invoke-static {}, Lgbsdk/common/host/abwt;->hw()Lgbsdk/common/host/abwt;

    move-result-object v10

    iget-object v10, v10, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    iput-object v8, v10, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "okhttp tnc response success, etag is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->gO()Lcom/bytedance/ttnet/clientkey/ClientKeyManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/bytedance/ttnet/clientkey/ClientKeyManager;->cy(Ljava/lang/String;)V

    .line 644
    invoke-static/range {p0 .. p0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v8, v2, v9, v10}, Lcom/bytedance/ttnet/config/AppConfig;->handleResponse(Ljava/lang/Object;Lgbsdk/common/host/abwt$ab;J)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_e

    .line 650
    invoke-interface {v7}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_e
    return v0

    :catchall_2
    move-exception v0

    .line 647
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_f

    .line 650
    invoke-interface {v7}, Lcom/bytedance/retrofit2/Call;->cancel()V

    :cond_f
    throw v1

    :catch_0
    move-exception v0

    .line 620
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_10
    return v6
.end method

.method private b(Losdk/okhttp3/Response;Ljava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 381
    :cond_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwt;->mIsMainProcess:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "tt-idc-switch"

    .line 385
    invoke-virtual {p1, v1, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TNCManager"

    if-eqz v0, :cond_3

    .line 387
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTncProbe, no probeProto, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "@"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 393
    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 403
    :try_start_0
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 404
    :try_start_1
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v6, 0x0

    .line 406
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 407
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTncProbe, probeProto except, "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-wide v7, v3

    .line 412
    :goto_1
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    const-string v9, " "

    if-eqz p1, :cond_6

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTncProbe, local: "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lgbsdk/common/host/abwt;->aJu:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lgbsdk/common/host/abwt;->aJv:J

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " svr: "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_6
    iget-wide v10, p0, Lgbsdk/common/host/abwt;->aJv:J

    cmp-long p1, v7, v10

    if-gtz p1, :cond_7

    return-void

    .line 421
    :cond_7
    iput v6, p0, Lgbsdk/common/host/abwt;->aJu:I

    .line 422
    iput-wide v7, p0, Lgbsdk/common/host/abwt;->aJv:J

    .line 423
    iget-object p1, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    const-string v0, "ttnet_tnc_config"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tnc_probe_cmd"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tnc_probe_version"

    invoke-interface {p1, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    iget p1, p0, Lgbsdk/common/host/abwt;->aJu:I

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_b

    .line 427
    invoke-virtual {p0}, Lgbsdk/common/host/abwt;->hy()Lgbsdk/common/host/abwr;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 431
    :cond_8
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 433
    iget v5, p1, Lgbsdk/common/host/abwr;->aJe:I

    if-lez v5, :cond_9

    .line 434
    iget p1, p1, Lgbsdk/common/host/abwr;->aJe:I

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 436
    :cond_9
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTncProbe, updateConfig delay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_a
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJK:Lgbsdk/common/host/abwt$ab;

    invoke-direct {p0, v2, v3, v4, p1}, Lgbsdk/common/host/abwt;->a(ZJLgbsdk/common/host/abwt$ab;)V

    :cond_b
    return-void

    .line 394
    :cond_c
    :goto_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTncProbe, probeProto err, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private hB()V
    .locals 2

    .line 494
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TNCManager"

    const-string v1, "resetTNCControlState"

    .line 495
    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 498
    iput v0, p0, Lgbsdk/common/host/abwt;->aJw:I

    .line 499
    iget-object v1, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 500
    iget-object v1, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 501
    iput v0, p0, Lgbsdk/common/host/abwt;->aJz:I

    .line 502
    iget-object v0, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 503
    iget-object v0, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static declared-synchronized hw()Lgbsdk/common/host/abwt;
    .locals 2

    const-class v0, Lgbsdk/common/host/abwt;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abwt;->aJr:Lgbsdk/common/host/abwt;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lgbsdk/common/host/abwt;

    invoke-direct {v1}, Lgbsdk/common/host/abwt;-><init>()V

    sput-object v1, Lgbsdk/common/host/abwt;->aJr:Lgbsdk/common/host/abwt;

    .line 126
    :cond_0
    sget-object v1, Lgbsdk/common/host/abwt;->aJr:Lgbsdk/common/host/abwt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hx()V
    .locals 4

    .line 187
    iget-object v0, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    const-string v1, "ttnet_tnc_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tnc_probe_cmd"

    .line 188
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgbsdk/common/host/abwt;->aJu:I

    const-string v1, "tnc_probe_version"

    const-wide/16 v2, 0x0

    .line 189
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/abwt;->aJv:J

    return-void
.end method


# virtual methods
.method public F(I)Lgbsdk/common/host/abwt$ab;
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 693
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 685
    :pswitch_0
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJK:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 683
    :pswitch_1
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJJ:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 681
    :pswitch_2
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJI:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 679
    :pswitch_3
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 677
    :pswitch_4
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJG:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 675
    :pswitch_5
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJF:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 673
    :pswitch_6
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJE:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 691
    :cond_0
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJN:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 689
    :cond_1
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJM:Lgbsdk/common/host/abwt$ab;

    return-object p1

    .line 687
    :cond_2
    sget-object p1, Lgbsdk/common/host/abwt$ab;->aJL:Lgbsdk/common/host/abwt$ab;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(Losdk/okhttp3/Request;Ljava/lang/Exception;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 315
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwt;->mIsMainProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 316
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 320
    monitor-exit p0

    return-void

    .line 323
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-direct {p0, p2}, Lgbsdk/common/host/abwt;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "http"

    .line 329
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    .line 330
    monitor-exit p0

    return-void

    .line 333
    :cond_3
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 334
    monitor-exit p0

    return-void

    .line 341
    :cond_4
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "timeout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "time out"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "unreachable"

    .line 342
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    .line 346
    :cond_5
    invoke-virtual {p0}, Lgbsdk/common/host/abwt;->hy()Lgbsdk/common/host/abwr;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 347
    iget-boolean v3, v2, Lgbsdk/common/host/abwr;->aIU:Z

    if-nez v3, :cond_6

    goto/16 :goto_1

    .line 351
    :cond_6
    iget-object v3, v2, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, v2, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    .line 352
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 356
    :cond_7
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "TNCManager"

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOk3Timeout, url matched: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgbsdk/common/host/abwt;->aJw:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    .line 359
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgbsdk/common/host/abwt;->aJz:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    .line 360
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 357
    invoke-static {v3, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_8
    iget p2, p0, Lgbsdk/common/host/abwt;->aJw:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lgbsdk/common/host/abwt;->aJw:I

    .line 363
    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget p1, p0, Lgbsdk/common/host/abwt;->aJw:I

    iget p2, v2, Lgbsdk/common/host/abwr;->aIX:I

    if-lt p1, p2, :cond_a

    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget p2, v2, Lgbsdk/common/host/abwr;->aIY:I

    if-lt p1, p2, :cond_a

    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    .line 367
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget p2, v2, Lgbsdk/common/host/abwr;->aIZ:I

    if-lt p1, p2, :cond_a

    .line 368
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "TNCManager"

    .line 369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOk3Timeout, url doUpate: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-wide/16 p1, 0x0

    .line 371
    sget-object v0, Lgbsdk/common/host/abwt$ab;->aJI:Lgbsdk/common/host/abwt$ab;

    invoke-direct {p0, v3, p1, p2, v0}, Lgbsdk/common/host/abwt;->a(ZJLgbsdk/common/host/abwt$ab;)V

    .line 372
    invoke-direct {p0}, Lgbsdk/common/host/abwt;->hB()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 374
    :cond_a
    monitor-exit p0

    return-void

    .line 353
    :cond_b
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_c
    :goto_1
    monitor-exit p0

    return-void

    .line 343
    :cond_d
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 312
    :cond_e
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Losdk/okhttp3/Request;Losdk/okhttp3/Response;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 240
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwt;->mIsMainProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 241
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 245
    monitor-exit p0

    return-void

    .line 248
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Losdk/okhttp3/Request;->url()Losdk/okhttp3/HttpUrl;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p1}, Losdk/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p2}, Losdk/okhttp3/Response;->code()I

    move-result v2

    const-string v3, "http"

    .line 254
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 255
    monitor-exit p0

    return-void

    .line 258
    :cond_3
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 259
    monitor-exit p0

    return-void

    .line 262
    :cond_4
    :try_start_4
    invoke-virtual {p2}, Losdk/okhttp3/Response;->networkResponse()Losdk/okhttp3/Response;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_5

    .line 263
    monitor-exit p0

    return-void

    .line 265
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "TNCManager"

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOk3Response, url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_6
    invoke-virtual {p0}, Lgbsdk/common/host/abwt;->hy()Lgbsdk/common/host/abwr;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 269
    iget-boolean v4, v3, Lgbsdk/common/host/abwr;->aIV:Z

    if-eqz v4, :cond_7

    .line 270
    invoke-direct {p0, p2, v1}, Lgbsdk/common/host/abwt;->b(Losdk/okhttp3/Response;Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_10

    .line 273
    iget-boolean p2, v3, Lgbsdk/common/host/abwr;->aIU:Z

    if-nez p2, :cond_8

    goto/16 :goto_2

    .line 277
    :cond_8
    iget-object p2, v3, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    if-eqz p2, :cond_f

    iget-object p2, v3, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_f

    iget-object p2, v3, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    .line 278
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_1

    .line 281
    :cond_9
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "TNCManager"

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOk3Response, url matched: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lgbsdk/common/host/abwt;->aJw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abwt;->aJx:Ljava/util/HashMap;

    .line 284
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abwt;->aJy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lgbsdk/common/host/abwt;->aJz:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    .line 285
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {p2, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-lez v2, :cond_e

    .line 288
    invoke-direct {p0, v2}, Lgbsdk/common/host/abwt;->D(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 289
    iget p1, p0, Lgbsdk/common/host/abwt;->aJw:I

    if-gtz p1, :cond_b

    iget p1, p0, Lgbsdk/common/host/abwt;->aJz:I

    if-lez p1, :cond_e

    .line 290
    :cond_b
    invoke-direct {p0}, Lgbsdk/common/host/abwt;->hB()V

    goto :goto_0

    .line 292
    :cond_c
    invoke-direct {p0, v2}, Lgbsdk/common/host/abwt;->E(I)Z

    move-result p2

    if-nez p2, :cond_e

    .line 293
    iget p2, p0, Lgbsdk/common/host/abwt;->aJz:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lgbsdk/common/host/abwt;->aJz:I

    .line 294
    iget-object p2, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget p1, p0, Lgbsdk/common/host/abwt;->aJz:I

    iget p2, v3, Lgbsdk/common/host/abwr;->aJa:I

    if-lt p1, p2, :cond_e

    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJA:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget p2, v3, Lgbsdk/common/host/abwr;->aJb:I

    if-lt p1, p2, :cond_e

    iget-object p1, p0, Lgbsdk/common/host/abwt;->aJB:Ljava/util/HashMap;

    .line 298
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget p2, v3, Lgbsdk/common/host/abwr;->aJc:I

    if-lt p1, p2, :cond_e

    .line 299
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "TNCManager"

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOk3Response, url doUpdate: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-wide/16 p1, 0x0

    .line 302
    sget-object v0, Lgbsdk/common/host/abwt$ab;->aJI:Lgbsdk/common/host/abwt$ab;

    invoke-direct {p0, v4, p1, p2, v0}, Lgbsdk/common/host/abwt;->a(ZJLgbsdk/common/host/abwt$ab;)V

    .line 303
    invoke-direct {p0}, Lgbsdk/common/host/abwt;->hB()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    :cond_e
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_f
    :goto_1
    monitor-exit p0

    return-void

    .line 274
    :cond_10
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 237
    :cond_11
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public a(ZLgbsdk/common/host/abwt$ab;)V
    .locals 9

    .line 474
    invoke-virtual {p0}, Lgbsdk/common/host/abwt;->hy()Lgbsdk/common/host/abwr;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    const-string v2, "TNCManager"

    if-eqz v1, :cond_1

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUpdateRemote, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    if-nez p1, :cond_3

    .line 483
    iget-wide v5, p0, Lgbsdk/common/host/abwt;->aJq:J

    iget p1, v0, Lgbsdk/common/host/abwr;->aJd:I

    int-to-long v0, p1

    const-wide/16 v7, 0x3e8

    mul-long v0, v0, v7

    add-long/2addr v5, v0

    cmp-long p1, v5, v3

    if-lez p1, :cond_3

    .line 484
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "doUpdateRemote, time limit"

    .line 485
    invoke-static {v2, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 489
    :cond_3
    iput-wide v3, p0, Lgbsdk/common/host/abwt;->aJq:J

    .line 490
    iget-object p1, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/ttnet/config/AppConfig;->doRefresh(Lgbsdk/common/host/abwt$ab;Z)Z

    return-void
.end method

.method public aG(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-static {}, Lgbsdk/common/host/abmf;->cv()Lgbsdk/common/host/abmf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abmf;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " etag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tncAttr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needUpdateTnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 214
    iput-object v2, v0, Lgbsdk/common/host/abwu;->rI:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    sget-object v5, Lgbsdk/common/host/abwt$ab;->aJH:Lgbsdk/common/host/abwt$ab;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    .line 215
    invoke-virtual/range {v3 .. v9}, Lgbsdk/common/host/abwu;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abwt$ab;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p4, :cond_1

    if-nez p1, :cond_1

    const-string p1, "doUpdateRemote tnc"

    .line 221
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 222
    sget-object p2, Lgbsdk/common/host/abwt$ab;->aJM:Lgbsdk/common/host/abwt$ab;

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abwt;->a(ZLgbsdk/common/host/abwt$ab;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized d(Landroid/content/Context;Z)V
    .locals 3

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lgbsdk/common/host/abwt;->mInited:Z

    if-nez v0, :cond_2

    .line 171
    iput-object p1, p0, Lgbsdk/common/host/abwt;->mContext:Landroid/content/Context;

    .line 172
    iput-boolean p2, p0, Lgbsdk/common/host/abwt;->mIsMainProcess:Z

    .line 173
    new-instance v0, Lgbsdk/common/host/abwu;

    invoke-direct {v0, p1, p2}, Lgbsdk/common/host/abwu;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz p2, :cond_0

    .line 175
    invoke-direct {p0}, Lgbsdk/common/host/abwt;->hx()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TNCManager"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTnc, isMainProc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " probeCmd: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgbsdk/common/host/abwt;->aJu:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " probeVersion: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lgbsdk/common/host/abwt;->aJv:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lgbsdk/common/host/abwt;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hA()V
    .locals 0

    return-void
.end method

.method public hy()Lgbsdk/common/host/abwr;
    .locals 1

    .line 193
    iget-object v0, p0, Lgbsdk/common/host/abwt;->aJt:Lgbsdk/common/host/abwu;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, v0, Lgbsdk/common/host/abwu;->aJi:Lgbsdk/common/host/abwr;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hz()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
