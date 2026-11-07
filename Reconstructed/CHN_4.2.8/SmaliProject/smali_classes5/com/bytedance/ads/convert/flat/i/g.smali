.class public final Lcom/bytedance/ads/convert/flat/i/g;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x1

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/util/Timer; = null

.field public static d:Z = true

.field public static e:J

.field public static f:I

.field public static g:Landroid/content/SharedPreferences;

.field public static final h:Lcom/bytedance/ads/convert/flat/i/g$a;

.field public static final i:Lcom/bytedance/ads/convert/flat/i/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/i/g;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/i/g;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/i/g;->i:Lcom/bytedance/ads/convert/flat/i/g;

    new-instance v0, Lcom/bytedance/ads/convert/flat/i/g$a;

    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/i/g$a;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/i/g;->h:Lcom/bytedance/ads/convert/flat/i/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/bytedance/ads/convert/flat/i/g;I)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/ads/convert/flat/i/g;->e:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-string v2, "duration"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "switch_type"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-wide v0, Lcom/bytedance/ads/convert/flat/i/g;->e:J

    const-string p1, "session_start"

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/bytedance/ads/convert/flat/i/g;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/ads/convert/flat/i/g;->c:Ljava/util/Timer;

    const-string v0, "Convert:PlaySession"

    const-string v1, "cancelPlaySessionEvent"

    const-string v2, "tag"

    .line 2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/ads/convert/flat/i/g;->a()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/bytedance/ads/convert/flat/i/g;->c:Ljava/util/Timer;

    new-instance v2, Lcom/bytedance/ads/convert/flat/i/g$b;

    invoke-direct {v2}, Lcom/bytedance/ads/convert/flat/i/g$b;-><init>()V

    sget-object v0, Lcom/bytedance/ads/convert/flat/e/a;->h:Lcom/bytedance/ads/convert/flat/e/a;

    .line 10
    sget-wide v0, Lcom/bytedance/ads/convert/flat/e/a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xea60

    :goto_0
    move-wide v5, v0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    move-wide v3, p1

    goto :goto_1

    :cond_1
    move-wide v3, v5

    .line 11
    :goto_1
    :try_start_1
    sget-object v1, Lcom/bytedance/ads/convert/flat/i/g;->c:Ljava/util/Timer;

    if-eqz v1, :cond_2

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/ads/convert/flat/i/g;->a()V

    :cond_2
    :goto_2
    const-string p1, "Convert:PlaySession"

    const-string p2, "startPlaySessionEvent"

    const-string v0, "tag"

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ads/convert/BDConvert;->INSTANCE:Lcom/bytedance/ads/convert/BDConvert;

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/BDConvert;->getConfig()Lcom/bytedance/ads/convert/config/BDConvertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ads/convert/config/BDConvertConfig;->getEnableLog()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/bytedance/ads/convert/flat/f/b;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "session_sync"

    const-string v2, "label"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "params"

    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/bytedance/ads/convert/flat/f/b;

    invoke-direct {v2, v1}, Lcom/bytedance/ads/convert/flat/f/b;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object v0, v2, Lcom/bytedance/ads/convert/flat/f/b;->g:Ljava/lang/String;

    .line 8
    iput-object p1, v2, Lcom/bytedance/ads/convert/flat/f/b;->h:Lorg/json/JSONObject;

    const-string p1, "Convert:PlaySession"

    .line 9
    invoke-virtual {v2, p1}, Lcom/bytedance/ads/convert/flat/f/b;->a(Ljava/lang/String;)V

    sget p1, Lcom/bytedance/ads/convert/flat/i/g;->f:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/bytedance/ads/convert/flat/i/g;->f:I

    sget-object p1, Lcom/bytedance/ads/convert/flat/i/g;->g:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_4

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x64

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_5
    return v1

    :catchall_0
    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
