.class public Lcom/alipay/sdk/m/y/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/m/y/k$f;,
        Lcom/alipay/sdk/m/y/k$e;,
        Lcom/alipay/sdk/m/y/k$d;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "sp_bind_failed"

.field public static final j:Ljava/lang/String; = "failed"

.field public static final k:Ljava/lang/String; = "scheme_failed"


# instance fields
.field public a:Landroid/app/Activity;

.field public volatile b:Lcom/alipay/android/app/IAlixPay;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Lcom/alipay/sdk/m/y/k$f;

.field public final f:Lcom/alipay/sdk/m/w/a;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/y/k$f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/m/y/k;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alipay/sdk/m/y/k;->g:Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alipay/sdk/m/y/k;->h:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    .line 146
    iput-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    .line 147
    iput-object p3, p0, Lcom/alipay/sdk/m/y/k;->e:Lcom/alipay/sdk/m/y/k$f;

    const-string p1, "mspl"

    const-string p2, "alipaySdk"

    .line 148
    invoke-static {p1, p2}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/sdk/m/y/k;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method public static synthetic a(Lcom/alipay/sdk/m/y/k;)Lcom/alipay/sdk/m/w/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/alipay/sdk/m/y/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/y/k;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)Z
    .locals 5

    const-string v0, "BSADetectFail"

    const-string v1, "biz"

    const/4 v2, 0x0

    .line 760
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    .line 761
    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 764
    invoke-static {p2, v1, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 768
    invoke-static {p2, v1, v0, p0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public static synthetic b(Lcom/alipay/sdk/m/y/k;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic c(Lcom/alipay/sdk/m/y/k;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/m/y/k;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lcom/alipay/sdk/m/y/k;)Lcom/alipay/sdk/m/y/k$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/m/y/k;->e:Lcom/alipay/sdk/m/y/k$f;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/m/w/a;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/m/w/a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 224
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    .line 225
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/alipay/sdk/m/y/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v0, "biz"

    const-string v7, "PgBindStarting"

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v0, v7, v8}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v7, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v7}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v7, "biz"

    const-string v8, "stSrv"

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "null"

    :goto_1
    invoke-static {v3, v7, v8, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "biz"

    const-string v7, "stSrv"

    const-string v8, "skipped"

    .line 248
    invoke-static {v3, v0, v7, v8}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v7, "biz"

    const-string v8, "TryStartServiceEx"

    .line 251
    invoke-static {v3, v7, v8, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :goto_2
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->c()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    const/16 v0, 0x41

    const-string v8, "biz"

    const-string v10, "bindFlg"

    const-string v11, "imp"

    .line 259
    invoke-static {v3, v8, v10, v11}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 262
    :goto_3
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/sdk/m/o/b;->b()Z

    move-result v8

    .line 263
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x22

    if-lt v10, v11, :cond_4

    if-eqz v8, :cond_4

    or-int/lit16 v0, v0, 0x200

    const-string v8, "biz"

    const-string v10, "bindFlg"

    const-string v11, "allow"

    .line 265
    invoke-static {v3, v8, v10, v11}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_4
    new-instance v8, Lcom/alipay/sdk/m/y/k$e;

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10}, Lcom/alipay/sdk/m/y/k$e;-><init>(Lcom/alipay/sdk/m/y/k;Lcom/alipay/sdk/m/y/k$a;)V

    .line 270
    iget-object v11, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4, v8, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    if-eqz v0, :cond_14

    .line 281
    iget-object v4, v1, Lcom/alipay/sdk/m/y/k;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 282
    :try_start_2
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    if-nez v0, :cond_5

    .line 284
    :try_start_3
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/sdk/m/o/b;->l()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_11

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v11, "biz"

    const-string v12, "BindWaitTimeoutEx"

    .line 286
    invoke-static {v3, v11, v12, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :cond_5
    :goto_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    .line 291
    iget-object v4, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    if-nez v4, :cond_7

    :try_start_5
    const-string v0, "biz"

    const-string v5, "ClientBindFailed"

    const-string v6, ""

    .line 296
    invoke-static {v3, v0, v5, v6}, Lcom/alipay/sdk/m/m/a;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alipaySdk"

    const-string v5, "bindServiceTimeout"

    .line 297
    iget-object v6, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v7, v1, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v0, v5, v6, v7}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V

    .line 300
    new-instance v5, Landroid/util/Pair;

    const-string v0, "failed"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 376
    :try_start_6
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 378
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 382
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v3, v4, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v4, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iput-object v10, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    .line 386
    iget-boolean v0, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 387
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 388
    iput-boolean v9, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    :cond_6
    return-object v5

    .line 389
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-string v0, "biz"

    const-string v13, "PgBinded"

    .line 390
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v0, v13, v14}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->e:Lcom/alipay/sdk/m/y/k$f;

    if-eqz v0, :cond_8

    .line 393
    invoke-interface {v0}, Lcom/alipay/sdk/m/y/k$f;->b()V

    .line 396
    :cond_8
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_9

    .line 397
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 398
    iput-boolean v7, v1, Lcom/alipay/sdk/m/y/k;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 404
    :cond_9
    :try_start_8
    invoke-interface {v4}, Lcom/alipay/android/app/IAlixPay;->getVersion()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v0

    .line 406
    :try_start_9
    invoke-static {v7}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 409
    :goto_6
    new-instance v7, Lcom/alipay/sdk/m/y/k$d;

    invoke-direct {v7, v1, v10}, Lcom/alipay/sdk/m/y/k$d;-><init>(Lcom/alipay/sdk/m/y/k;Lcom/alipay/sdk/m/y/k$a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    const/4 v13, 0x3

    if-lt v0, v13, :cond_a

    .line 412
    :try_start_a
    invoke-interface {v4, v7, v2, v10}, Lcom/alipay/android/app/IAlixPay;->registerCallback03(Lcom/alipay/android/app/IRemoteServiceCallback;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 414
    :cond_a
    invoke-interface {v4, v7}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 417
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-string v9, "biz"

    const-string v10, "PgBindPay"

    .line 418
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v16, v8

    :try_start_b
    const-string v8, ""

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v9, v10, v8}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    if-lt v0, v8, :cond_b

    const-string v8, "biz"

    const-string v9, "bind_pay"

    const/4 v10, 0x0

    .line 420
    invoke-interface {v4, v8, v9, v10}, Lcom/alipay/android/app/IAlixPay;->r03(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :cond_b
    const/4 v8, 0x2

    if-lt v0, v8, :cond_c

    .line 426
    :try_start_c
    invoke-static/range {p3 .. p3}, Lcom/alipay/sdk/m/w/a;->a(Lcom/alipay/sdk/m/w/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v8, "ts_bind"

    .line 427
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ts_bend"

    .line 428
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ts_pay"

    .line 429
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-interface {v4, v2, v0}, Lcom/alipay/android/app/IAlixPay;->pay02(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 432
    :cond_c
    invoke-interface {v4, v2}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_8
    move-object v5, v0

    move-object/from16 v6, v16

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    .line 437
    :try_start_d
    iget-object v5, v1, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/alipay/sdk/m/w/a;->j()Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "biz"

    const-string v6, "ClientBindException"

    .line 438
    invoke-static {v3, v5, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "alipaySdk"

    const-string v5, "bindServiceEx"

    .line 439
    iget-object v6, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v8, v1, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v0, v5, v6, v8}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V

    .line 440
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 442
    new-instance v5, Landroid/util/Pair;

    const-string v0, "failed"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 455
    :try_start_e
    invoke-interface {v4, v7}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 458
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 462
    :goto_9
    :try_start_f
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v6, v16

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    .line 464
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 468
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v3, v4, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v4, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 471
    iput-object v2, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    .line 472
    iget-boolean v0, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    .line 473
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 474
    iput-boolean v2, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    :cond_d
    return-object v5

    :cond_e
    move-object/from16 v6, v16

    .line 475
    :try_start_10
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object v5, v0

    .line 485
    :goto_b
    :try_start_11
    invoke-interface {v4, v7}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v4, v0

    .line 488
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 492
    :goto_c
    :try_start_12
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    .line 494
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 498
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v3, v4, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v4, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 501
    iput-object v2, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    .line 502
    iget-boolean v0, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    .line 503
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 504
    iput-boolean v2, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    .line 508
    :cond_f
    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_8
    move-exception v0

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object v6, v8

    goto :goto_e

    :catchall_b
    move-exception v0

    move-object v6, v8

    const/4 v7, 0x0

    :goto_e
    :try_start_13
    const-string v5, "biz"

    const-string v8, "ClientBindFailed"

    const-string v9, "in_bind"

    .line 509
    invoke-static {v3, v5, v8, v0, v9}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 510
    new-instance v5, Landroid/util/Pair;

    const-string v0, "failed"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    if-eqz v7, :cond_10

    .line 514
    :try_start_14
    invoke-interface {v4, v7}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object v4, v0

    .line 517
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 521
    :cond_10
    :goto_f
    :try_start_15
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    goto :goto_10

    :catchall_d
    move-exception v0

    .line 523
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 527
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v3, v4, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v4, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 530
    iput-object v2, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    .line 531
    iget-boolean v0, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    .line 532
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 533
    iput-boolean v2, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    :cond_11
    return-object v5

    :catchall_e
    move-exception v0

    move-object v5, v0

    if-eqz v7, :cond_12

    .line 534
    :try_start_16
    invoke-interface {v4, v7}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    move-object v4, v0

    .line 537
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 541
    :cond_12
    :goto_11
    :try_start_17
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    .line 543
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 547
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "biz"

    const-string v6, "PgBindEnd"

    invoke-static {v3, v4, v6, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v4, v3, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, v3, v2, v4}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 550
    iput-object v2, v1, Lcom/alipay/sdk/m/y/k;->b:Lcom/alipay/android/app/IAlixPay;

    .line 551
    iget-boolean v0, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    .line 552
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 553
    iput-boolean v2, v1, Lcom/alipay/sdk/m/y/k;->d:Z

    .line 555
    :cond_13
    throw v5

    :catchall_11
    move-exception v0

    .line 556
    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    throw v0

    .line 557
    :cond_14
    :try_start_19
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "bindService fail"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    :catchall_12
    move-exception v0

    const-string v2, "biz"

    const-string v4, "ClientBindServiceFailed"

    .line 560
    invoke-static {v3, v2, v4, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    iget-object v0, v1, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v2, v1, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v3, "alipaySdk"

    const-string v4, "bindServiceFail"

    invoke-static {v3, v4, v0, v2}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V

    .line 564
    new-instance v0, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "failed"

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 565
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x20

    .line 566
    invoke-static {v1}, Lcom/alipay/sdk/m/y/q;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 570
    iget-object v4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "biz"

    const-string v7, "BSAStart"

    invoke-static {v4, v6, v7, v5}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v4, v1}, Lcom/alipay/sdk/m/w/a$a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    .line 574
    new-instance v4, Lcom/alipay/sdk/m/y/k$a;

    invoke-direct {v4, p0, v0}, Lcom/alipay/sdk/m/y/k$a;-><init>(Lcom/alipay/sdk/m/y/k;Ljava/lang/Object;)V

    .line 587
    sget-object v5, Lcom/alipay/sdk/app/APayEntranceActivity;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :try_start_0
    iget-object v5, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v5}, Lcom/alipay/sdk/m/w/a;->a(Lcom/alipay/sdk/m/w/a;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "ts_intent"

    .line 595
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 598
    :try_start_1
    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v5, "biz"

    const-string v6, "BSALocEx"

    invoke-static {v3, v5, v6, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 601
    :goto_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    const-class v6, Lcom/alipay/sdk/app/APayEntranceActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "ap_order_info"

    .line 602
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "ap_target_packagename"

    .line 603
    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ap_session"

    .line 604
    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string p2, "ap_local_info"

    .line 606
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/sdk/m/y/k$b;

    invoke-direct {v1, p0, v4}, Lcom/alipay/sdk/m/y/k$b;-><init>(Lcom/alipay/sdk/m/y/k;Lcom/alipay/sdk/app/APayEntranceActivity$a;)V

    .line 623
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/o/b;->l()I

    move-result v2

    int-to-long v4, v2

    .line 624
    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    iget-object v2, v1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {p2, v1, p1, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/m/o/b;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/alipay/sdk/m/y/k$c;

    invoke-direct {p2, p0, v3, v0}, Lcom/alipay/sdk/m/y/k$c;-><init>(Lcom/alipay/sdk/m/y/k;Landroid/content/Intent;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    .line 673
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 674
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 676
    :cond_2
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string p2, "biz"

    const-string v1, "ErrActNull"

    const-string v2, ""

    invoke-static {p1, p2, v1, v2}, Lcom/alipay/sdk/m/m/a;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {p1}, Lcom/alipay/sdk/m/w/a;->b()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 680
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 690
    :cond_3
    :goto_1
    :try_start_3
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 691
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 692
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 694
    :try_start_5
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->h:Ljava/lang/String;

    const-string p2, "unknown"
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 698
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v0, p1}, Lcom/alipay/sdk/m/y/o;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "resultStatus"

    .line 699
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_4

    :try_start_7
    const-string v0, "null"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    .line 704
    :goto_2
    :try_start_8
    iget-object v1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v2, "biz"

    const-string v3, "BSAStatEx"

    invoke-static {v1, v2, v3, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v1, "biz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BSADone-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 712
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string p2, "biz"

    const-string v0, "BSAEmpty"

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scheme_failed"
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 714
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1

    :catchall_4
    move-exception p1

    .line 715
    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v0, "biz"

    const-string v1, "ErrActEx"

    invoke-static {p2, v0, v1, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    throw p1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    .line 752
    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v0, "biz"

    const-string v1, "BSAEx"

    invoke-static {p2, v0, v1, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v0, "alipaySdk"

    const-string v1, "startActivityEx"

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V

    const-string p1, "scheme_failed"

    goto :goto_4

    :catch_0
    move-exception p1

    .line 756
    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v0, "biz"

    const-string v1, "BSAWaiting"

    invoke-static {p2, v0, v1, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    sget-object p1, Lcom/alipay/sdk/m/l/c;->j:Lcom/alipay/sdk/m/l/c;

    invoke-virtual {p1}, Lcom/alipay/sdk/m/l/c;->c()I

    move-result p2

    invoke-virtual {p1}, Lcom/alipay/sdk/m/l/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p2, p1, v0}, Lcom/alipay/sdk/m/l/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_4
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p3, :cond_0

    .line 143
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const-string v0, "mspl"

    const-string v1, "pay payInvokeAct"

    .line 144
    invoke-static {v0, v1}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "biz"

    const-string v2, "PgWltVer"

    invoke-static {v0, v1, v2, p3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p3, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    iget-object v1, v0, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {p3, v0, p1, v1}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alipay/sdk/m/y/q$c;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 152
    iget v1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mspl"

    const-string v3, "pay bind or scheme"

    .line 155
    invoke-static {v2, v3}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/alipay/sdk/m/w/a;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    iget-object v0, v0, Lcom/alipay/sdk/m/w/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "auth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_1
    const-string v3, "failed"

    const-string v4, "biz"

    if-nez v0, :cond_3

    .line 164
    iget-object v5, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v5, p2}, Lcom/alipay/sdk/m/y/q;->d(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p4, :cond_2

    .line 166
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/m/o/b;->E()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    invoke-virtual {p0, p4}, Lcom/alipay/sdk/m/y/k;->a(Lcom/alipay/sdk/m/y/q$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    :cond_2
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v5, "BindSkipByL"

    invoke-static {p4, v4, v5}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 179
    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/m/o/b;->r()Z

    move-result v5

    if-nez v5, :cond_4

    .line 181
    invoke-virtual {p0, p4}, Lcom/alipay/sdk/m/y/k;->a(Lcom/alipay/sdk/m/y/q$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :catchall_1
    :cond_4
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/m/w/a;)Landroid/util/Pair;

    move-result-object p4

    .line 187
    iget-object v5, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 191
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alipay/sdk/m/o/b;->p()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 193
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v6, "BindRetry"

    invoke-static {p4, v4, v6}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/m/w/a;)Landroid/util/Pair;

    move-result-object p4

    .line 196
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, p4

    goto :goto_1

    :catchall_2
    move-exception p4

    .line 199
    iget-object v6, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v7, "BindRetryEx"

    invoke-static {v6, v4, v7, p4}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :cond_5
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay bind result: "

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    iget-object v7, v6, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {p4, v6, p1, v7}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 210
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p4

    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {p4, v3}, Lcom/alipay/sdk/m/o/b;->b(Lcom/alipay/sdk/m/w/a;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "save SP_BIND_FAILED: true"

    .line 211
    invoke-static {v2, p4}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {p4}, Lcom/alipay/sdk/m/w/a;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sp_bind_failed"

    const-string v6, "true"

    invoke-static {p4, v2, v3, v6}, Lcom/alipay/sdk/m/y/m;->b(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p4, "com.eg.android.AlipayGphone"

    .line 214
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 216
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BSPNotStartByAlipay"

    invoke-static {p1, v4, p3, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_7
    const/16 p4, 0x1cc

    if-lt v1, p4, :cond_8

    if-nez v0, :cond_8

    .line 220
    iget-object p4, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    if-eqz p4, :cond_8

    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    .line 221
    invoke-static {p2, p4, v0}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v5
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/o/b;->m()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/sdk/m/o/b;->g:Z

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 15
    :cond_0
    sget-object v2, Lcom/alipay/sdk/m/l/a;->d:Ljava/util/List;

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    iget-object v4, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v2}, Lcom/alipay/sdk/m/y/q;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/m/y/q$c;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "failed"

    if-eqz v2, :cond_8

    .line 21
    :try_start_1
    iget-object v4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {v2, v4}, Lcom/alipay/sdk/m/y/q$c;->a(Lcom/alipay/sdk/m/w/a;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/alipay/sdk/m/y/q$c;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 26
    :cond_2
    iget-object v4, v2, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lcom/alipay/sdk/m/y/q;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 31
    :cond_3
    iget-object v3, v2, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_5

    const-string v4, "com.eg.android.AlipayGphone"

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 34
    :cond_4
    iget-object v3, v2, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 35
    :cond_5
    :goto_0
    invoke-static {}, Lcom/alipay/sdk/m/y/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_1
    iget-object v3, v2, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_6

    move-object v1, v3

    .line 46
    :cond_6
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/m/o/b;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v4, :cond_9

    .line 49
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 51
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 52
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 53
    :catch_0
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v1, :cond_7

    .line 56
    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v7, v6, :cond_7

    .line 58
    :try_start_3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 60
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    .line 61
    invoke-virtual {v6, v7, v5}, Lcom/alipay/sdk/m/o/b;->a(Landroid/content/Context;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/sdk/m/y/k;->g:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_4

    :catchall_0
    nop

    goto :goto_4

    :catchall_1
    move-exception v3

    goto :goto_3

    :cond_8
    :goto_2
    return-object v3

    :catchall_2
    move-exception v3

    move-object v2, v1

    .line 114
    :goto_3
    iget-object v4, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v5, "biz"

    const-string v6, "CheckClientSignEx"

    invoke-static {v4, v5, v6, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v3}, Lcom/alipay/sdk/m/y/q;->b(Lcom/alipay/sdk/m/w/a;)Z

    move-result v3

    if-nez p2, :cond_a

    .line 118
    iget-boolean p2, p0, Lcom/alipay/sdk/m/y/k;->g:Z

    if-eqz p2, :cond_b

    :cond_a
    if-nez v3, :cond_b

    iget-object p2, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-static {v0, p2, v3}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 120
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_b
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/alipay/sdk/m/y/q$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 758
    iput-object v0, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    .line 759
    iput-object v0, p0, Lcom/alipay/sdk/m/y/k;->e:Lcom/alipay/sdk/m/y/k$f;

    return-void
.end method

.method public final a(Lcom/alipay/sdk/m/y/q$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object p1, p1, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/m/o/b;->b(Lcom/alipay/sdk/m/w/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/m/w/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_bind_failed"

    const-string v3, "false"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/sdk/m/y/m;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SP_BIND_FAILED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mspl"

    invoke-static {v2, v1}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 134
    :cond_3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alipay.android.app.TransProcessPayActivity"

    .line 136
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :try_start_0
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 140
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k;->f:Lcom/alipay/sdk/m/w/a;

    const-string v1, "biz"

    const-string v2, "StartLaunchAppTransEx"

    invoke-static {v0, v1, v2, p1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/m/o/b;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method
