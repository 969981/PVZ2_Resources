.class public Lcom/mob/tools/utils/NtFetcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/tools/utils/NtFetcher;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mob/tools/utils/DeviceHelper;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    .line 43
    invoke-virtual {p1}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->a()V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "0395egelTiZeifdef6i@fmFfj>eiJm_efghgheffdelfmfkhghghdfifieefghdfjhmglheikeefifjfkfjhd"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->b()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "0392egel_i$eifdefGi^fmYfjLeiUm7efghgheffdelfmfkhghghdfifieefghdfjhmglheikeefifjfkfjhd"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 71
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 72
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->b()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/NtFetcher;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->c()V

    return-void
.end method

.method private b()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 118
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$1;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    return-void
.end method

.method private d()I
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "035>egel\'i5eifdefNiNfmUfj!ei?mBefghgheffdelfmhehdfkgjeehhidglfghdeefifjfkfjhd"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->e()I

    move-result v0

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 251
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method private e()V
    .locals 6

    .line 257
    new-instance v0, Lcom/mob/tools/utils/NtFetcher$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/utils/NtFetcher$2;-><init>(Lcom/mob/tools/utils/NtFetcher;)V

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    const-string v2, "016*ei[jLggefgh6ejKeihe!j5ehOjQef$kj+ei"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/content/IntentFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    const-string v1, "018\'edelei$jHggefghFejEeiheMjTeh,jIef<kj8ei"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "039)egelMiZeifdef,i:fm fjFei:m3efghgheffdelfmfkhghghdfifieefghdfjhmglheikeefifjfkfjhd"

    invoke-static {v1}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 294
    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 295
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 322
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :pswitch_0
    const-string v0, "008jedj3eielHje"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_1
    const-string v0, "005i@ed<mmWej"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_2
    const-string v0, "009!gdfeed<je;fdfdSed"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :pswitch_3
    const-string v0, "0055geefMm*egem"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    const-string v0, "004Ggeefgief"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "0023ifil"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    const-string v0, "002Jkjil"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "002$kdil"

    :goto_0
    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "002+hkil"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 327
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 329
    :cond_5
    const-string v0, "004%elfdelSj"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/NtFetcher;
    .locals 2

    .line 49
    sget-object v0, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/mob/tools/utils/NtFetcher;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/mob/tools/utils/NtFetcher;

    invoke-direct {v1, p0}, Lcom/mob/tools/utils/NtFetcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/mob/tools/utils/NtFetcher;->a:Lcom/mob/tools/utils/NtFetcher;

    return-object p0
.end method

.method private h()Z
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->k()Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 4

    const/4 v0, 0x0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "035+egelQiDeifdefGiCfmVfj^ei<m3efghgheffdelfmhehdfkgjeehhidglfghdeefifjfkfjhd"

    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "006d7edegge,jDef"

    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "006,idedegge6jDef"

    .line 362
    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "006?idfffkhmhdfh"

    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 364
    const-string v2, "015Ggg^je^fi9j[ei(k2efehCjSfiZe<eg$ej"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 365
    const-string v2, "016(gg,jeIidgefg_je^gefdeiekfjej?fj"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 373
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v3, "035(egelMi(eifdefDi\'fmZfj,eiRm4efghgheffdelfmhehdfkgjeehhidglfghdeefifjfkfjhd"

    invoke-static {v3}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 394
    const-string v2, "015\'gg.jeUfiUj!ei\'kCefeh+j^fiDe]egFej"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 395
    const-string v2, "010=gg%jeIfgeifi eQegEej"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/mob/tools/a/f;->d()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 416
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return v0
.end method

.method private l()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->d()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 433
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/g;->a(Landroid/content/Context;)Lcom/mob/tools/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/g;->a()Lcom/mob/tools/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/f;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v2

    :catchall_0
    move-exception v0

    .line 453
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getDtNtType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNtType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->c:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->isSensitiveDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/NtFetcher;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/mob/tools/utils/NtFetcher;->f()V

    return-void
.end method
