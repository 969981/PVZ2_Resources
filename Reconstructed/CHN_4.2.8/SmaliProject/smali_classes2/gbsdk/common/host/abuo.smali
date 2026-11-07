.class public final Lgbsdk/common/host/abuo;
.super Ljava/lang/Object;
.source "OpenURLHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J0\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/OpenURLHandler;",
        "",
        "()V",
        "EVENT_KEY_EXTRA_PARAMS",
        "",
        "EVENT_KEY_HOST",
        "EVENT_KEY_LINK_ID",
        "EVENT_KEY_PATH",
        "EVENT_KEY_SCHEME",
        "EVENT_NAME_OSDK_OPEN_GAME",
        "KEY_DYGAME_LOG_EXTRA",
        "KEY_LINK_ID",
        "TAG",
        "handle",
        "",
        "url",
        "sendEventOpenGame",
        "",
        "linkId",
        "host",
        "path",
        "scheme",
        "extraParams",
        "setExtraToParams",
        "json",
        "Lorg/json/JSONObject;",
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
.field private static final FA:Ljava/lang/String; = "osdk_open_game"

.field private static final FB:Ljava/lang/String; = "link_id"

.field private static final FC:Ljava/lang/String; = "host"

.field private static final FD:Ljava/lang/String; = "path"

.field private static final FE:Ljava/lang/String; = "scheme"

.field private static final FF:Ljava/lang/String; = "extra_params"

.field public static final Fx:Lgbsdk/common/host/abuo;

.field private static final Fy:Ljava/lang/String; = "dygame_log_extra"

.field private static final Fz:Ljava/lang/String; = "link_id"

.field private static final TAG:Ljava/lang/String; = "OpenURLHandler"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abuo;

    invoke-direct {v0}, Lgbsdk/common/host/abuo;-><init>()V

    sput-object v0, Lgbsdk/common/host/abuo;->Fx:Lgbsdk/common/host/abuo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final G(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abuo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "038ef9845d9850b4dcdaab26d96ce5ff"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    :try_start_0
    sget-object v0, Lgbsdk/common/host/-$$Lambda$abuo$61QQ2Dj38Fzz8rRW8kmWGvogtYQ;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abuo$61QQ2Dj38Fzz8rRW8kmWGvogtYQ;

    .line 83
    new-instance v1, Lgbsdk/common/host/abuo$ab;

    invoke-direct {v1, p1}, Lgbsdk/common/host/abuo$ab;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OpenURLHandler"

    const-string v1, "setExtraToParams error!!"

    .line 99
    invoke-static {v0, v1, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const/4 v2, 0x4

    aput-object p5, v0, v2

    sget-object v2, Lgbsdk/common/host/abuo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "37cffdd54a3b3d0a9112210a2c66a4c8"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "link_id"

    .line 106
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "host"

    .line 107
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "path"

    .line 108
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scheme"

    .line 109
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extra_params"

    .line 110
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p1

    const-string p2, "osdk_open_game"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final fe()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    return-object v0
.end method

.method public static synthetic lambda$61QQ2Dj38Fzz8rRW8kmWGvogtYQ()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abuo;->fe()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cf(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p1

    const-string v2, "uri?.path ?: \"\""

    const-string v3, "uri?.host ?: \"\""

    const-string v4, ""

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v0, v6

    sget-object v7, Lgbsdk/common/host/abuo;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v8, "4c50b5106eb99be1b47c92357526c600"

    move-object/from16 v9, p0

    invoke-static {v0, v9, v7, v6, v8}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle url, url: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "OpenURLHandler"

    invoke-static {v7, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "handle url error! url is empty!"

    .line 29
    invoke-static {v7, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    const/4 v8, 0x0

    .line 35
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-nez v8, :cond_4

    const-string v0, "handle url error! url is invalid!"

    .line 39
    invoke-static {v7, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 45
    :cond_4
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v0, "dygame_log_extra"

    .line 46
    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v10, v4

    goto :goto_3

    :cond_5
    const-string v10, "uri?.getQueryParameter(KEY_DYGAME_LOG_EXTRA) ?: \"\""

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    .line 47
    :goto_3
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v10, v4

    :goto_4
    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_5
    move-object v0, v10

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "handle url error! the value of dygame_log_extra is empty!"

    .line 49
    invoke-static {v7, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 54
    :cond_6
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v6, Lgbsdk/common/host/abuo;->Fx:Lgbsdk/common/host/abuo;

    invoke-direct {v6, v0}, Lgbsdk/common/host/abuo;->G(Lorg/json/JSONObject;)V

    const-string v6, "link_id"

    .line 62
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v12, v4

    goto :goto_6

    :cond_7
    const-string v11, "logExtraJson.optString(KEY_LINK_ID) ?: \"\""

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v6

    .line 63
    :goto_6
    move-object v6, v12

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "handle url success but link id is empty! "

    .line 64
    invoke-static {v7, v6}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_8
    new-instance v6, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;

    if-nez v1, :cond_9

    move-object v11, v4

    goto :goto_7

    :cond_9
    move-object v11, v1

    :goto_7
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    move-object v13, v4

    :cond_a
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_b

    move-object v14, v4

    :cond_b
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v11, v13, v14}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6, v12}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->linkId(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->logExtra(Lorg/json/JSONObject;)Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra$Builder;->build()Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->updateDygameLogExtra(Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;)V

    .line 73
    sget-object v11, Lgbsdk/common/host/abuo;->Fx:Lgbsdk/common/host/abuo;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v13, v4

    goto :goto_8

    :cond_c
    move-object v13, v0

    :goto_8
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v14, v4

    goto :goto_9

    :cond_d
    move-object v14, v0

    :goto_9
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_e

    move-object v15, v4

    goto :goto_a

    :cond_e
    move-object v15, v1

    :goto_a
    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lgbsdk/common/host/abuo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    :goto_b
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 76
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "parse dygame_log_extra error!"

    invoke-static {v7, v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_f
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method
