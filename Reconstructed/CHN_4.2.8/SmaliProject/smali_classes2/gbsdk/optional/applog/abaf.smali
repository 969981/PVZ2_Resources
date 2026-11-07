.class public final Lgbsdk/optional/applog/abaf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/bytedance/applog/IDataObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0001IB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0018\u0010$\u001a\u00020 2\u0006\u0010\"\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0014H\u0002J\u0010\u0010&\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0003J\u0010\u0010\'\u001a\u00020(2\u0006\u0010%\u001a\u00020\u0014H\u0003J\u0012\u0010)\u001a\u00020\u00142\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010,\u001a\n .*\u0004\u0018\u00010-0-H\u0002J\u0006\u0010/\u001a\u00020 J\u0018\u00100\u001a\u00020 2\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u0008H\u0016J\u0010\u00103\u001a\u00020 2\u0008\u00104\u001a\u0004\u0018\u000105J \u00106\u001a\u00020 2\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u0008H\u0016J\u0018\u0010:\u001a\u00020 2\u0006\u0010;\u001a\u00020\u00142\u0006\u0010<\u001a\u00020=H\u0016J\u001a\u0010>\u001a\u00020 2\u0006\u0010;\u001a\u00020\u00142\u0008\u0010?\u001a\u0004\u0018\u00010=H\u0016JB\u0010@\u001a\u00020 2\u0006\u0010;\u001a\u00020\u00142\u0008\u0010A\u001a\u0004\u0018\u00010\u00082\u0006\u0010B\u001a\u00020\u00082\u0006\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020\u00082\u0006\u0010E\u001a\u00020\u00082\u0006\u0010F\u001a\u00020\u0008H\u0016J\u000e\u0010G\u001a\u00020 2\u0006\u0010H\u001a\u00020\u0014R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001e\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lcom/bytedance/applog/alink/ALinkManager;",
        "Landroid/os/Handler$Callback;",
        "Lcom/bytedance/applog/IDataObserver;",
        "engine",
        "Lcom/bytedance/applog/engine/Engine;",
        "(Lcom/bytedance/applog/engine/Engine;)V",
        "TRACE_DATA_ATTRS",
        "",
        "",
        "UTM_ATTRS",
        "apiService",
        "Lcom/bytedance/applog/alink/network/ApiService;",
        "cache",
        "Lcom/bytedance/applog/alink/ALinkCache;",
        "deepLinkUrl",
        "getDeepLinkUrl",
        "()Ljava/lang/String;",
        "setDeepLinkUrl",
        "(Ljava/lang/String;)V",
        "mClipboardEnable",
        "",
        "mDeepLinkRetryCount",
        "",
        "mEngine",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler$delegate",
        "Lkotlin/Lazy;",
        "maxDeepLinkRetryCount",
        "destroy",
        "",
        "doDeepLinked",
        "queryParam",
        "Lcom/bytedance/applog/alink/model/ALinkQueryParam;",
        "doDeferDeepLink",
        "exitsAppCache",
        "fillALinkQueryParams",
        "fillAttributionRequest",
        "Lcom/bytedance/applog/alink/model/AttributionRequest;",
        "handleMessage",
        "msg",
        "Landroid/os/Message;",
        "logger",
        "Lcom/bytedance/applog/log/IAppLogLogger;",
        "kotlin.jvm.PlatformType",
        "mergeTracerData",
        "onAbVidsChange",
        "vids",
        "extVids",
        "onDeepLinked",
        "uri",
        "Landroid/net/Uri;",
        "onIdLoaded",
        "did",
        "iid",
        "ssid",
        "onRemoteAbConfigGet",
        "changed",
        "abConfig",
        "Lorg/json/JSONObject;",
        "onRemoteConfigGet",
        "config",
        "onRemoteIdGet",
        "oldDid",
        "newDid",
        "oldIid",
        "newIid",
        "oldSsid",
        "newSsid",
        "setClipboardEnabled",
        "clipboardEnable",
        "Companion",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field public b:Z

.field public final c:Lkotlin/Lazy;

.field public d:Lgbsdk/optional/applog/abbj;

.field public e:Lgbsdk/optional/applog/abbq;

.field public f:I

.field public g:Lgbsdk/optional/applog/abcl;

.field public h:I

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lgbsdk/optional/applog/abaf;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mHandler"

    const-string v4, "getMHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lgbsdk/optional/applog/abaf;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lgbsdk/optional/applog/abbj;)V
    .locals 10

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgbsdk/optional/applog/abaf$ab;

    invoke-direct {v0, p0}, Lgbsdk/optional/applog/abaf$ab;-><init>(Lgbsdk/optional/applog/abaf;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abaf;->c:Lkotlin/Lazy;

    iput-object p1, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    const/16 v0, 0xa

    iput v0, p0, Lgbsdk/optional/applog/abaf;->h:I

    const-string v0, "utm_campaign"

    const-string v1, "utm_source"

    const-string v2, "utm_term"

    const-string v3, "utm_medium"

    const-string v4, "utm_content"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abaf;->j:Ljava/util/List;

    const-string v1, "tr_shareuser"

    const-string v2, "tr_admaster"

    const-string v3, "tr_param1"

    const-string v4, "tr_param2"

    const-string v5, "tr_param3"

    const-string v6, "tr_param4"

    const-string v7, "reengagement_window"

    const-string v8, "reengagement_time"

    const-string v9, "is_retargeting"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/optional/applog/abaf;->k:Ljava/util/List;

    .line 1
    iget-object v0, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    const-string v1, "ALINK_CACHE_SP"

    .line 2
    invoke-static {v0, v1}, Lgbsdk/optional/applog/ai;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lgbsdk/optional/applog/abbq;

    .line 3
    iget-object v2, p1, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    const-string v3, "engine.config"

    .line 4
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    const-string v3, "engine.config.initConfig"

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgbsdk/optional/applog/abbj;->b()Landroid/content/Context;

    move-result-object v3

    const-string v4, "engine.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "spName"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lgbsdk/optional/applog/abbq;-><init>(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    new-instance v0, Lgbsdk/optional/applog/abcl;

    .line 7
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    const-string v1, "engine.appLog"

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lgbsdk/optional/applog/abcl;-><init>(Lcom/bytedance/bdtracker/d;)V

    iput-object v0, p0, Lgbsdk/optional/applog/abaf;->g:Lgbsdk/optional/applog/abcl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-class v3, Lgbsdk/optional/applog/abau;

    const-string v4, "deep_link"

    invoke-virtual {v2, v4, v3}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/optional/applog/abco;

    move-result-object v2

    check-cast v2, Lgbsdk/optional/applog/abau;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgbsdk/optional/applog/abau;->a()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    iget-object v4, p0, Lgbsdk/optional/applog/abaf;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lgbsdk/optional/applog/abaf;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "is_retargeting"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v2, v2, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v2, :cond_4

    const-string v3, "tracer_data"

    .line 2
    invoke-virtual {v2, v3, v0}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3
    :cond_4
    iget-object v0, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 4
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_3

    .line 6
    :cond_5
    iget-object v0, p0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-string v1, "tr_web_ssid"

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_8

    iget-object v1, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 7
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    const-string v2, "$tr_web_ssid"

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/bdtracker/d;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/abaf;->c:Lkotlin/Lazy;

    sget-object v1, Lgbsdk/optional/applog/abaf;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final c()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    const-string v1, "mEngine.appLog"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "$invoke"

    const-string v5, "$link_type"

    const-string v6, "google_aid"

    const-string v7, "id"

    const-string v8, "oaid"

    const-string v9, "mEngine.uriConfig"

    const-string v10, "os_version"

    const-string v11, "device_model"

    const-string v12, "android"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v2, "mEngine.appLog"

    if-nez v3, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v15, :cond_12

    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v3, :cond_4

    .line 2
    invoke-virtual {v3}, Lgbsdk/optional/applog/abfy;->n()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v0, Lgbsdk/optional/applog/abaf;->f:I

    iget v3, v0, Lgbsdk/optional/applog/abaf;->h:I

    if-ge v2, v3, :cond_3

    add-int/2addr v2, v15

    iput v2, v0, Lgbsdk/optional/applog/abaf;->f:I

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abaf;->c()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    iget v4, v0, Lgbsdk/optional/applog/abaf;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    const-string v4, "Retry do deep link delay for the {} times..."

    const/4 v5, 0x3

    invoke-interface {v2, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abaf;->b()Landroid/os/Handler;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->what:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_18

    :cond_3
    const/4 v5, 0x3

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abaf;->c()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "Retried max times to do deep link until AppLog ready"

    invoke-interface {v1, v5, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_4
    :goto_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_11

    check-cast v1, Lgbsdk/optional/applog/abar;

    .line 3
    invoke-virtual {v1}, Lgbsdk/optional/applog/abar;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const/4 v14, 0x1

    :cond_6
    if-eqz v14, :cond_7

    goto/16 :goto_a

    .line 4
    :cond_7
    iput-object v12, v1, Lgbsdk/optional/applog/abar;->k:Ljava/lang/String;

    .line 5
    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 6
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v12, v12, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v12}, Lgbsdk/optional/applog/abar;->a(Ljava/lang/String;)V

    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 10
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 11
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgbsdk/optional/applog/abar;->b(Ljava/lang/String;)V

    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 12
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgbsdk/optional/applog/abar;->c(Ljava/lang/String;)V

    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 14
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/bytedance/bdtracker/d;->getUserUniqueID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgbsdk/optional/applog/abar;->d(Ljava/lang/String;)V

    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 16
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v12, :cond_8

    .line 17
    invoke-virtual {v12}, Lgbsdk/optional/applog/abfy;->l()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    .line 18
    :goto_2
    iput-object v12, v1, Lgbsdk/optional/applog/abar;->g:Ljava/lang/String;

    .line 19
    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 20
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v12, :cond_9

    .line 21
    invoke-virtual {v12}, Lgbsdk/optional/applog/abfy;->i()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    .line 22
    :goto_3
    iput-object v12, v1, Lgbsdk/optional/applog/abar;->h:Ljava/lang/String;

    .line 23
    iget-object v12, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 24
    iget-object v12, v12, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v12, :cond_a

    .line 25
    const-class v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v14, v13}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/String;

    move-object/from16 v11, v16

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    move-object v11, v14

    .line 26
    :goto_4
    iput-object v11, v1, Lgbsdk/optional/applog/abar;->m:Ljava/lang/String;

    .line 27
    iget-object v11, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 28
    iget-object v11, v11, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v11, :cond_b

    .line 29
    const-class v12, Ljava/lang/String;

    invoke-virtual {v11, v10, v14, v12}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Ljava/lang/String;

    move-object/from16 v10, v16

    goto :goto_5

    :cond_b
    move-object v10, v14

    .line 30
    :goto_5
    iput-object v10, v1, Lgbsdk/optional/applog/abar;->l:Ljava/lang/String;

    .line 31
    iget-object v10, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 32
    iget-object v10, v10, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v10, :cond_c

    .line 33
    const-class v11, Lorg/json/JSONObject;

    invoke-virtual {v10, v8, v14, v11}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_d

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    .line 34
    :goto_7
    iput-object v7, v1, Lgbsdk/optional/applog/abar;->i:Ljava/lang/String;

    .line 35
    iget-object v7, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 36
    iget-object v7, v7, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v7, :cond_e

    .line 37
    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v10, v8}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    .line 38
    :goto_8
    iput-object v6, v1, Lgbsdk/optional/applog/abar;->j:Ljava/lang/String;

    .line 39
    iget-object v6, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v6}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/bytedance/applog/UriConfig;->getAlinkQueryUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v7, v0, Lgbsdk/optional/applog/abaf;->g:Lgbsdk/optional/applog/abcl;

    invoke-virtual {v7, v6, v1}, Lgbsdk/optional/applog/abcl;->a(Ljava/lang/String;Lgbsdk/optional/applog/abar;)Lgbsdk/optional/applog/abdn;

    move-result-object v1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lgbsdk/optional/applog/abdn;->a()Lgbsdk/optional/applog/abco;

    move-result-object v1

    check-cast v1, Lgbsdk/optional/applog/abau;

    if-eqz v1, :cond_10

    .line 40
    iput-object v3, v1, Lgbsdk/optional/applog/abau;->s:Ljava/lang/String;

    .line 41
    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-wide v6, 0x9a7ec800L

    const-string v8, "deep_link"

    invoke-virtual {v3, v8, v1, v6, v7}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;Lgbsdk/optional/applog/abco;J)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "direct"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lgbsdk/optional/applog/abaf;->i:Ljava/lang/String;

    const-string v6, "$deeplink_url"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 42
    iget-object v5, v5, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 43
    new-instance v6, Lgbsdk/optional/applog/abbm;

    invoke-direct {v6, v4, v3}, Lgbsdk/optional/applog/abbm;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abaf;->a()V

    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 44
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 45
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v2, v3, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    if-eqz v2, :cond_10

    .line 47
    invoke-virtual {v1}, Lgbsdk/optional/applog/abau;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/alink/IALinkListener;->onALinkData(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_10
    :goto_a
    return v15

    .line 48
    :cond_11
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.bytedance.applog.alink.model.ALinkQueryParam"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_b
    if-nez v3, :cond_13

    goto/16 :goto_18

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_25

    iget-boolean v3, v0, Lgbsdk/optional/applog/abaf;->b:Z

    if-eqz v3, :cond_14

    sget-object v3, Lcom/bytedance/applog/alink/util/LinkUtils;->INSTANCE:Lcom/bytedance/applog/alink/util/LinkUtils;

    iget-object v13, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v13}, Lgbsdk/optional/applog/abbj;->b()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/bytedance/applog/alink/util/LinkUtils;->getParamFromClipboard(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_c

    :cond_14
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lgbsdk/optional/applog/abaf;->c()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v13

    move-object/from16 v18, v4

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v3, v4, v14

    const-string v15, "Start to do defer deeplink with data:{}..."

    const/4 v14, 0x3

    invoke-interface {v13, v14, v15, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lgbsdk/optional/applog/abco;->H:Lgbsdk/optional/applog/abco$ab;

    if-eqz v3, :cond_15

    goto :goto_d

    :cond_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_d
    const-class v13, Lgbsdk/optional/applog/abar;

    invoke-virtual {v4, v3, v13}, Lgbsdk/optional/applog/abco$ab;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lgbsdk/optional/applog/abco;

    move-result-object v3

    check-cast v3, Lgbsdk/optional/applog/abar;

    if-eqz v3, :cond_25

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_24

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 49
    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 50
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 51
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v4}, Lgbsdk/optional/applog/abar;->a(Ljava/lang/String;)V

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 54
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 55
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgbsdk/optional/applog/abar;->b(Ljava/lang/String;)V

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 56
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 57
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgbsdk/optional/applog/abar;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 58
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 59
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getUserUniqueID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgbsdk/optional/applog/abar;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgbsdk/optional/applog/abar;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_16

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-nez v4, :cond_19

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 60
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 61
    invoke-virtual {v3}, Lgbsdk/optional/applog/abar;->b()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    goto :goto_10

    :cond_18
    const-string v13, ""

    :goto_10
    invoke-virtual {v4, v13}, Lcom/bytedance/bdtracker/d;->setExternalAbVersion(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v3}, Lgbsdk/optional/applog/abar;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v4, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v4, 0x1

    :goto_12
    if-nez v4, :cond_1c

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    invoke-virtual {v3}, Lgbsdk/optional/applog/abar;->c()Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x757b12c00L

    move-object/from16 v17, v5

    const-string v5, "tr_web_ssid"

    invoke-virtual {v4, v5, v13, v14, v15}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_13

    :cond_1c
    move-object/from16 v17, v5

    :goto_13
    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    invoke-virtual {v4}, Lgbsdk/optional/applog/abbj;->d()Lcom/bytedance/applog/UriConfig;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/bytedance/applog/UriConfig;->getAlinkAttributionUri()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v5, v0, Lgbsdk/optional/applog/abaf;->g:Lgbsdk/optional/applog/abcl;

    .line 62
    new-instance v9, Lgbsdk/optional/applog/abdw;

    invoke-direct {v9}, Lgbsdk/optional/applog/abdw;-><init>()V

    iget-object v13, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 63
    iget-object v13, v13, Lgbsdk/optional/applog/abbj;->i:Lgbsdk/optional/applog/abfy;

    if-eqz v13, :cond_1e

    .line 64
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->h()Ljava/lang/String;

    move-result-object v14

    .line 65
    iput-object v14, v9, Lgbsdk/optional/applog/abdw;->a:Ljava/lang/String;

    .line 66
    iput-object v12, v9, Lgbsdk/optional/applog/abdw;->e:Ljava/lang/String;

    .line 67
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->j()Ljava/lang/String;

    move-result-object v12

    .line 68
    iput-object v12, v9, Lgbsdk/optional/applog/abdw;->d:Ljava/lang/String;

    .line 69
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->l()Ljava/lang/String;

    move-result-object v12

    .line 70
    iput-object v12, v9, Lgbsdk/optional/applog/abdw;->k:Ljava/lang/String;

    .line 71
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->i()Ljava/lang/String;

    move-result-object v12

    .line 72
    iput-object v12, v9, Lgbsdk/optional/applog/abdw;->l:Ljava/lang/String;

    .line 73
    const-class v12, Lorg/json/JSONObject;

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14, v12}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->g()Ljava/lang/String;

    move-result-object v12

    .line 74
    iput-object v12, v9, Lgbsdk/optional/applog/abdw;->c:Ljava/lang/String;

    if-eqz v8, :cond_1d

    .line 75
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_14

    :cond_1d
    move-object v7, v14

    .line 76
    :goto_14
    iput-object v7, v9, Lgbsdk/optional/applog/abdw;->m:Ljava/lang/String;

    .line 77
    const-class v7, Ljava/lang/String;

    invoke-virtual {v13, v6, v14, v7}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    iput-object v6, v9, Lgbsdk/optional/applog/abdw;->n:Ljava/lang/String;

    .line 79
    const-class v6, Ljava/lang/String;

    const-string v7, "user_agent"

    invoke-virtual {v13, v7, v14, v6}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    iput-object v6, v9, Lgbsdk/optional/applog/abdw;->p:Ljava/lang/String;

    .line 81
    const-class v6, Ljava/lang/String;

    invoke-virtual {v13, v11, v14, v6}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    iput-object v6, v9, Lgbsdk/optional/applog/abdw;->q:Ljava/lang/String;

    .line 83
    const-class v6, Ljava/lang/String;

    invoke-virtual {v13, v10, v14, v6}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 84
    iput-object v6, v9, Lgbsdk/optional/applog/abdw;->r:Ljava/lang/String;

    .line 85
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->o()Z

    move-result v6

    .line 86
    iput-boolean v6, v9, Lgbsdk/optional/applog/abdw;->g:Z

    .line 87
    iput-boolean v1, v9, Lgbsdk/optional/applog/abdw;->h:Z

    .line 88
    invoke-virtual {v13}, Lgbsdk/optional/applog/abfy;->c()Ljava/lang/String;

    move-result-object v1

    .line 89
    iput-object v1, v9, Lgbsdk/optional/applog/abdw;->i:Ljava/lang/String;

    .line 90
    const-class v1, Ljava/lang/String;

    const-string v6, "channel"

    invoke-virtual {v13, v6, v14, v1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    iput-object v1, v9, Lgbsdk/optional/applog/abdw;->j:Ljava/lang/String;

    .line 92
    const-class v1, Ljava/lang/String;

    const-string v6, "package"

    invoke-virtual {v13, v6, v14, v1}, Lgbsdk/optional/applog/abfy;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iput-object v1, v9, Lgbsdk/optional/applog/abdw;->s:Ljava/lang/String;

    .line 94
    :cond_1e
    invoke-virtual {v5, v4, v9, v3}, Lgbsdk/optional/applog/abcl;->a(Ljava/lang/String;Lgbsdk/optional/applog/abdw;Lgbsdk/optional/applog/abar;)Lgbsdk/optional/applog/abdn;

    move-result-object v14

    goto :goto_15

    :cond_1f
    const/4 v14, 0x0

    :goto_15
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Lgbsdk/optional/applog/abdn;->a()Lgbsdk/optional/applog/abco;

    move-result-object v1

    check-cast v1, Lgbsdk/optional/applog/abdc;

    goto :goto_16

    :cond_20
    const/4 v1, 0x0

    :goto_16
    if-nez v1, :cond_22

    sget-object v1, Lgbsdk/optional/applog/abai;->a:Lgbsdk/optional/applog/abai;

    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 95
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 96
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v2, v3, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    if-eqz v2, :cond_25

    .line 98
    new-instance v3, Ljava/lang/IllegalStateException;

    if-eqz v14, :cond_21

    .line 99
    iget-object v4, v14, Lgbsdk/optional/applog/abdn;->b:Ljava/lang/String;

    goto :goto_17

    :cond_21
    const/4 v4, 0x0

    .line 100
    :goto_17
    invoke-virtual {v1, v4}, Lgbsdk/optional/applog/abai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionFailedCallback(Ljava/lang/Exception;)V

    goto :goto_18

    .line 101
    :cond_22
    iget-boolean v3, v1, Lgbsdk/optional/applog/abdc;->F:Z

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    .line 102
    iput-boolean v3, v1, Lgbsdk/optional/applog/abdc;->F:Z

    .line 103
    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-wide/16 v4, -0x1

    const-string v6, "deferred_deep_link"

    invoke-virtual {v3, v6, v1, v4, v5}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;Lgbsdk/optional/applog/abco;J)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "deferred"

    move-object/from16 v5, v17

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 104
    iget-object v4, v4, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    new-instance v5, Lgbsdk/optional/applog/abbm;

    move-object/from16 v6, v18

    invoke-direct {v5, v6, v3}, Lgbsdk/optional/applog/abbm;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    iget-object v3, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 106
    iget-object v3, v3, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 107
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v2, v3, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    if-eqz v2, :cond_25

    .line 109
    invoke-virtual {v1}, Lgbsdk/optional/applog/abdc;->a()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionData(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_18

    :cond_23
    iget-object v1, v0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 110
    iget-object v1, v1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 111
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    if-eqz v1, :cond_25

    .line 113
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DDL has data but not firstLaunch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/bytedance/applog/alink/IALinkListener;->onAttributionFailedCallback(Ljava/lang/Exception;)V

    goto :goto_18

    .line 114
    :cond_24
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_18
    const/4 v1, 0x1

    return v1
.end method

.method public onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extVids"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "did"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iid"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ssid"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    const-string p1, "abConfig"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "newDid"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldIid"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newIid"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldSsid"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newSsid"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgbsdk/optional/applog/abaf;->a()V

    iget-object p1, p0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-string p2, "app_cache"

    invoke-virtual {p1, p2}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, p4

    if-nez p1, :cond_2

    iget-object p4, p0, Lgbsdk/optional/applog/abaf;->e:Lgbsdk/optional/applog/abbq;

    const-wide/16 p5, -0x1

    invoke-virtual {p4, p2, p2, p5, p6}, Lgbsdk/optional/applog/abbq;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lgbsdk/optional/applog/abaf;->b()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object p1, p0, Lgbsdk/optional/applog/abaf;->d:Lgbsdk/optional/applog/abbj;

    .line 1
    iget-object p1, p1, Lgbsdk/optional/applog/abbj;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    invoke-virtual {p1, p0}, Lcom/bytedance/bdtracker/d;->removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method
