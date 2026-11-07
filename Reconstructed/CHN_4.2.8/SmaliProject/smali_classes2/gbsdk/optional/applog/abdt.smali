.class public final Lgbsdk/optional/applog/abdt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lgbsdk/optional/applog/abdr;JLjava/lang/String;I)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v6, Lgbsdk/optional/applog/abes;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    move-object v3, p3

    const-wide/16 v4, 0x1

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lgbsdk/optional/applog/abes;-><init>(JLjava/lang/String;J)V

    .line 1
    iput p4, v6, Lgbsdk/optional/applog/abes;->a:I

    if-eqz p0, :cond_1

    .line 2
    check-cast p0, Lgbsdk/optional/applog/abci;

    invoke-virtual {p0, v6}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_1
    return-void
.end method

.method public static final a(Lgbsdk/optional/applog/abdr;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "metricsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x45d20c4

    if-eq v2, v3, :cond_1

    const p2, 0x1018f5f5

    if-eq v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sdk_init"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lgbsdk/optional/applog/abbn;

    sub-long/2addr v0, p3

    invoke-direct {p1, v0, v1}, Lgbsdk/optional/applog/abbn;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v2, "api_usage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lgbsdk/optional/applog/abda;

    sub-long/2addr v0, p3

    invoke-direct {p1, p2, v0, v1}, Lgbsdk/optional/applog/abda;-><init>(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    check-cast p0, Lgbsdk/optional/applog/abci;

    invoke-virtual {p0, p1}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_3
    return-void
.end method

.method public static final a(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Lgbsdk/optional/applog/abfv;

    invoke-direct {v0, p1}, Lgbsdk/optional/applog/abfv;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lgbsdk/optional/applog/abci;

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_0
    return-void
.end method

.method public static final a(Lgbsdk/optional/applog/abdr;Ljava/net/URL;JILjava/lang/String;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/simulator/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lgbsdk/optional/applog/am;

    invoke-direct {v3}, Lgbsdk/optional/applog/am;-><init>()V

    sub-long/2addr v1, p2

    .line 5
    iput-wide v1, v3, Lgbsdk/optional/applog/am;->e:J

    const/4 p2, 0x1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const-string p3, ""

    goto :goto_3

    :cond_3
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    array-length p3, p1

    sub-int/2addr p3, p2

    aget-object p3, p1, p3

    .line 7
    :cond_4
    :goto_3
    iput-object p3, v3, Lgbsdk/optional/applog/am;->d:Ljava/lang/String;

    const/16 p1, 0xc8

    if-ne p4, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    .line 9
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    iput-object p1, v3, Lgbsdk/optional/applog/am;->b:Ljava/lang/Integer;

    .line 11
    iput-object p5, v3, Lgbsdk/optional/applog/am;->c:Ljava/lang/String;

    .line 8
    :goto_4
    iput v0, v3, Lgbsdk/optional/applog/am;->a:I

    .line 12
    check-cast p0, Lgbsdk/optional/applog/abci;

    invoke-virtual {p0, v3}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_6
    return-void
.end method

.method public static final b(Lgbsdk/optional/applog/abdr;Ljava/lang/Throwable;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-string v3, "e.stackTrace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ele.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.bytedance.applog"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v6, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.bytedance.bdtracker"

    invoke-static {v5, v6, v1, v8, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/GlobalLoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "TraceSDKError hasAppLog err"

    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    new-instance v0, Lgbsdk/optional/applog/at;

    invoke-direct {v0, p1}, Lgbsdk/optional/applog/at;-><init>(Ljava/lang/Throwable;)V

    check-cast p0, Lgbsdk/optional/applog/abci;

    invoke-virtual {p0, v0}, Lgbsdk/optional/applog/abci;->a(Lgbsdk/optional/applog/abfn;)V

    :cond_4
    return-void
.end method
