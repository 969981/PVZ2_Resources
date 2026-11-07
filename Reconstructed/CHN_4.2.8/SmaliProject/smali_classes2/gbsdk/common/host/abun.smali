.class public final Lgbsdk/common/host/abun;
.super Ljava/lang/Object;
.source "SdkInitHelper.kt"

# interfaces
.implements Lgbsdk/common/host/abui$ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abun$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\"\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\"\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\"\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u001d\u001a\u00020\u000b2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/SdkInitHelper;",
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager$OnStateChangeListener;",
        "()V",
        "TAG",
        "",
        "mChannelGetter",
        "Lkotlin/Function1;",
        "Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;",
        "mPendingInitData",
        "Lcom/bytedance/ttgame/tob/common/host/main/SdkInitHelper$InitData;",
        "fetchDeviceIdAndReInit",
        "",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;",
        "start",
        "",
        "init",
        "initCallback",
        "initConfig",
        "Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;",
        "initOnDidGot",
        "isConfigJsonValid",
        "",
        "onStateChange",
        "state",
        "Lcom/bytedance/ttgame/tob/common/host/main/StateManager$State;",
        "realInit",
        "setup",
        "channelGetter",
        "InitData",
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
.field private static final TAG:Ljava/lang/String; = "SdkInitHelper"

.field private static aAa:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final azY:Lgbsdk/common/host/abun;

.field private static volatile azZ:Lgbsdk/common/host/abun$ab;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abun;

    invoke-direct {v0}, Lgbsdk/common/host/abun;-><init>()V

    sput-object v0, Lgbsdk/common/host/abun;->azY:Lgbsdk/common/host/abun;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/app/Activity;JLcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p4, v0, v2

    sget-object v2, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5a1f0c88c649feeb14c055e4f1256044"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Landroid/app/Application;

    .line 250
    sget-object v1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v1}, Lgbsdk/common/host/abui;->fl()Z

    move-result v1

    const-string v2, "SdkInitHelper"

    if-nez v1, :cond_6

    sget-object v1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v1}, Lgbsdk/common/host/abui;->fm()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "[osdk_init]realInit"

    .line 254
    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    sget-object v3, Lgbsdk/common/host/abui$ac;->aAE:Lgbsdk/common/host/abui$ac;

    invoke-virtual {v1, v3}, Lgbsdk/common/host/abui;->b(Lgbsdk/common/host/abui$ac;)V

    .line 259
    sget-object v1, Lgbsdk/common/host/abuj;->aBJ:Lgbsdk/common/host/abuj;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abuj;->a(Landroid/app/Activity;)Lgbsdk/common/host/abuj$ab;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lgbsdk/common/host/abuj$ab;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p4, :cond_2

    .line 261
    iget p1, v1, Lgbsdk/common/host/abuj$ab;->code:I

    iget-object p2, v1, Lgbsdk/common/host/abuj$ab;->message:Ljava/lang/String;

    invoke-interface {p4, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "[osdk_init]before channel init"

    .line 265
    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v1, Lgbsdk/common/host/abun;->aAa:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_4

    const-string v1, "mChannelGetter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_4
    const-string v2, "init"

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    if-eqz v1, :cond_5

    new-instance v2, Lgbsdk/common/host/abun$ae;

    invoke-direct {v2, p2, p3, v0, p4}, Lgbsdk/common/host/abun$ae;-><init>(JLandroid/app/Application;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    new-instance p2, Lgbsdk/common/host/abun$af;

    invoke-direct {p2, p4}, Lgbsdk/common/host/abun$af;-><init>(Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, v2, p2}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->init(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_5
    return-void

    .line 251
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[osdk_init]realInit, skip for already in sate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p2}, Lgbsdk/common/host/abui;->fg()Lgbsdk/common/host/abui$ac;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 249
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.app.Application"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "381d3ab8f210e250cf2b65afbc0ff847"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 184
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v1

    .line 185
    iget-object v3, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x2

    const-string v5, "SdkInitHelper"

    if-eqz v3, :cond_2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]app id invalid, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "invalid app id, please check your config.json"

    .line 187
    invoke-interface {p1, v4, v0}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_1
    return v2

    .line 193
    :cond_2
    iget-object v3, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->screenOrientation:Ljava/lang/String;

    const-string v6, "sensorLandscape"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->screenOrientation:Ljava/lang/String;

    const-string v6, "sensorPortrait"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]screenOrientation invalid, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->screenOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v0, "invalid screenOrientation, please check your config.json"

    .line 195
    invoke-interface {p1, v4, v0}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_3
    return v2

    .line 202
    :cond_4
    iget v3, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    if-nez v3, :cond_6

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]union_mode invalid, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, "invalid union_mode, please check your config.json"

    .line 204
    invoke-interface {p1, v4, v0}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    return v0
.end method

.method private static final ff()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/bytedance/ttgame/tob/optional/applog/api/IAppLogInitService;

    return-object v0
.end method

.method public static synthetic lambda$eH9L87lk8r1ghgW5Jq2IdAj3HNM()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abun;->ff()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "19146cefaf7532486a8cb820deeed58f"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_init]initOnDidGot, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkInitHelper"

    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1, p3, p4, p2}, Lgbsdk/common/host/abun;->a(Landroid/app/Activity;JLcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    .line 180
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->onAppLogPrepared()V

    return-void
.end method

.method public a(Lgbsdk/common/host/abui$ac;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "979e083504ac6a16a986948fba2976d8"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    if-ne p1, v0, :cond_1

    .line 239
    sget-object p1, Lgbsdk/common/host/abun;->azZ:Lgbsdk/common/host/abun$ab;

    if-eqz p1, :cond_1

    .line 240
    sget-object p1, Lgbsdk/common/host/abun;->azZ:Lgbsdk/common/host/abun$ab;

    if-eqz p1, :cond_1

    .line 241
    iget-object v0, p1, Lgbsdk/common/host/abun$ab;->aAb:Landroid/app/Activity;

    iget-object p1, p1, Lgbsdk/common/host/abun$ab;->aAc:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/api/GBCommonSDK;->init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    const/4 p1, 0x0

    .line 242
    sput-object p1, Lgbsdk/common/host/abun;->azZ:Lgbsdk/common/host/abun$ab;

    :cond_1
    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1f24799f86c2ce4be8ca517f99a07448"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "channelGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sput-object p1, Lgbsdk/common/host/abun;->aAa:Lkotlin/jvm/functions/Function1;

    .line 33
    sget-object p1, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    move-object v0, p0

    check-cast v0, Lgbsdk/common/host/abui$ab;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abui;->a(Lgbsdk/common/host/abui$ab;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "69d946fdc1cf7e7efa9cdfd48da43364"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SdkInitHelper"

    const-string v1, "[osdk_init]fetchDeviceIdAndReinit"

    .line 217
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/-$$Lambda$abun$eH9L87lk8r1ghgW5Jq2IdAj3HNM;->INSTANCE:Lgbsdk/common/host/-$$Lambda$abun$eH9L87lk8r1ghgW5Jq2IdAj3HNM;

    .line 218
    new-instance v1, Lgbsdk/common/host/abun$ac;

    invoke-direct {v1, p1, p2, p3, p4}, Lgbsdk/common/host/abun$ac;-><init>(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager;->getService(Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceTarget;Lcom/bytedance/ttgame/tob/common/host/base/api/service/OptionalServiceManager$ServiceCallback;)V

    return-void
.end method

.method public final init(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    sget-object v4, Lgbsdk/common/host/abun;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "aa30e31056a6bd0c05639d432a061a6e"

    invoke-static {v0, p0, v4, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageChannel: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getPackageChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageTag: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getPackageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", extraInfo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 43
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[osdk_init]SdkInitHelper.init: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SdkInitHelper"

    invoke-static {v4, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setInitConfig(Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V

    .line 48
    instance-of v6, p2, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    if-eqz v6, :cond_3

    move-object v9, p2

    goto :goto_0

    .line 50
    :cond_3
    sget-object p3, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;->Companion:Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p3, p2, v7, v8}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper$ab;->a(Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    move-result-object p3

    move-object v9, p3

    .line 51
    :goto_0
    nop

    instance-of p3, v9, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    move-object v5, v9

    check-cast v5, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;->getStart()J

    move-result-wide v7

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 55
    :goto_2
    sget-object v5, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v5}, Lgbsdk/common/host/abui;->fj()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p1, "[osdk_init]init, initializing pre init stage!"

    .line 56
    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_6
    sget-object v5, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v5}, Lgbsdk/common/host/abui;->fk()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v6, :cond_8

    .line 61
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;->getDid()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 62
    invoke-virtual {p0, p1, v9, v7, v8}, Lgbsdk/common/host/abun;->a(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;J)V

    goto :goto_3

    :cond_7
    const-string p1, "[osdk_init]init, AppLog has been init but did is not ok!"

    .line 64
    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    const-string p2, "AppLog has been init but did is not ok!"

    .line 65
    invoke-interface {v9, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    :goto_3
    return-void

    :cond_8
    const-string p1, "[osdk_init]init, AppLog initialing and calling from CP!"

    .line 69
    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_9
    sget-object v5, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v5}, Lgbsdk/common/host/abui;->fl()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string p1, "[osdk_init]init, initializing after get did stage!"

    .line 75
    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_a
    sget-object v5, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {v5}, Lgbsdk/common/host/abui;->fm()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[osdk_init]init, after initialized success! callback="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_b

    .line 80
    move-object v0, v9

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/main/InitCallbackWrapper;->onSuccessLight()V

    :cond_c
    return-void

    .line 85
    :cond_d
    sget-object p2, Lgbsdk/common/host/absw;->aCx:Lgbsdk/common/host/absw;

    invoke-virtual {p2}, Lgbsdk/common/host/absw;->gd()V

    .line 87
    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p2}, Lgbsdk/common/host/abui;->fg()Lgbsdk/common/host/abui$ac;

    move-result-object p2

    sget-object p3, Lgbsdk/common/host/abui$ac;->aAA:Lgbsdk/common/host/abui$ac;

    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p2, p3}, Lgbsdk/common/host/abui$ac;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_e

    const-string p2, "[osdk_init]prepare not finish, init will be continue on prepare success."

    .line 88
    invoke-static {v4, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p2, Lgbsdk/common/host/abun$ab;

    invoke-direct {p2, p1, v9}, Lgbsdk/common/host/abun$ab;-><init>(Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    sput-object p2, Lgbsdk/common/host/abun;->azZ:Lgbsdk/common/host/abun$ab;

    return-void

    .line 93
    :cond_e
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->enableOsdkInit()Z

    move-result p2

    if-nez p2, :cond_f

    const/4 p2, 0x1

    goto :goto_4

    :cond_f
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_11

    const-string p1, "[osdk_init]initSwitch is Closed"

    .line 94
    invoke-static {v4, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xd

    .line 95
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->getOsdkStatusOffReason()Ljava/lang/String;

    move-result-object v0

    :cond_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v9, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    return-void

    .line 99
    :cond_11
    invoke-direct {p0, v9}, Lgbsdk/common/host/abun;->a(Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 105
    :cond_12
    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p2}, Lgbsdk/common/host/abui;->fh()Z

    move-result p2

    if-nez p2, :cond_13

    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    invoke-virtual {p2}, Lgbsdk/common/host/abui;->fi()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 106
    :cond_13
    sget-object p2, Lgbsdk/common/host/abui;->aAj:Lgbsdk/common/host/abui;

    sget-object p3, Lgbsdk/common/host/abui$ac;->aAC:Lgbsdk/common/host/abui$ac;

    invoke-virtual {p2, p3}, Lgbsdk/common/host/abui;->b(Lgbsdk/common/host/abui$ac;)V

    .line 109
    :cond_14
    sget-object p2, Lgbsdk/common/host/abun;->aAa:Lkotlin/jvm/functions/Function1;

    if-nez p2, :cond_15

    const-string p2, "mChannelGetter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    move-object v0, p2

    :goto_5
    const-string p2, "preInit"

    invoke-interface {v0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;

    new-array p3, v3, [Lkotlin/Pair;

    if-nez p2, :cond_16

    const/4 v0, -0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    .line 113
    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "status"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p3, v1

    .line 114
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recursion"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p3, v2

    .line 112
    invoke-static {p3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "osdk_monitor_init_cost"

    const-string v2, "step_get_channel"

    .line 110
    invoke-static {v1, p3, v0, v2}, Lcom/bytedance/ttgame/tob/common/host/base/api/monitor/GBSDKMonitor;->monitorInitEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/String;)V

    if-eqz p2, :cond_17

    .line 121
    new-instance p3, Lgbsdk/common/host/abun$ad;

    move-object v5, p3

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lgbsdk/common/host/abun$ad;-><init>(ZJLcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;Landroid/app/Activity;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p1, p3}, Lcom/bytedance/ttgame/tob/common/plugin/api/IChannel;->preInit(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V

    :cond_17
    return-void
.end method
