.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayTask$e;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;

.field public static k:J


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/alipay/sdk/m/c0/a;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/PayTask$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/m/y/k;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wappaygw.alipay.com/service/rest.htm"

    .line 2
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/service/rest.htm"

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/home/exterfaceAssign.htm"

    .line 4
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/cashier/mobilepay.htm"

    .line 5
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    const-string v0, "mclient.alipay.hk"

    .line 7
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    const-string v0, "render.alipay.hk"

    .line 8
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->h:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 16
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/m/w/b;->a(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/alipay/sdk/m/c0/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/sdk/R$string;->alipay_standard_sdk_loading_go_pay:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/m/c0/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/m/c0/a;

    return-void
.end method

.method public static synthetic a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "sc"

    const-string v1, ""

    .line 259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 260
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :try_start_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v1

    .line 263
    :goto_0
    invoke-static {p0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    move-object p0, v1

    .line 266
    :goto_1
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "appkey"

    const-string v5, "2014052600006128"

    .line 267
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "ty"

    const-string v5, "and_lite"

    .line 268
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sv"

    const-string v5, "h.a.3.8.42"

    .line 269
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "an"

    .line 270
    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "av"

    .line 271
    invoke-virtual {v3, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdk_start_time"

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "h5tonative"

    .line 274
    invoke-virtual {v3, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 278
    invoke-static {p0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/m/w/a;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/sdk/m/o/b$b;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 431
    invoke-static {p0, p4, p2}, Lcom/alipay/sdk/m/y/q;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/m/y/q$c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {p2, p0}, Lcom/alipay/sdk/m/y/q$c;->a(Lcom/alipay/sdk/m/w/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/alipay/sdk/m/y/q$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/alipay/sdk/m/y/q$c;->a:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "hk.alipay.wallet"

    .line 433
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "mspl"

    const-string p3, "PayTask not_login"

    .line 440
    invoke-static {p2, p3}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 443
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 444
    sget-object v0, Lcom/alipay/sdk/app/PayResultActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/alipay/sdk/app/PayResultActivity;

    invoke-direct {p3, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orderSuffix"

    .line 448
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "externalPkgName"

    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "phonecashier.pay.hash"

    .line 450
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-static {p0, p3}, Lcom/alipay/sdk/m/w/a$a;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Intent;)V

    .line 452
    invoke-virtual {p4, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string p1, "mspl"

    const-string p3, "PayTask wait"

    .line 456
    invoke-static {p1, p3}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    sget-object p0, Lcom/alipay/sdk/app/PayResultActivity$b;->b:Ljava/lang/String;

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PayTask ret: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mspl"

    invoke-static {p2, p1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "mspl"

    const-string p2, "PayTask interrupted"

    .line 466
    invoke-static {p1, p2}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 469
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object p3
.end method

.method public static final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 282
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static synthetic a(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized fetchSdkConfig(Landroid/content/Context;)Z
    .locals 9

    const-class v0, Lcom/alipay/sdk/app/PayTask;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/sdk/m/w/b;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3
    sget-wide v4, Lcom/alipay/sdk/app/PayTask;->k:J

    sub-long v4, v2, v4

    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/sdk/m/o/b;->e()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    monitor-exit v0

    return v1

    .line 6
    :cond_0
    :try_start_1
    sput-wide v2, Lcom/alipay/sdk/app/PayTask;->k:J

    .line 7
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-static {}, Lcom/alipay/sdk/m/w/a;->f()Lcom/alipay/sdk/m/w/a;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, p0, v1, v4}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    invoke-static {p0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/alipay/sdk/m/y/k$f;
    .locals 1

    .line 365
    new-instance v0, Lcom/alipay/sdk/app/PayTask$c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$c;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-object v0
.end method

.method public final a(Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/v/b;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 748
    invoke-static {v0}, Lcom/alipay/sdk/m/l/b;->a(Z)V

    const/4 v1, 0x0

    .line 749
    invoke-static {v1}, Lcom/alipay/sdk/m/l/b;->a(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Lcom/alipay/sdk/m/v/b;->c()[Ljava/lang/String;

    move-result-object p2

    .line 751
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 753
    aget-object v0, p2, v0

    const-string v3, "url"

    .line 754
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    .line 757
    aget-object p2, p2, v0

    const-string v0, "cookie"

    .line 758
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 761
    invoke-static {p1, v1}, Lcom/alipay/sdk/m/w/a$a;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Intent;)V

    .line 762
    iget-object p1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 764
    sget-object p1, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 766
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->d()Ljava/lang/String;

    move-result-object p1

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 775
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 776
    :try_start_2
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 777
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 779
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public final a(Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/v/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 667
    invoke-virtual {p2}, Lcom/alipay/sdk/m/v/b;->c()[Ljava/lang/String;

    move-result-object p2

    .line 671
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/alipay/sdk/m/p/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/alipay/sdk/m/y/q;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "url"

    const/4 v4, 0x0

    .line 675
    aget-object v5, p2, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "title"

    const/4 v5, 0x1

    .line 676
    aget-object v6, p2, v5

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "version"

    const-string v6, "v2"

    .line 677
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "method"

    const-string v6, "method"

    const-string v7, "POST"

    .line 678
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 686
    invoke-static {v4}, Lcom/alipay/sdk/m/l/b;->a(Z)V

    const/4 p2, 0x0

    .line 687
    invoke-static {p2}, Lcom/alipay/sdk/m/l/b;->a(Ljava/lang/String;)V

    .line 688
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/w/a$a;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Intent;)V

    .line 689
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 691
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 694
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->c()Z

    move-result v1

    .line 695
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->d()Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-static {v4}, Lcom/alipay/sdk/m/l/b;->a(Z)V

    .line 697
    invoke-static {p2}, Lcom/alipay/sdk/m/l/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 702
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string p2, ""

    if-eqz v1, :cond_1

    .line 708
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/sdk/m/p/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 709
    invoke-static {v0}, Lcom/alipay/sdk/m/y/q;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/m/v/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 710
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/sdk/m/v/b;

    .line 712
    invoke-virtual {v6}, Lcom/alipay/sdk/m/v/b;->a()Lcom/alipay/sdk/m/v/a;

    move-result-object v7

    sget-object v8, Lcom/alipay/sdk/m/v/a;->f:Lcom/alipay/sdk/m/v/a;

    if-ne v7, v8, :cond_0

    .line 713
    invoke-virtual {v6}, Lcom/alipay/sdk/m/v/b;->c()[Ljava/lang/String;

    move-result-object v0

    .line 714
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v4, v0, v4

    aget-object v0, v0, v2

    .line 715
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/y/q;->e(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v1, v4, v0}, Lcom/alipay/sdk/m/l/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 722
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const-string v1, "biz"

    const-string v2, "H5PayDataAnalysisError"

    .line 723
    invoke-static {p1, v1, v2, v0, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 729
    :cond_1
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    :try_start_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, ""

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/sdk/m/l/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "biz"

    const-string v1, "H5PayDataAnalysisError"

    invoke-static {p1, v0, v1, p2, p3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 p1, 0x1f40

    const-string p2, ""

    const-string p3, ""

    .line 737
    invoke-static {p1, p2, p3}, Lcom/alipay/sdk/m/l/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_2
    return-object p2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 738
    :try_start_5
    invoke-static {p1}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 739
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 741
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p3

    .line 742
    invoke-static {p3}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 744
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "biz"

    const-string v1, "H5PayDataAnalysisError"

    .line 745
    invoke-static {p1, v0, v1, p3, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "biz"

    .line 470
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->showLoading()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "h5CashierRequest"

    .line 475
    invoke-static {p1, v0, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/w/a;)V

    .line 479
    new-instance v2, Lcom/alipay/sdk/m/u/d;

    invoke-direct {v2}, Lcom/alipay/sdk/m/u/d;-><init>()V

    .line 480
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/alipay/sdk/m/y/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, p2, v4}, Lcom/alipay/sdk/m/t/e;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/sdk/m/t/b;

    move-result-object v2

    goto :goto_0

    .line 482
    :cond_0
    new-instance v2, Lcom/alipay/sdk/m/u/g;

    invoke-direct {v2}, Lcom/alipay/sdk/m/u/g;-><init>()V

    .line 483
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p2}, Lcom/alipay/sdk/m/t/e;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/m/t/b;

    move-result-object v2

    .line 485
    :goto_0
    invoke-virtual {v2}, Lcom/alipay/sdk/m/t/b;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "h5CashierResponse"

    .line 487
    invoke-static {p1, v0, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "end_code"

    .line 489
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "onload"

    const-string v6, "form"

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "data"

    .line 493
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 495
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 497
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_2

    .line 502
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 506
    :cond_2
    invoke-static {v4}, Lcom/alipay/sdk/m/v/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 508
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 509
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/sdk/m/v/b;

    invoke-virtual {v7}, Lcom/alipay/sdk/m/v/b;->a()Lcom/alipay/sdk/m/v/a;

    move-result-object v7

    sget-object v8, Lcom/alipay/sdk/m/v/a;->d:Lcom/alipay/sdk/m/v/a;

    if-ne v7, v8, :cond_3

    .line 510
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/sdk/m/v/b;

    invoke-static {v7}, Lcom/alipay/sdk/m/v/b;->a(Lcom/alipay/sdk/m/v/b;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 514
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;)V

    .line 517
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 520
    iget-object v6, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v7, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v6, p1, p2, v7}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 523
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/sdk/m/v/b;

    .line 524
    invoke-virtual {v6}, Lcom/alipay/sdk/m/v/b;->a()Lcom/alipay/sdk/m/v/a;

    move-result-object v7

    sget-object v8, Lcom/alipay/sdk/m/v/a;->c:Lcom/alipay/sdk/m/v/a;

    if-ne v7, v8, :cond_5

    .line 525
    invoke-virtual {p0, p1, v6}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/v/b;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 544
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 545
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lcom/alipay/sdk/m/v/b;->a()Lcom/alipay/sdk/m/v/a;

    move-result-object v7

    sget-object v8, Lcom/alipay/sdk/m/v/a;->e:Lcom/alipay/sdk/m/v/a;

    if-ne v7, v8, :cond_6

    .line 546
    invoke-virtual {p0, p1, v6, v3}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/v/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 563
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 564
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 565
    invoke-virtual {v6}, Lcom/alipay/sdk/m/v/b;->a()Lcom/alipay/sdk/m/v/a;

    move-result-object v6

    sget-object v7, Lcom/alipay/sdk/m/v/a;->h:Lcom/alipay/sdk/m/v/a;

    if-ne v6, v7, :cond_7

    .line 566
    invoke-virtual {p0, p1, v2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 580
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 581
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 584
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    .line 585
    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const-string v3, "H5PayDataAnalysisError"

    .line 586
    invoke-static {p1, v0, v3, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 592
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 593
    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/sdk/m/l/c;->f:Lcom/alipay/sdk/m/l/c;

    invoke-virtual {v1}, Lcom/alipay/sdk/m/l/c;->c()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/m/l/c;->a(I)Lcom/alipay/sdk/m/l/c;

    move-result-object v1

    const-string v2, "net"

    .line 594
    invoke-static {p1, v2, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 600
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 603
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-nez v1, :cond_9

    .line 607
    sget-object p1, Lcom/alipay/sdk/m/l/c;->d:Lcom/alipay/sdk/m/l/c;

    invoke-virtual {p1}, Lcom/alipay/sdk/m/l/c;->c()I

    move-result p1

    invoke-static {p1}, Lcom/alipay/sdk/m/l/c;->a(I)Lcom/alipay/sdk/m/l/c;

    move-result-object v1

    .line 609
    :cond_9
    invoke-virtual {v1}, Lcom/alipay/sdk/m/l/c;->c()I

    move-result p1

    invoke-virtual {v1}, Lcom/alipay/sdk/m/l/c;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/m/l/b;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception v0

    .line 610
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 613
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->showLoading()V

    .line 9
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "false degradeRegisterApp="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/m/o/b;->c(Lcom/alipay/sdk/m/w/a;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fetchConfigWhenRegisterApp="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/m/o/b;->f(Lcom/alipay/sdk/m/w/a;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " grayLogPrintPerformance="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/m/o/b;->h(Lcom/alipay/sdk/m/w/a;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "biz"

    const-string v3, "isDebugApp"

    .line 13
    invoke-static {p1, v1, v3, p3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "payment_inst="

    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const-string p3, "payment_inst="

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0xd

    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const/16 v3, 0x26

    .line 39
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 41
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v3, "\""

    const-string v4, ""

    .line 43
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "alipay"

    const-string v4, ""

    .line 45
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 47
    invoke-static {p3}, Lcom/alipay/sdk/m/l/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, ""

    .line 50
    invoke-static {p3}, Lcom/alipay/sdk/m/l/a;->a(Ljava/lang/String;)V

    :goto_0
    const-string p3, "service=alipay.acquire.mr.ord.createandpay"

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 55
    sput-boolean p3, Lcom/alipay/sdk/m/n/a;->y:Z

    .line 58
    :cond_3
    sget-boolean p3, Lcom/alipay/sdk/m/n/a;->y:Z

    if-eqz p3, :cond_5

    const-string p3, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x35

    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    const-string p3, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x34

    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    :goto_1
    const-string p3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v3, 0x3

    :try_start_1
    const-string v4, "mspl"

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay prepared: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Lcom/alipay/sdk/m/w/a;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "mspl"

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay raw result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4, p3}, Lcom/alipay/sdk/m/y/l;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "externalSdkData"

    .line 91
    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v5, :cond_6

    .line 94
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "preheatUserToken"

    .line 95
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 97
    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v6, "sp_preheatUserToken"

    invoke-static {p1, v5, v6, v4}, Lcom/alipay/sdk/m/y/m;->b(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 100
    :try_start_4
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 104
    :cond_6
    :goto_2
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->a()V

    .line 106
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->d()V

    .line 109
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "biz"

    const-string v5, "PgReturn"

    invoke-static {p1, v4, v5, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultStatus"

    .line 113
    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "memo"

    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "biz"

    const-string v5, "PgReturnV"

    .line 114
    invoke-static {p1, v4, v5, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/o/b;->u()Z

    move-result v2

    if-nez v2, :cond_8

    .line 120
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, p1, v4, v1, v3}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V

    .line 123
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;)V

    .line 126
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->b(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object p1, Lcom/alipay/sdk/app/AlipayApi;->h:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 129
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    const-string p2, "isHitPreHeatApp"

    .line 131
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception p2

    .line 133
    :try_start_6
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    goto/16 :goto_4

    :catchall_2
    move-exception v4

    .line 136
    :try_start_7
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p3

    .line 137
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 139
    :try_start_8
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "externalSdkData"

    .line 140
    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-nez v5, :cond_9

    .line 143
    :try_start_9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "preheatUserToken"

    .line 144
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 146
    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v6, "sp_preheatUserToken"

    invoke-static {p1, v5, v6, v4}, Lcom/alipay/sdk/m/y/m;->b(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    .line 149
    :try_start_a
    invoke-static {v4}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 153
    :cond_9
    :goto_3
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->a()V

    .line 155
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->d()V

    .line 158
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "biz"

    const-string v5, "PgReturn"

    invoke-static {p1, v4, v5, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultStatus"

    .line 162
    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "memo"

    invoke-static {p3, v4}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "biz"

    const-string v5, "PgReturnV"

    .line 163
    invoke-static {p1, v4, v5, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/o/b;->u()Z

    move-result v2

    if-nez v2, :cond_b

    .line 169
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, p1, v4, v1, v3}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V

    .line 172
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 173
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;)V

    .line 175
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {v1, p1, p2, v2}, Lcom/alipay/sdk/m/m/a;->b(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object p1, Lcom/alipay/sdk/app/AlipayApi;->h:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 178
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    const-string p2, "isHitPreHeatApp"

    .line 180
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    .line 182
    :try_start_c
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 135
    :goto_4
    sget-object p2, Lcom/alipay/sdk/app/AlipayApi;->h:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    invoke-virtual {p2}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;->onPayEnd(Lorg/json/JSONObject;)V

    .line 188
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pay returning: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mspl"

    invoke-static {p2, p1}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    monitor-exit p0

    return-object p3

    :catchall_5
    move-exception v4

    .line 189
    :try_start_d
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "externalSdkData"

    .line 190
    invoke-static {p3, v5}, Lcom/alipay/sdk/m/y/o;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-nez v6, :cond_d

    .line 193
    :try_start_e
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "preheatUserToken"

    .line 194
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 196
    iget-object v6, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v7, "sp_preheatUserToken"

    invoke-static {p1, v6, v7, v5}, Lcom/alipay/sdk/m/y/m;->b(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v5

    .line 199
    :try_start_f
    invoke-static {v5}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 203
    :cond_d
    :goto_5
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alipay/sdk/m/o/b;->i(Lcom/alipay/sdk/m/w/a;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 204
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->a()V

    .line 205
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/m/r/b;->d()V

    .line 208
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "biz"

    const-string v6, "PgReturn"

    invoke-static {p1, v5, v6, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultStatus"

    .line 212
    invoke-static {p3, v5}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "memo"

    invoke-static {p3, v5}, Lcom/alipay/sdk/m/y/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "biz"

    const-string v5, "PgReturnV"

    .line 213
    invoke-static {p1, v2, v5, p3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alipay/sdk/m/o/b;->u()Z

    move-result p3

    if-nez p3, :cond_f

    .line 219
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p3

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3, p1, v2, v1, v3}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V

    .line 222
    :cond_f
    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->dismissLoading()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;)V

    .line 225
    iget-object p3, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p1, Lcom/alipay/sdk/m/w/a;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2, v1}, Lcom/alipay/sdk/m/m/a;->b(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object p1, Lcom/alipay/sdk/app/AlipayApi;->h:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 228
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    const-string p2, "isHitPreHeatApp"

    .line 230
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p2

    .line 232
    :try_start_11
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 234
    :goto_6
    sget-object p2, Lcom/alipay/sdk/app/AlipayApi;->h:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    invoke-virtual {p2}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;->onPayEnd(Lorg/json/JSONObject;)V

    .line 236
    :cond_10
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const-string v0, "mspl"

    const-string v1, "processLocalWebPay"

    .line 615
    invoke-static {v0, v1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 616
    invoke-static {v0}, Lcom/alipay/sdk/m/l/b;->a(Z)V

    const/4 v0, 0x0

    .line 617
    invoke-static {v0}, Lcom/alipay/sdk/m/l/b;->a(Ljava/lang/String;)V

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v1, "data"

    .line 620
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "local_web_pay_data"

    .line 621
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "h5_cashier_url"

    .line 622
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h5_local_data"

    .line 623
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "sha256"

    const-string v4, ""

    .line 625
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "source_url"

    const-string v5, ""

    .line 626
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "update_strategy"

    .line 627
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    new-instance v5, Lcom/alipay/sdk/m/r/a;

    invoke-direct {v5, v3, v4, v1}, Lcom/alipay/sdk/m/r/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/alipay/sdk/m/r/b;->e()Lcom/alipay/sdk/m/r/b;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/a;)V

    const-string v3, "biz"

    const-string v4, "h5LocalDataUpdateStrategy"

    .line 630
    invoke-static {p1, v3, v4, v1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "version"

    const-string v2, "v1"

    .line 633
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cashierBizData"

    .line 634
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "backisexit"

    .line 638
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/sdk/m/o/b;->e(Lcom/alipay/sdk/m/w/a;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/w/a$a;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Intent;)V

    .line 647
    iget-object p1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 648
    sget-object p2, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Object;

    monitor-enter p2

    .line 650
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->d()Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 659
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    :try_start_3
    invoke-static {p1}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 661
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 663
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 664
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const-string v0, "biz"

    const-string v1, "processLocalWebPay"

    .line 665
    invoke-static {p1, v0, v1, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/sdk/m/w/a;)Ljava/lang/String;
    .locals 8

    .line 366
    invoke-virtual {p2, p1}, Lcom/alipay/sdk/m/w/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payResult orderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mspl"

    invoke-static {v1, v0}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "paymethod=\"expressGateway\""

    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->m()Ljava/util/List;

    move-result-object v0

    .line 377
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alipay/sdk/m/o/b;->g:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 380
    :cond_1
    sget-object v0, Lcom/alipay/sdk/m/l/a;->d:Ljava/util/List;

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {p2, v2, v0, v3}, Lcom/alipay/sdk/m/y/q;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/util/List;Z)Z

    move-result v2

    const-string v4, "biz"

    if-eqz v2, :cond_8

    .line 386
    new-instance v2, Lcom/alipay/sdk/m/y/k;

    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/sdk/app/PayTask;->a()Lcom/alipay/sdk/m/y/k$f;

    move-result-object v6

    invoke-direct {v2, v5, p2, v6}, Lcom/alipay/sdk/m/y/k;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/m/w/a;Lcom/alipay/sdk/m/y/k$f;)V

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay inner started: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->c(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 389
    invoke-virtual {v2, p1, v5}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resultStatus={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/alipay/sdk/m/l/c;->g:Lcom/alipay/sdk/m/l/c;

    invoke-virtual {v7}, Lcom/alipay/sdk/m/l/c;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v6, "alipaySdk"

    const-string v7, "startActivityEx"

    invoke-static {v6, v7, v5, p2}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V

    .line 393
    invoke-virtual {v2, p1, v3}, Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 395
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pay inner raw result: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Lcom/alipay/sdk/m/y/k;->a()V

    .line 397
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/m/o/b;->A()Z

    move-result v1

    const-string v2, "failed"

    .line 398
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "scheme_failed"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_4

    .line 399
    invoke-virtual {p2}, Lcom/alipay/sdk/m/w/a;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 404
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "{\"isLogin\":\"false\"}"

    .line 407
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "LogHkLoginByIntent"

    .line 410
    invoke-static {p2, v4, v1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {p2, p1, v0, v5, v1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v5

    :cond_7
    :goto_0
    const-string v0, "LogBindCalledH5"

    .line 412
    invoke-static {p2, v4, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "LogCalledH5"

    .line 429
    invoke-static {p2, v4, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, p2, p1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "={"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "resultStatus"

    .line 306
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "9000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "result"

    .line 309
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/sdk/app/PayTask$e;

    const-string v2, "callBackUrl"

    .line 315
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 327
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0xf

    if-le p2, v2, :cond_1

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/String;

    const-string v2, "&callBackUrl=\""

    const-string v3, "\""

    .line 329
    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, p2, v4

    const-string v2, "&call_back_url=\""

    .line 330
    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, p2, v4

    const-string v2, "&return_url=\""

    .line 331
    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, p2, v4

    const-string v2, "&return_url="

    const-string v4, "&"

    .line 332
    invoke-static {v2, v4, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "utf-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, p2, v6

    const-string v2, "&callBackUrl="

    .line 333
    invoke-static {v2, v4, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, p2, v4

    const-string v2, "call_back_url=\""

    .line 334
    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, p2, v2

    .line 335
    invoke-static {p2}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p1}, Lcom/alipay/sdk/app/PayTask$e;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/sdk/app/PayTask$e;->c()Ljava/lang/String;

    move-result-object p2

    .line 352
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 359
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/m/o/b;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/alipay/sdk/m/w/a;)V
    .locals 5

    .line 237
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/m/o/b;->c(Lcom/alipay/sdk/m/w/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindRegisterAppService registerAppServiceConnectSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mspl"

    invoke-static {v2, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "biz"

    const-string v2, "registerApp"

    const-string v3, "unbindServiceStart"

    .line 241
    invoke-static {p1, v0, v2, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v3, Lcom/alipay/sdk/app/AlipayApi;->e:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/sdk/app/AlipayApi;->g:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 245
    :try_start_0
    sget-object v3, Lcom/alipay/sdk/app/AlipayApi;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sget-object v4, Lcom/alipay/sdk/app/AlipayApi;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v3, "unbindServiceEnd"

    .line 246
    invoke-static {p1, v0, v2, v3}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const-string v2, "wr"

    const-string v3, "registerAppUnbindServiceError"

    .line 249
    invoke-static {p1, v2, v3, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_1
    :goto_0
    sput-object v1, Lcom/alipay/sdk/app/AlipayApi;->g:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 254
    sput-boolean p1, Lcom/alipay/sdk/app/AlipayApi;->f:Z

    .line 255
    sput-object v1, Lcom/alipay/sdk/app/AlipayApi;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public final varargs a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 289
    array-length v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p6, v2

    .line 290
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p5, ""

    .line 297
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_2

    if-eqz p2, :cond_4

    return v1

    :cond_2
    const-string p2, "\""

    const-string p6, "=\""

    if-eqz p1, :cond_3

    const-string p1, "&"

    .line 303
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 305
    :cond_3
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V
    .locals 4

    const-string v0, "mspl"

    const-string v1, "requestPreheatPay"

    .line 9
    invoke-static {v0, v1}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/alipay/sdk/m/w/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "biz"

    const-string v3, "requestPreheatStart"

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    new-instance v1, Lcom/alipay/sdk/m/u/h;

    invoke-direct {v1}, Lcom/alipay/sdk/m/u/h;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, p1, v3, p2}, Lcom/alipay/sdk/m/t/e;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/m/t/b;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/alipay/sdk/m/t/b;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPreheatPay respData:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/sdk/m/y/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 17
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    const-string v0, "requestPreheatError"

    .line 18
    invoke-static {p1, v2, v0, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/sdk/m/w/a;->g()Ljava/lang/String;

    move-result-object p2

    const-string v0, "requestPreheatEnd"

    invoke-static {p1, v2, v0, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/alipay/sdk/m/w/a;Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "tid"

    .line 1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_key"

    .line 2
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/alipay/sdk/m/w/b;->c()Lcom/alipay/sdk/m/w/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/m/w/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/m/x/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/m/x/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0, p2}, Lcom/alipay/sdk/m/x/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "biz"

    const-string v1, "ParserTidClientKeyEx"

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/alipay/sdk/m/w/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/m/o/b;->j(Lcom/alipay/sdk/m/w/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/app/PayTask$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/sdk/app/PayTask$d;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/m/c0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/m/c0/a;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/m/c0/a;

    :cond_0
    return-void
.end method

.method public declared-synchronized fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v1, "https://wappaygw.alipay.com/service/rest.htm"

    .line 7
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://wappaygw.alipay.com/service/rest.htm"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "(http|https)://wappaygw.alipay.com/service/rest.htm\\?"

    const-string v2, ""

    .line 8
    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {v1}, Lcom/alipay/sdk/m/y/q;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    .line 12
    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 15
    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "https://mclient.alipay.com/service/rest.htm"

    .line 18
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://mclient.alipay.com/service/rest.htm"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "(http|https)://mclient.alipay.com/service/rest.htm\\?"

    const-string v2, ""

    .line 19
    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    invoke-static {v1}, Lcom/alipay/sdk/m/y/q;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    .line 23
    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 26
    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm"

    .line 33
    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http://mclient.alipay.com/home/exterfaceAssign.htm"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string v1, "alipay.wap.create.direct.pay.by.user"

    .line 34
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "create_forex_trade_wap"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "(http|https)://mclient.alipay.com/home/exterfaceAssign.htm\\?"

    const-string v2, ""

    .line 35
    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "url"

    .line 39
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bizcontext"

    .line 40
    iget-object v2, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new_external_info=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_3
    const-string v1, "^(http|https)://(maliprod\\.alipay\\.com/w/trade_pay\\.do.?|mali\\.alipay\\.com/w/trade_pay\\.do.?|mclient\\.alipay\\.com/w/trade_pay\\.do.?)"

    .line 45
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_b

    const-string v1, "?"

    const-string v2, ""

    .line 57
    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/m/y/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 59
    invoke-static {v0}, Lcom/alipay/sdk/m/y/q;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 60
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "trade_no"

    const-string v1, "trade_no"

    const-string v5, "alipay_trade_no"

    .line 62
    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v5, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "pay_phase_id"

    const-string v1, "payPhaseId"

    const-string v5, "pay_phase_id"

    const-string v6, "out_relation_id"

    .line 65
    filled-new-array {v1, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v5, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v1, "&biz_sub_type=\"TRADE\""

    .line 67
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&biz_type=\"trade\""

    .line 68
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_name"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "cid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "ali1688"

    goto :goto_0

    .line 73
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "sid"

    .line 74
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "s_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string v1, "tb"

    .line 77
    :cond_9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&app_name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, "extern_token"

    const-string v1, "extern_token"

    const-string v5, "cid"

    const-string v6, "sid"

    const-string v7, "s_id"

    .line 79
    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v5, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    monitor-exit p0

    return-object v0

    :cond_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    const-string v4, "appenv"

    const-string v1, "appenv"

    .line 83
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v5, v11

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v1, "&pay_channel_id=\"alipay_sdk\""

    .line 84
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Lcom/alipay/sdk/app/PayTask$e;

    invoke-direct {v1, v8, v10}, Lcom/alipay/sdk/app/PayTask$e;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/PayTask$a;)V

    const-string v2, "return_url"

    .line 86
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/app/PayTask$e;->b(Ljava/lang/String;)V

    const-string v2, "show_url"

    .line 87
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/app/PayTask$e;->c(Ljava/lang/String;)V

    const-string v2, "pay_order_id"

    .line 88
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask$e;->a(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&bizcontext=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 90
    invoke-static {v2}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, v8, Lcom/alipay/sdk/app/PayTask;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_5
    const-string v0, "https://mclient.alipay.com/cashier/mobilepay.htm"

    .line 99
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    const-string v0, "http://mclient.alipay.com/cashier/mobilepay.htm"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 100
    invoke-static {}, Lcom/alipay/sdk/app/EnvUtils;->isSandBox()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "mobileclientgw.alipaydev.com/cashier/mobilepay.htm"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_4

    :cond_c
    const-string v0, "https://mclient.alipay.hk"

    .line 110
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "http://mclient.alipay.hk"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "https://render.alipay.hk"

    .line 111
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "http://render.alipay.hk"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const-string v0, "qrCode="

    .line 112
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/sdk/m/o/b;->d(Lcom/alipay/sdk/m/w/a;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "url"

    .line 116
    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bizcontext"

    .line 117
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "new_external_info==%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    :cond_e
    :try_start_6
    iget-object v0, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->fetchSdkConfig(Landroid/content/Context;)Z

    .line 128
    :cond_f
    invoke-static {}, Lcom/alipay/sdk/m/o/b;->i()Lcom/alipay/sdk/m/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/m/o/b;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "^https?://(maliprod\\.alipay\\.com|mali\\.alipay\\.com)/batch_payment\\.do\\?"

    .line 129
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 133
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "return_url"

    .line 135
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_url"

    .line 136
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pay_order_id"

    .line 137
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const-string v9, "trade_nos"

    .line 140
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    const-string v9, "alipay_trade_no"

    .line 141
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    .line 142
    invoke-static {v7}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/String;

    const-string v12, "payPhaseId"

    .line 147
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    const-string v12, "pay_phase_id"

    .line 148
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    const-string v12, "out_relation_id"

    .line 149
    invoke-virtual {v0, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 150
    invoke-static {v11}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/String;

    const-string v14, "app_name"

    .line 156
    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const-string v14, "cid"

    .line 157
    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "ali1688"

    goto :goto_1

    :cond_10
    const-string v14, ""

    :goto_1
    aput-object v14, v13, v2

    const-string v14, "sid"

    .line 158
    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    const-string v14, "tb"

    goto :goto_2

    :cond_11
    const-string v14, ""

    :goto_2
    aput-object v14, v13, v6

    const-string v14, "s_id"

    .line 159
    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "tb"

    goto :goto_3

    :cond_12
    const-string v14, ""

    :goto_3
    aput-object v14, v13, v9

    .line 160
    invoke-static {v13}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v12, [Ljava/lang/String;

    const-string v15, "extern_token"

    .line 167
    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v1

    const-string v15, "cid"

    .line 168
    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v2

    const-string v15, "sid"

    .line 169
    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    const-string v15, "s_id"

    .line 170
    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    .line 171
    invoke-static {v14}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v2, [Ljava/lang/String;

    const-string v10, "appenv"

    .line 178
    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v15, v1

    .line 179
    invoke-static {v15}, Lcom/alipay/sdk/app/PayTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "trade_no=\"%s\"&pay_phase_id=\"%s\"&biz_type=\"trade\"&biz_sub_type=\"TRADE\"&app_name=\"%s\"&extern_token=\"%s\"&appenv=\"%s\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\"%s\""

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v1

    aput-object v11, v15, v2

    aput-object v13, v15, v6

    aput-object v14, v15, v9

    aput-object v0, v15, v12

    const/4 v0, 0x5

    .line 183
    iget-object v1, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    .line 190
    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v0

    .line 191
    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/alipay/sdk/app/PayTask$e;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/alipay/sdk/app/PayTask$e;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/PayTask$a;)V

    .line 201
    invoke-virtual {v1, v3}, Lcom/alipay/sdk/app/PayTask$e;->b(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v4}, Lcom/alipay/sdk/app/PayTask$e;->c(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v5}, Lcom/alipay/sdk/app/PayTask$e;->a(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v7}, Lcom/alipay/sdk/app/PayTask$e;->d(Ljava/lang/String;)V

    .line 205
    iget-object v2, v8, Lcom/alipay/sdk/app/PayTask;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    :cond_13
    :goto_4
    :try_start_7
    iget-object v0, v8, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "url"

    .line 208
    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "bizcontext"

    .line 209
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "new_external_info==%s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 290
    :try_start_8
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :cond_14
    const-string v0, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 292
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchTradeToken()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/m/w/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, "fetchTradeToken"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/w/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/m/y/l;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "15.8.42"

    return-object v0
.end method

.method public declared-synchronized h5Pay(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Z)Lcom/alipay/sdk/util/H5PayResultModel;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/util/H5PayResultModel;

    invoke-direct {v0}, Lcom/alipay/sdk/util/H5PayResultModel;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, ";"

    .line 4
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    const-string v6, "={"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 9
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p0, v5, v6}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "resultStatus"

    .line 13
    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "resultStatus"

    .line 14
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/alipay/sdk/util/H5PayResultModel;->setResultCode(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/H5PayResultModel;->setReturnUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/alipay/sdk/util/H5PayResultModel;->getReturnUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "biz"

    const-string p3, "H5CbUrlEmpty"

    const-string v1, ""

    .line 19
    invoke-static {p1, p2, p3, v1}, Lcom/alipay/sdk/m/m/a;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    const-string p3, "biz"

    const-string v1, "H5CbEx"

    .line 22
    invoke-static {p1, p3, v1, p2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {p2}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pay(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/y/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/sdk/m/w/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v2, "pay"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/m/w/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized payInterceptorWithUrl(Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/sdk/app/PayTask;->fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intercepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mspl"

    invoke-static {v1, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/app/PayTask$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/sdk/app/PayTask$b;-><init>(Lcom/alipay/sdk/app/PayTask;Ljava/lang/String;ZLcom/alipay/sdk/app/H5PayCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized payV2(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/m/y/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {}, Lcom/alipay/sdk/m/l/b;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/alipay/sdk/m/w/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->a:Landroid/app/Activity;

    const-string v2, "payV2"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/m/w/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    move-object p1, v0

    .line 9
    :goto_0
    invoke-static {p1, p2}, Lcom/alipay/sdk/m/y/o;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Lcom/alipay/sdk/m/c0/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/sdk/m/c0/a;->d()V

    :cond_0
    return-void
.end method
