.class public Lct/be;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static volatile l:Lct/be;


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lct/bf;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lct/bi;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/pm/PackageManager;

.field private final f:Landroid/telephony/TelephonyManager;

.field private final g:Landroid/net/wifi/WifiManager;

.field private final h:Landroid/location/LocationManager;

.field private final i:Lct/bz;

.field private final j:Lct/cj;

.field private final k:Ljava/util/concurrent/CountDownLatch;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lct/cy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lct/be;->a:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lct/be;->e:Landroid/content/pm/PackageManager;

    const-string v0, "phone"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lct/be;->f:Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lct/be;->g:Landroid/net/wifi/WifiManager;

    const-string v0, "location"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lct/be;->h:Landroid/location/LocationManager;

    .line 96
    new-instance v0, Lct/by;

    invoke-direct {v0, p0}, Lct/by;-><init>(Lct/be;)V

    iput-object v0, p0, Lct/be;->i:Lct/bz;

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v1, Lct/ck$1;

    invoke-direct {v1}, Lct/ck$1;-><init>()V

    new-instance v1, Lct/bx;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lct/bx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lct/be;->j:Lct/cj;

    .line 103
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-wide/32 v5, 0xea60

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 109
    :cond_0
    iput-object v0, p0, Lct/be;->c:Ljava/util/concurrent/ExecutorService;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/be;->d:Ljava/util/HashMap;

    .line 115
    new-instance v1, Lct/bj;

    const-string v3, "cell"

    invoke-direct {v1, v3}, Lct/bj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lct/be;->d:Ljava/util/HashMap;

    new-instance v1, Lct/bk;

    const-string v3, "so"

    invoke-direct {v1, p1, v3}, Lct/bk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lct/bf;

    invoke-direct {v0, p0}, Lct/bf;-><init>(Lct/be;)V

    iput-object v0, p0, Lct/be;->b:Lct/bf;

    .line 121
    invoke-static {p1}, Lct/be;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lct/bf;->h:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lct/be;->k:Ljava/util/concurrent/CountDownLatch;

    .line 124
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lct/be$1;

    invoke-direct {v0, p0}, Lct/be$1;-><init>(Lct/be;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lct/be;
    .locals 2

    .line 75
    sget-object v0, Lct/be;->l:Lct/be;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lct/be;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lct/be;->l:Lct/be;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lct/be;

    invoke-direct {v1, p0}, Lct/be;-><init>(Landroid/content/Context;)V

    sput-object v1, Lct/be;->l:Lct/be;

    .line 80
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lct/be;->l:Lct/be;

    return-object p0
.end method

.method static synthetic a(Lct/be;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52
    iget-object p0, p0, Lct/be;->k:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "TencentMapSDK"

    const-string v1, "TencentGeoLocationSDK"

    const-string v2, ""

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 322
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 324
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v2
.end method

.method private l()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 336
    :try_start_0
    iget-object v0, p0, Lct/be;->e:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 338
    :catch_0
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 136
    iget-object v0, p0, Lct/be;->f:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lct/bi;
    .locals 1

    .line 199
    iget-object v0, p0, Lct/be;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lct/bi;

    if-eqz p1, :cond_0

    return-object p1

    .line 203
    :cond_0
    sget-object p1, Lct/bh;->a:Lct/bh;

    return-object p1
.end method

.method public final a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lct/be;->j:Lct/cj;

    invoke-interface {v0, p1, p2}, Lct/cj;->a(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p1

    .line 208
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p2}, Lct/b$a;->c([B)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 210
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    const-string p1, "{}"

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 8

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lct/be;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lct/be;->m:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v0, p0, Lct/be;->m:Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/cy;

    .line 234
    iget-object v1, v1, Lct/cy;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 241
    monitor-exit p0

    return-void

    .line 244
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v5, v0, v4

    .line 251
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Event"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 253
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 258
    array-length v7, v6

    if-ne v7, v2, :cond_4

    .line 263
    new-instance v7, Lct/cy;

    aget-object v6, v6, v3

    invoke-direct {v7, v6, v5, p1}, Lct/cy;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 264
    iget-object v5, p0, Lct/be;->m:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EventHandler methods must specify a single Object paramter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 266
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 141
    iget-object v0, p0, Lct/be;->g:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lct/be;->m:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lct/cy;

    .line 273
    iget-object v4, v3, Lct/cy;->c:Ljava/lang/Object;

    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_0

    .line 275
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/cy;

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Landroid/location/LocationManager;
    .locals 1

    .line 146
    iget-object v0, p0, Lct/be;->h:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 286
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_0
    iget-object v0, p0, Lct/be;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lct/cy;

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v1, Lct/cy;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 295
    :try_start_1
    iget-object v2, v1, Lct/cy;->b:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lct/cy;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lct/be;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lct/be;->g:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lct/be;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lct/bz;
    .locals 1

    .line 162
    iget-object v0, p0, Lct/be;->i:Lct/bz;

    return-object v0
.end method

.method public final h()Lct/bf;
    .locals 1

    .line 171
    iget-object v0, p0, Lct/be;->b:Lct/bf;

    return-object v0
.end method

.method public final i()Lct/bf;
    .locals 1

    .line 186
    :try_start_0
    iget-object v0, p0, Lct/be;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object v0, p0, Lct/be;->b:Lct/bf;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 195
    iget-object v0, p0, Lct/be;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method final k()V
    .locals 7

    const-string v0, "c.json"

    .line 309
    :try_start_0
    iget-object v1, p0, Lct/be;->b:Lct/bf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_0

    :try_start_2
    iget-object v4, p0, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    nop

    :cond_0
    :goto_1
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v4

    :catch_2
    :try_start_5
    invoke-static {v3}, Lct/b$a;->a(Ljava/io/Closeable;)V

    :cond_1
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v4, "d"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v4, "d_cell"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v4, "d_gps"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v4, "d_wifi"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v4, "d_mgr"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    const-string v4, "t_connect"

    const-wide/16 v5, 0x4e20

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    const-string v4, "t_read"

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    const-string v4, "o"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lct/bf;->p:Z

    const-string v4, "s"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lct/bf;->q:Z

    const-string v4, "a"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lct/bf;->r:Z

    const-string v4, "version"

    const-string v5, "3.2"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lct/bf;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lct/bf;->o:Ljava/lang/String;

    const-string v4, "build"

    const-string v5, "159494"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lct/bf;->n:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lct/be;->l()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v4, p0, Lct/be;->f:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-static {v4, v5}, Lct/cs;->a(Landroid/telephony/TelephonyManager;[I)V

    aget v0, v5, v0

    iput v0, v1, Lct/bf;->i:I

    aget v0, v5, v3

    iput v0, v1, Lct/bf;->j:I

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, v1, Lct/bf;->b:I

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lct/cx;->a:Ljava/util/regex/Pattern;

    invoke-static {v0, v3}, Lct/cx;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lct/cx;->b:Ljava/util/regex/Pattern;

    invoke-static {v3, v5}, Lct/cx;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lct/cx;->c:Ljava/util/regex/Pattern;

    invoke-static {v4, v5}, Lct/cx;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    iput-object v0, v1, Lct/bf;->c:Ljava/lang/String;

    iput-object v3, v1, Lct/bf;->d:Ljava/lang/String;

    iput-object v4, v1, Lct/bf;->e:Ljava/lang/String;

    :cond_3
    invoke-static {p0}, Lct/b$a;->c(Lct/be;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lct/cx;->d:Ljava/util/regex/Pattern;

    invoke-static {v0, v3}, Lct/cx;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lct/bf;->f:Ljava/lang/String;

    iget-object v0, p0, Lct/be;->e:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.location.gps"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Lct/bf;->a()Ljava/lang/String;

    iget v0, v1, Lct/bf;->i:I

    iget v0, v1, Lct/bf;->j:I

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1}, Lct/bf;->e()Ljava/lang/String;

    invoke-virtual {v1}, Lct/bf;->f()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    return-void
.end method
