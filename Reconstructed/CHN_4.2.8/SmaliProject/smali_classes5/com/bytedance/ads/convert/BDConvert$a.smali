.class public final Lcom/bytedance/ads/convert/BDConvert$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ads/convert/BDConvert;->sendLaunchEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/BDConvert$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "Convert:BDConvert"

    const-string v1, "tag"

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sendLaunchEvent"

    const-string v3, "msg"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v4}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/bytedance/ads/convert/BDConvert$a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/bytedance/ads/convert/flat/f/b;->e:Lcom/bytedance/ads/convert/flat/f/b$a;

    const-string v6, "appContext"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/bytedance/ads/convert/flat/f/b$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onInitSuccess()V

    :cond_1
    const-string v0, "launch_app"

    const-string v1, "label"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "3"

    const-string v3, "eventVersion"

    .line 4
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/bytedance/ads/convert/flat/f/b;

    invoke-direct {v3, v0}, Lcom/bytedance/ads/convert/flat/f/b;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object v2, v3, Lcom/bytedance/ads/convert/flat/f/b;->g:Ljava/lang/String;

    .line 7
    iput-object v4, v3, Lcom/bytedance/ads/convert/flat/f/b;->h:Lorg/json/JSONObject;

    const-string v0, "Convert:EventReporterV3"

    .line 8
    invoke-virtual {v3, v0}, Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    const-string v2, "app_switch_event_params"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "session_sync"

    .line 11
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/bytedance/ads/convert/flat/f/b;

    invoke-direct {v1, v0}, Lcom/bytedance/ads/convert/flat/f/b;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object v4, v1, Lcom/bytedance/ads/convert/flat/f/b;->g:Ljava/lang/String;

    .line 15
    iput-object v2, v1, Lcom/bytedance/ads/convert/flat/f/b;->h:Lorg/json/JSONObject;

    const-string v0, "Convert:PlaySession"

    .line 16
    invoke-virtual {v1, v0}, Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V

    sget v0, Lcom/bytedance/ads/convert/flat/i/g;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/bytedance/ads/convert/flat/i/g;->f:I

    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 17
    :cond_3
    :goto_1
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/d;->b:Lcom/bytedance/ads/convert/flat/f/d;

    .line 18
    sget-wide v1, Lcom/bytedance/ads/convert/flat/f/b;->b:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/ads/convert/flat/f/d;->a()V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/bytedance/ads/convert/flat/f/c;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/f/c;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    const-string v5, "\u521d\u59cb\u5316\u5931\u8d25"

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_3
    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getLifecycleCallback()Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/ads/convert/callback/BDConvertLifecycleCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_6
    return-void
.end method
