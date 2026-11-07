.class public final Lcom/bytedance/ads/convert/BDConvert;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ%\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0005\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/bytedance/ads/convert/BDConvert;",
        "",
        "Landroid/app/Application;",
        "application",
        "",
        "init",
        "(Landroid/app/Application;)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/bytedance/ads/convert/config/BDConvertConfig;",
        "userConfig",
        "(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V",
        "(Landroid/app/Application;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V",
        "Landroid/app/Activity;",
        "activity",
        "(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;Landroid/app/Activity;)V",
        "(Landroid/content/Context;Landroid/app/Activity;)V",
        "sendLaunchEvent",
        "(Landroid/content/Context;)V",
        "",
        "hasPost",
        "Z",
        "",
        "initTime",
        "J",
        "getInitTime",
        "()J",
        "setInitTime",
        "(J)V",
        "config",
        "Lcom/bytedance/ads/convert/config/BDConvertConfig;",
        "getConfig",
        "()Lcom/bytedance/ads/convert/config/BDConvertConfig;",
        "setConfig",
        "(Lcom/bytedance/ads/convert/config/BDConvertConfig;)V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "convert_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

.field private static final TAG:Ljava/lang/String; = "Convert:BDConvert"

.field private static config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

.field private static hasPost:Z

.field private static initTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ads/convert/BDConvert;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/BDConvert;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    new-instance v0, Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init(Landroid/app/Application;)V
    .locals 11

    sget-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    const-string v2, "msg"

    const-string v3, "tag"

    const-string v4, "Convert:BDConvert"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v0, v8

    if-eqz v10, :cond_2

    const-string p1, "BDConvert \u91cd\u590d\u521d\u59cb\u5316"

    .line 1
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v5, v7, v6, v7}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    if-eqz v0, :cond_4

    const-string p1, "\u521d\u59cb\u5316\u5931\u8d25, BDConvert \u5728\u4f7f\u7528application\u521d\u59cb\u5316\u65f6,\u5fc5\u987b\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\n\u82e5\u8981\u5728\u5b50\u7ebf\u7a0b\u4e2d\u521d\u59cb\u5316,\u8bf7\u5728\u4f7f\u7528Activity\u4f5c\u4e3a\u53c2\u6570\u7684\u65b9\u6cd5\u91cd\u8f7d"

    .line 3
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4, p1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_1
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1, v6, v7, v6, v7}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/app/Application;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V
    .locals 2

    const-string p2, "Convert:BDConvert"

    const-string v0, "tag"

    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BDConvert init"

    const-string v1, "msg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    sget-object p2, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getAutoSendLaunchEvent()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/ads/convert/BDConvert;->sendLaunchEvent(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;
    .locals 1

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    return-object v0
.end method

.method public final getInitTime()J
    .locals 2

    sget-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    return-wide v0
.end method

.method public final init(Landroid/app/Application;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V
    .locals 12

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userConfig"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    sget-wide v1, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    const-string v3, "msg"

    const-string v4, "tag"

    const-string v5, "Convert:BDConvert"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    cmp-long v11, v1, v9

    if-eqz v11, :cond_2

    const-string p1, "BDConvert \u91cd\u590d\u521d\u59cb\u5316"

    .line 5
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, v7, v8, v6, v8}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Looper.getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_4

    const-string p1, "\u521d\u59cb\u5316\u5931\u8d25, BDConvert \u5728\u4f7f\u7528application\u521d\u59cb\u5316\u65f6,\u5fc5\u987b\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\n\u82e5\u8981\u5728\u5b50\u7ebf\u7a0b\u4e2d\u521d\u59cb\u5316,\u8bf7\u5728\u4f7f\u7528Activity\u4f5c\u4e3a\u53c2\u6570\u7684\u65b9\u6cd5\u91cd\u8f7d"

    .line 7
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v5, p1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_1
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1, v6, v8, v6, v8}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "application.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getPlaySessionEnable()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/bytedance/ads/convert/flat/i/g;->i:Lcom/bytedance/ads/convert/flat/i/g;

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->h:Lcom/bytedance/ads/convert/flat/i/g$a;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/ads/convert/flat/i/g;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v7

    sput-boolean v0, Lcom/bytedance/ads/convert/flat/i/g;->d:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->h:Lcom/bytedance/ads/convert/flat/e/a;

    .line 10
    sget-wide v0, Lcom/bytedance/ads/convert/flat/e/a;->f:J

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/ads/convert/flat/i/g;->a(J)V

    .line 12
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/ads/convert/flat/i/g;->e:J

    const/4 p2, 0x0

    const-string v0, "sp_name_app_switch_event"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    :cond_6
    :goto_2
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-string p1, "Convert:BDConvert"

    const-string p2, "BDConvert \u91cd\u590d\u521d\u59cb\u5316"

    const-string v0, "tag"

    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;Landroid/app/Activity;)V

    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;Landroid/app/Activity;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    sget-wide v1, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string p1, "Convert:BDConvert"

    const-string p2, "BDConvert \u91cd\u590d\u521d\u59cb\u5316"

    const-string p3, "tag"

    .line 17
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {p3}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :goto_0
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3, v0}, Lcom/bytedance/ads/convert/flat/c/b;->a(Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/ads/convert/config/BDConvertConfig;)V

    invoke-virtual {p2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getPlaySessionEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    sget-object p2, Lcom/bytedance/ads/convert/flat/i/g;->h:Lcom/bytedance/ads/convert/flat/i/g$a;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/ads/convert/flat/i/g$a;->onActivityStarted(Landroid/app/Activity;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/bytedance/ads/convert/flat/i/g;->e:J

    const/4 p1, 0x0

    const-string p2, "sp_name_app_switch_event"

    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    :cond_3
    return-void
.end method

.method public final sendLaunchEvent(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/bytedance/ads/convert/BDConvert;->hasPost:Z

    if-eqz v0, :cond_1

    const-string p1, "Convert:BDConvert"

    const-string v0, "already sendLaunchEvent"

    const-string v1, "tag"

    .line 1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    sget-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onOtherError(ILjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/bytedance/ads/convert/BDConvert;->hasPost:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/ads/convert/BDConvert$a;

    invoke-direct {v1, p1}, Lcom/bytedance/ads/convert/BDConvert$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setConfig(Lcom/bytedance/ads/convert/config/BDConvertConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/bytedance/ads/convert/BDConvert;->config:Lcom/bytedance/ads/convert/config/BDConvertConfig;

    return-void
.end method

.method public final setInitTime(J)V
    .locals 0

    sput-wide p1, Lcom/bytedance/ads/convert/BDConvert;->initTime:J

    return-void
.end method
