.class public final Lgbsdk/common/host/abul;
.super Ljava/lang/Object;
.source "InitSwitch.kt"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abul$ad;,
        Lgbsdk/common/host/abul$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0016\u0010\r\u001a\u00020\t2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u001e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0016\u0010\u001a\u001a\u00020\t2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u001e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u001c\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008JB\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/InitSwitch;",
        "Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "gson",
        "Lcom/google/gson/Gson;",
        "onCompleted",
        "Lkotlin/Function0;",
        "",
        "cacheInitSwitchData",
        "initSwitchData",
        "Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;",
        "callOnCompletedInMainThread",
        "createRequest",
        "Losdk/okhttp3/Request;",
        "doRequest",
        "getInitSwitchDataFromCache",
        "getSDKModules",
        "Lorg/json/JSONArray;",
        "getSettingConnectTimeout",
        "",
        "",
        "isAvailable",
        "",
        "isDataCheck",
        "onRequestFailed",
        "onRequestSuccess",
        "request",
        "sendLongRequestResult",
        "isSuccess",
        "code",
        "",
        "msg",
        "",
        "tryStartTime",
        "startTime",
        "requestTime",
        "timeout",
        "Companion",
        "SDKModule",
        "ch_main_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final EX:Lgbsdk/common/host/abul$ab;

.field private static final EZ:Ljava/lang/String; = "https://usdk.dailygn.com/osdk/gamecp/account/v1/get_sdk_init_params/"

.field private static final Fa:I = 0x3

.field private static final Fb:Ljava/lang/String; = "key_cached_init_switch_data"

.field private static final Fc:I = 0x0

.field private static final Fd:I = -0xc7

.field private static final Fe:I = -0xc8

.field private static final Ff:I = -0xc9

.field private static final Fg:I = -0xca

.field private static final Fh:I = -0xcb

.field private static final Fi:I = -0x12b

.field public static final Fj:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lgbsdk/common/host/abul;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InitSwitch"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private EY:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final si:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abul$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abul$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgbsdk/common/host/abul;->EX:Lgbsdk/common/host/abul$ab;

    .line 67
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lgbsdk/common/host/abul$ac;->Fk:Lgbsdk/common/host/abul$ac;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abul;->Fj:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abul;->si:Lcom/google/gson/Gson;

    return-void
.end method

.method private final a(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "eac575026309a81895218a4ff506f0a7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 281
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 282
    iget-object v0, p0, Lgbsdk/common/host/abul;->si:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_cached_init_switch_data"

    .line 283
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 281
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final a(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0beba6668cbbd913b9e11b114a6050de"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]onRequestSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0, p1}, Lgbsdk/common/host/abul;->a(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V

    .line 257
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setInitSwitchData(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V

    .line 258
    invoke-direct {p0, p2}, Lgbsdk/common/host/abul;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final a(Lgbsdk/common/host/abul;Landroid/content/Context;Lkotlin/jvm/functions/Function0;J)V
    .locals 42

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    const-string v14, ", log_id: "

    const-string v15, "InitSwitch"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v1, v16

    const/4 v10, 0x1

    aput-object v0, v1, v10

    const/4 v2, 0x2

    aput-object v13, v1, v2

    new-instance v2, Ljava/lang/Long;

    move-wide/from16 v7, p3

    invoke-direct {v2, v7, v8}, Ljava/lang/Long;-><init>(J)V

    const/4 v11, 0x3

    aput-object v2, v1, v11

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v9, 0x0

    const-string v3, "da8dc6e90841e9442f0bb9822a677c64"

    invoke-static {v1, v9, v2, v10, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "this$0"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$onCompleted"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct/range {p0 .. p1}, Lgbsdk/common/host/abul;->az(Landroid/content/Context;)Losdk/okhttp3/Request;

    move-result-object v5

    .line 109
    new-instance v0, Losdk/okhttp3/OkHttpClient;

    invoke-direct {v0}, Losdk/okhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Losdk/okhttp3/OkHttpClient;->newBuilder()Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v10}, Losdk/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v10}, Losdk/okhttp3/OkHttpClient$Builder;->followRedirects(Z)Losdk/okhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 114
    invoke-direct/range {p0 .. p0}, Lgbsdk/common/host/abul;->eZ()Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v11, :cond_8

    .line 117
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v10

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v3, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-string v19, ""

    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18

    :try_start_1
    const-string v9, "[initSwitch]Retrying request with timeout: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v1, v2, v0}, Losdk/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 123
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v1, v2, v0}, Losdk/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 124
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v1, v2, v0}, Losdk/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Losdk/okhttp3/OkHttpClient$Builder;

    .line 127
    invoke-virtual {v6}, Losdk/okhttp3/OkHttpClient$Builder;->build()Losdk/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v5}, Losdk/okhttp3/OkHttpClient;->newCall(Losdk/okhttp3/Request;)Losdk/okhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Losdk/okhttp3/Call;->execute()Losdk/okhttp3/Response;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object v9

    const-string v10, "x-tt-logid"

    invoke-virtual {v9, v10}, Losdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14

    .line 129
    :try_start_2
    invoke-virtual {v0}, Losdk/okhttp3/Response;->isSuccessful()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    invoke-virtual {v0}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    if-nez v9, :cond_2

    .line 131
    :try_start_3
    invoke-direct {v12, v13}, Lgbsdk/common/host/abul;->a(Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    const/16 v9, -0xc8

    const-string v19, "Request Fail with RespondBody null"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v22, v1

    move-object/from16 v1, p0

    move v2, v0

    move/from16 v24, v3

    move v3, v9

    move-object/from16 v25, v4

    move-object/from16 v4, v19

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    const/16 v20, 0x0

    move/from16 v9, v24

    move-object/from16 v28, v14

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    move-wide/from16 v10, v22

    .line 132
    :try_start_4
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]Request Fail with RespondBody null, log_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_9

    :cond_2
    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    .line 147
    invoke-virtual {v0}, Losdk/okhttp3/Response;->body()Losdk/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Losdk/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object/from16 v9, v20

    :goto_2
    if-eqz v9, :cond_4

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object/from16 v9, v20

    :goto_3
    if-eqz v9, :cond_6

    const-string v0, "status_code"

    .line 152
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]Request Success with status_code\uff01=0, log_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " responseData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {v12, v13}, Lgbsdk/common/host/abul;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    const-string v0, "data"

    .line 159
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Request Success ,data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-object/from16 v10, v28

    :try_start_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v15, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, v12, Lgbsdk/common/host/abul;->si:Lcom/google/gson/Gson;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gson.fromJson(dataString\u2026itSwitchData::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v0

    check-cast v30, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0xff

    const/16 v41, 0x0

    .line 167
    invoke-static/range {v30 .. v41}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->copy$default(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v0

    .line 168
    invoke-direct {v12, v0, v13}, Lgbsdk/common/host/abul;->a(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v10, v28

    :goto_5
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-object v12, v10

    move-wide/from16 v10, v22

    .line 171
    :try_start_6
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    return-void

    :catch_4
    move-exception v0

    move-object v12, v10

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v12, v10

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v12, v10

    goto/16 :goto_10

    :catch_7
    move-exception v0

    move-object v12, v10

    goto/16 :goto_11

    :catch_8
    move-exception v0

    :goto_6
    move-object/from16 v12, v28

    goto/16 :goto_e

    :catch_9
    move-exception v0

    :goto_7
    move-object/from16 v12, v28

    goto/16 :goto_f

    :catch_a
    move-exception v0

    :goto_8
    move-object/from16 v12, v28

    goto/16 :goto_10

    :catch_b
    move-exception v0

    :goto_9
    move-object/from16 v12, v28

    goto/16 :goto_11

    :cond_7
    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    const/4 v2, 0x0

    const/16 v3, -0xc7

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25,code:["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] msg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-wide/from16 v10, v22

    .line 183
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Request failed with code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Losdk/okhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    goto/16 :goto_12

    :catch_c
    move-exception v0

    goto/16 :goto_e

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :catch_f
    move-exception v0

    goto/16 :goto_11

    :catch_10
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_e

    :catch_11
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_f

    :catch_12
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_10

    :catch_13
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object v14, v10

    goto/16 :goto_11

    :catch_14
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    goto :goto_a

    :catch_15
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    goto :goto_b

    :catch_16
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    goto :goto_c

    :catch_17
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object v12, v14

    const/16 v20, 0x0

    goto :goto_d

    :catch_18
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v9

    move-object v12, v14

    :goto_a
    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object/from16 v14, v19

    goto :goto_e

    :catch_19
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v9

    move-object v12, v14

    :goto_b
    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object/from16 v14, v19

    goto :goto_f

    :catch_1a
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v9

    move-object v12, v14

    :goto_c
    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object/from16 v14, v19

    goto/16 :goto_10

    :catch_1b
    move-exception v0

    move-wide/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v9

    move-object v12, v14

    :goto_d
    const/16 v21, 0x3

    const/16 v29, 0x1

    move-object/from16 v14, v19

    goto/16 :goto_11

    :goto_e
    const/4 v2, 0x0

    const/16 v3, -0x12b

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-wide/from16 v10, v22

    .line 236
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Exception with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :goto_f
    const/4 v2, 0x0

    const/16 v3, -0xca

    .line 227
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-wide/from16 v10, v22

    .line 224
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Json Exception with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_10
    const/4 v2, 0x0

    const/16 v3, -0xcb

    .line 215
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-wide/from16 v10, v22

    .line 212
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Json Parse with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    const/4 v2, 0x0

    const/16 v3, -0xc9

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide/from16 v7, p3

    move/from16 v9, v24

    move-wide/from16 v10, v22

    .line 199
    invoke-direct/range {v1 .. v11}, Lgbsdk/common/host/abul;->a(ZILjava/lang/String;JJIJ)V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Request failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    add-int/lit8 v3, v24, 0x1

    move-wide/from16 v7, p3

    move-object v14, v12

    move-object/from16 v9, v20

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    const/4 v10, 0x1

    const/4 v11, 0x3

    move-object/from16 v12, p0

    goto/16 :goto_0

    :cond_8
    move-object v1, v12

    .line 249
    invoke-direct {v1, v13}, Lgbsdk/common/host/abul;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "83da7888d016fee276164dcaad1ccdd9"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-direct {p0}, Lgbsdk/common/host/abul;->eY()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setInitSwitchData(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]onRequestFail use cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lgbsdk/common/host/abul;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final a(ZILjava/lang/String;JJIJ)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-wide/from16 v8, p9

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Byte;

    invoke-direct {v11, v0}, Ljava/lang/Byte;-><init>(B)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aput-object v2, v10, v11

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v14, 0x3

    aput-object v11, v10, v14

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v5, v6}, Ljava/lang/Long;-><init>(J)V

    const/4 v15, 0x4

    aput-object v11, v10, v15

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v15, 0x5

    aput-object v11, v10, v15

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v8, v9}, Ljava/lang/Long;-><init>(J)V

    const/4 v15, 0x6

    aput-object v11, v10, v15

    sget-object v11, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v15, "e5464c1f9e62e6dc8af57776e0180c1a"

    move-object/from16 v13, p0

    invoke-static {v10, v13, v11, v12, v15}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v10

    if-eqz v10, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    if-eqz v0, :cond_1

    :goto_0
    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v14, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "success"

    goto :goto_2

    :cond_3
    const-string v0, "fail"

    :goto_2
    const-string v6, "result"

    .line 358
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fail_status"

    .line 359
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "fail_msg"

    .line 360
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "duration"

    .line 361
    invoke-virtual {v5, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "this_duration"

    .line 362
    invoke-virtual {v5, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "request_time"

    .line 363
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_last_time"

    .line 364
    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "total_duration"

    .line 365
    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "timeout_interval"

    .line 366
    invoke-virtual {v5, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 367
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    const-string v1, "init_switch_result"

    invoke-virtual {v0, v1, v5}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final az(Landroid/content/Context;)Losdk/okhttp3/Request;
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c9aeb02200382551a6862502504f0ad5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Losdk/okhttp3/Request;

    return-object p1

    .line 309
    :cond_0
    new-instance v0, Losdk/okhttp3/FormBody$Builder;

    invoke-direct {v0}, Losdk/okhttp3/FormBody$Builder;-><init>()V

    .line 310
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object v0

    const-string v2, "os"

    const-string v3, "1"

    .line 311
    invoke-virtual {v0, v2, v3}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object p1

    .line 313
    invoke-direct {p0}, Lgbsdk/common/host/abul;->fa()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "modules"

    invoke-virtual {p1, v2, v0}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object p1

    .line 314
    invoke-direct {p0}, Lgbsdk/common/host/abul;->isDataCheck()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "is_data_check"

    invoke-virtual {p1, v2, v0}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object p1

    .line 315
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->osdkType:Ljava/lang/String;

    const-string v2, "osdk_type"

    invoke-virtual {p1, v2, v0}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getHostVersion()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "osdk_version"

    invoke-virtual {p1, v2, v0}, Losdk/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/FormBody$Builder;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Losdk/okhttp3/FormBody$Builder;->build()Losdk/okhttp3/FormBody;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Losdk/okhttp3/FormBody;->size()I

    move-result v0

    const-string v2, ""

    :goto_0
    if-ge v1, v0, :cond_1

    .line 321
    invoke-virtual {p1, v1}, Losdk/okhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {p1, v1}, Losdk/okhttp3/FormBody;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]request form body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Losdk/okhttp3/Request$Builder;

    invoke-direct {v0}, Losdk/okhttp3/Request$Builder;-><init>()V

    const-string v1, "https://usdk.dailygn.com/osdk/gamecp/account/v1/get_sdk_init_params/"

    .line 328
    invoke-virtual {v0, v1}, Losdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Losdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 329
    check-cast p1, Losdk/okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Losdk/okhttp3/Request$Builder;->post(Losdk/okhttp3/RequestBody;)Losdk/okhttp3/Request$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Losdk/okhttp3/Request$Builder;->build()Losdk/okhttp3/Request;

    move-result-object p1

    const-string v0, "Builder()\n            .u\u2026ody)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "13ad96f174cd77a288ec1056fc5752b1"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InitSwitch"

    const-string v1, "[initSwitch]Request DataLinkSwitch"

    .line 104
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 106
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "init_switch_request"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 107
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/-$$Lambda$abul$lROCrBNibBvopSdatB1BQSjIzQk;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lgbsdk/common/host/-$$Lambda$abul$lROCrBNibBvopSdatB1BQSjIzQk;-><init>(Lgbsdk/common/host/abul;Landroid/content/Context;Lkotlin/jvm/functions/Function0;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final b(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f15750301e066fb01a87bf7fff6e1575"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->mainThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/-$$Lambda$abul$Og1A29C_hXTCx-ocRRnv2cSWz70;

    invoke-direct {v1, p1}, Lgbsdk/common/host/-$$Lambda$abul$Og1A29C_hXTCx-ocRRnv2cSWz70;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final c(Lkotlin/jvm/functions/Function0;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "881bf250eb4238ed7d03487ce2f00ec6"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "$onCompleted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final eY()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
    .locals 14

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "df2ea9ce0eba5fcd12b26dbc3cc33e96"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    return-object v0

    :cond_0
    const-string v1, "key_cached_init_switch_data"

    .line 289
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_5

    .line 293
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abul;->si:Lcom/google/gson/Gson;

    const-class v2, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0xff

    const/4 v12, 0x0

    .line 294
    invoke-static/range {v1 .. v12}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->copy$default(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 295
    :cond_3
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSwitch]Json Parse with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_5
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final eZ()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2b3b21c94d298bd38169a7d7da40c657"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 305
    :cond_0
    sget-object v0, Lgbsdk/common/host/absv;->aEQ:Lgbsdk/common/host/absv$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/absv$ab;->gE()Lgbsdk/common/host/absv;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/absv;->aER:Ljava/util/List;

    return-object v0
.end method

.method private final fa()Lorg/json/JSONArray;
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "45c7a50ffcbb243a862a0091e7fc494a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    return-object v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getComponents()Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 337
    invoke-static {}, Lgbsdk/common/host/abul$ad;->values()[Lgbsdk/common/host/abul$ad;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    const-string v7, "components"

    .line 338
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    iget-object v8, v6, Lgbsdk/common/host/abul$ad;->Fm:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v0, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    iget v6, v6, Lgbsdk/common/host/abul$ad;->Fl:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]module: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lorg/json/JSONArray;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private final isDataCheck()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "63c8152d3806ada56f21f6e6ee1bc030"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 347
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abrn;->isDataCheck()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$Og1A29C_hXTCx-ocRRnv2cSWz70(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lgbsdk/common/host/abul;->c(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic lambda$lROCrBNibBvopSdatB1BQSjIzQk(Lgbsdk/common/host/abul;Landroid/content/Context;Lkotlin/jvm/functions/Function0;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lgbsdk/common/host/abul;->a(Lgbsdk/common/host/abul;Landroid/content/Context;Lkotlin/jvm/functions/Function0;J)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "20938798dbb55332c2689b1c7f88b156"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lgbsdk/common/host/abul;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lgbsdk/common/host/abul;->EY:Lkotlin/jvm/functions/Function0;

    .line 80
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->needRequestDataLinkSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abul;->b(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->register(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;)V

    goto :goto_0

    :cond_2
    const-string p1, "InitSwitch"

    const-string v0, "[initSwitch]No need to request DataLinkSwitch"

    .line 88
    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p1

    .line 90
    new-instance v12, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v12}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setInitSwitchData(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V

    .line 91
    invoke-direct {p0, p2}, Lgbsdk/common/host/abul;->b(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public isAvailable(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/abul;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "76f7c119ff65e1c353f9a1e7eca85c61"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initSwitch]Network is changed available\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitSwitch"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 98
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abul;->context:Landroid/content/Context;

    const-string v1, "context"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    move-object v3, p0

    check-cast v3, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;

    invoke-virtual {p1, v0, v3}, Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeManager;->unRegisterNetworkChangeReceiver(Landroid/content/Context;Lcom/bytedance/ttgame/tob/common/host/base/api/utils/NetworkChangeReceiver$INetworkAvailable;)V

    .line 99
    iget-object p1, p0, Lgbsdk/common/host/abul;->context:Landroid/content/Context;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abul;->EY:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_3

    const-string v0, "onCompleted"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    invoke-direct {p0, p1, v2}, Lgbsdk/common/host/abul;->b(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    return-void
.end method
