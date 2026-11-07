.class public Lcom/unicom/online/account/shield/UniAccountHelper;
.super Ljava/lang/Object;


# static fields
.field public static final CU_GET_TOKEN_IT:I = 0x2

.field private static final SUCCESS:I = 0x64

.field private static volatile s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/unicom/online/account/shield/UniAccountHelper;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/unicom/online/account/shield/UniAccountHelper;->getUseCacheFlag()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$100(Lcom/unicom/online/account/shield/UniAccountHelper;)Landroid/content/Context;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private cuPreGetToken(IILjava/lang/String;Lcom/unicom/online/account/shield/ResultListener;)V
    .locals 15

    move-object v1, p0

    move/from16 v9, p2

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v3, "cuPreGetToken"

    const-string v4, "type"

    :try_start_0
    iget-object v5, v1, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "sdk\u672a\u521d\u59cb\u5316"

    if-nez v5, :cond_0

    :try_start_1
    invoke-direct {p0, v9, v2, v6}, Lcom/unicom/online/account/shield/UniAccountHelper;->initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v5, v1, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mobile/auth/z/e;->d(Landroid/content/Context;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "\u6570\u636e\u7f51\u7edc\u672a\u5f00\u542f"

    if-eqz v5, :cond_b

    :try_start_2
    invoke-direct {p0}, Lcom/unicom/online/account/shield/UniAccountHelper;->getUseCacheFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    iget-object v5, v1, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v0}, Lcom/mobile/auth/z/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mobile/auth/z/b;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    :try_start_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "resultCode"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v4, "resultData"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "exp"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/16 v4, 0x64

    if-ne v10, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v4, v11, v13

    if-lez v4, :cond_1

    invoke-interface {v2, v5}, Lcom/unicom/online/account/shield/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    iget-object v4, v1, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/z/e;->e(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    iget-object v4, v1, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobile/auth/z/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "\u64cd\u4f5c\u9891\u7e41,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {p0, v9, v2, v0}, Lcom/unicom/online/account/shield/UniAccountHelper;->initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "sdk\u53c2\u6570\u9519\u8bef"

    invoke-direct {p0, v9, v2, v0}, Lcom/unicom/online/account/shield/UniAccountHelper;->initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v4, 0x2

    if-eq v9, v4, :cond_5

    const-string v0, "sdk type \u53c2\u6570\u9519\u8bef"

    invoke-direct {p0, v9, v2, v0}, Lcom/unicom/online/account/shield/UniAccountHelper;->initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    move-result-object v4

    new-instance v5, Lcom/unicom/online/account/shield/UniAccountHelper$1;

    invoke-direct {v5, p0, v9, v0, v2}, Lcom/unicom/online/account/shield/UniAccountHelper$1;-><init>(Lcom/unicom/online/account/shield/UniAccountHelper;ILjava/lang/String;Lcom/unicom/online/account/shield/ResultListener;)V

    iget-object v0, v4, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    const/4 v10, 0x1

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mobile/auth/z/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/mobile/auth/z/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/mobile/auth/z/v;->b()V

    invoke-static {v3}, Lcom/mobile/auth/z/v;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/z/v;->c()I

    invoke-static/range {p1 .. p1}, Lcom/mobile/auth/z/u;->b(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    :goto_0
    invoke-static {v9, v5, v6}, Lcom/mobile/auth/z/e;->a(ILcom/mobile/auth/z/d;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_c

    new-instance v3, Lcom/mobile/auth/z/k;

    invoke-direct {v3}, Lcom/mobile/auth/z/k;-><init>()V

    iget-object v0, v4, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    new-instance v2, Lcom/mobile/auth/z/l;

    invoke-direct {v2}, Lcom/mobile/auth/z/l;-><init>()V

    iput-object v2, v3, Lcom/mobile/auth/z/k;->b:Lcom/mobile/auth/z/l;

    iget-object v2, v3, Lcom/mobile/auth/z/k;->b:Lcom/mobile/auth/z/l;

    iput-object v5, v2, Lcom/mobile/auth/z/l;->a:Lcom/mobile/auth/z/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v3, Lcom/mobile/auth/z/k;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/mobile/auth/z/k$1;

    invoke-direct {v4, v3, v9}, Lcom/mobile/auth/z/k$1;-><init>(Lcom/mobile/auth/z/k;I)V

    move/from16 v5, p1

    int-to-long v5, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v11, Lcom/mobile/auth/z/k$2;

    invoke-direct {v11, v3}, Lcom/mobile/auth/z/k$2;-><init>(Lcom/mobile/auth/z/k;)V

    const-string v2, "\n\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\nrequestPreCheck()\n\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\u2605\u25a0\n"

    invoke-static {v2}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mobile/auth/z/v;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/mobile/auth/z/u;->c(I)V

    const-string v4, "-1=NULL; 0=\u6d41\u91cf; 1=\u53cc\u5f00; 2=WIFI; networkType = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    const/4 v12, 0x0

    if-ne v2, v10, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/mobile/auth/z/q;->a()Lcom/mobile/auth/z/q;

    move-result-object v13

    new-instance v14, Lcom/mobile/auth/z/k$3;

    move-object v2, v14

    move-object v6, v0

    move/from16 v7, p2

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/mobile/auth/z/k$3;-><init>(Lcom/mobile/auth/z/k;JLandroid/content/Context;ILcom/mobile/auth/z/m;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_8

    invoke-virtual {v13, v0, v14}, Lcom/mobile/auth/z/q;->a(Landroid/content/Context;Lcom/mobile/auth/z/q$a;)V

    return-void

    :cond_8
    invoke-interface {v14, v10, v12}, Lcom/mobile/auth/z/q$a;->a(ZLjava/lang/Object;)V

    return-void

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v3, v0, v9, v12, v11}, Lcom/mobile/auth/z/k;->a(Landroid/content/Context;ILjava/lang/Object;Lcom/mobile/auth/z/m;)V

    return-void

    :cond_a
    const v0, 0x64194

    invoke-interface {v11, v9, v0, v7}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    const v2, 0x64195

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u5224\u65ad\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v9, v2, v0}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catch_2
    :try_start_8
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    goto :goto_2

    :cond_b
    invoke-direct {p0, v9, v2, v7}, Lcom/unicom/online/account/shield/UniAccountHelper;->initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private getHostName()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    invoke-static {}, Lcom/mobile/auth/z/e;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/unicom/online/account/shield/UniAccountHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unicom/online/account/shield/UniAccountHelper;

    invoke-direct {v1}, Lcom/unicom/online/account/shield/UniAccountHelper;-><init>()V

    sput-object v1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSdkVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    invoke-static {}, Lcom/mobile/auth/z/e;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getUseCacheFlag()Z
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/mobile/auth/z/p;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private initFail(ILcom/unicom/online/account/shield/ResultListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nmsg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultCode"

    const v2, 0x641a5

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resultMsg"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "resultData"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "seq"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/unicom/online/account/shield/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    return-void

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/mobile/auth/z/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private initHostName(Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    invoke-static {p1}, Lcom/mobile/auth/z/e;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u521d\u59cb\u5316\u53c2\u6570\u9519\u8bef"

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object p1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private setUseCacheFlag(Z)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 0

    :try_start_0
    sput-boolean p1, Lcom/mobile/auth/z/p;->a:Z

    sget-object p1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cuDebugInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "sdk \u672a\u521d\u59cb\u5316, context \u4e3a\u7a7a"

    return-object p1

    :cond_0
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobile/auth/z/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public cuGetToken(ILcom/unicom/online/account/shield/ResultListener;)V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "cuPreGetToken"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/unicom/online/account/shield/UniAccountHelper;->cuPreGetToken(IILjava/lang/String;Lcom/unicom/online/account/shield/ResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/unicom/online/account/shield/UniAccountHelper;->init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/unicom/online/account/shield/UniAccountHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 4

    const/4 p3, 0x0

    const-string v0, "\u521d\u59cb\u5316\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    move-result-object v1

    invoke-static {}, Lcom/mobile/auth/z/v;->b()V

    const-string v2, "cuPreGetToken"

    invoke-static {v2}, Lcom/mobile/auth/z/v;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/z/v;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/mobile/auth/z/p;->a:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mobile/auth/z/u;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mobile/auth/z/u;->c(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/z/v;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/z/u;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/z/u;->e()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "backupIp="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/mobile/auth/z/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    const-string p1, "ali.wosms.cn"

    invoke-static {p1}, Lcom/mobile/auth/z/e;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/mobile/auth/z/e;->f()V

    invoke-static {}, Lcom/mobile/auth/z/e;->c()Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/mobile/auth/z/t;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    :goto_1
    sput-object p2, Lcom/mobile/auth/z/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/unicom/online/account/shield/UniAccountHelper;->setLogEnable(Z)V

    sget-object p1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/mobile/auth/z/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p3

    :goto_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public releaseNetwork()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    invoke-static {}, Lcom/mobile/auth/z/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setApiKey(Landroid/content/Context;Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/unicom/online/account/shield/UniAccountHelper;->setAppid(Landroid/content/Context;Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setAppid(Landroid/content/Context;Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unicom/online/account/shield/UniAccountHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mobile/auth/z/u;->b(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/mobile/auth/z/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobile/auth/z/v;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/z/u;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/mobile/auth/z/t;->b()V

    :goto_0
    sput-object p2, Lcom/mobile/auth/z/b;->a:Ljava/lang/String;

    sget-object p1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;

    return-object p1

    :cond_1
    :goto_1
    const-string p1, "\u521d\u59cb\u5316\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setCertFingerType(Ljava/lang/String;)Lcom/unicom/online/account/shield/UniAccountHelper;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SHA1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sm3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/mobile/auth/z/p;->b:Ljava/lang/String;

    sget-object p1, Lcom/unicom/online/account/shield/UniAccountHelper;->s_instance:Lcom/unicom/online/account/shield/UniAccountHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public setLogEnable(Z)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/mobile/auth/z/a;->a(Z)V

    invoke-static {}, Lcom/mobile/auth/z/e;->a()Lcom/mobile/auth/z/e;

    invoke-static {p1}, Lcom/mobile/auth/z/e;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
