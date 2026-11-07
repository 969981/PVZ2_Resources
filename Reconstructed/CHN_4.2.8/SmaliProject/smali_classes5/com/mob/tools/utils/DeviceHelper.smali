.class public Lcom/mob/tools/utils/DeviceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/DeviceHelper;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentActivityThread()Ljava/lang/Object;
    .locals 1

    .line 876
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aH()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 3

    const-class v0, Lcom/mob/tools/utils/DeviceHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v2, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    .line 37
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static invokeRuntimeExec(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 807
    const-string v0, "017]fdbd1h^bdcjcbbdbiddcjebbabiEb bc_jg"

    invoke-static {v0}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    const-string v1, "010Jdd[gb)ebbabi(bAbc%jg"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 809
    const-string v1, "004g*bjLg-be"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v0, v1, p0, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkNetworkAvailable()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->af()Z

    move-result v0

    return v0
.end method

.method public checkPad()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkUA()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public cx()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->b()Z

    move-result v0

    return v0
.end method

.method public debugable()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->d()Z

    move-result v0

    return v0
.end method

.method public devEnable()Z
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->g()Z

    move-result v0

    return v0
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumCount()I
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Z()I

    move-result v0

    return v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLastUpdateTime()J
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aL()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersion()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aD()I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aI()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableWifiList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->M()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBaseband()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryState(Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/ReflectHelper$a<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Lcom/mob/tools/utils/ReflectHelper$a;)V

    return-void
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardFromSysProperty()Ljava/lang/String;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUFreq()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ak()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCPUInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->S()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCPUType()Ljava/lang/String;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->al()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCamResolution()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ah()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaBid()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->H()I

    move-result v0

    return v0
.end method

.method public getCdmaLat()I
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->F()I

    move-result v0

    return v0
.end method

.method public getCdmaLon()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->G()I

    move-result v0

    return v0
.end method

.method public getCdmaNid()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->J()I

    move-result v0

    return v0
.end method

.method public getCdmaSid()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->I()I

    move-result v0

    return v0
.end method

.method public getCellId()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->C()I

    move-result v0

    return v0
.end method

.method public getCellLac()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->D()I

    move-result v0

    return v0
.end method

.method public getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWifiInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->L()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDataNtType()I
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ag()I

    move-result v0

    return v0
.end method

.method public getDefaultIM()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ax()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIMPkg()Ljava/lang/String;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultResolvePkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDetailNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceData()Ljava/lang/String;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDataNotAES()Ljava/lang/String;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->au()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->av()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey(Z)Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->d(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceMemUsage()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ar()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlavor()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->am()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIA(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->c(Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ay()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(IIZ)Landroid/location/Location;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/a/a;->a(IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getMIUIVersion()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Y()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->K()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSCountry()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionInt()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->O()I

    move-result v0

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPsc()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->E()I

    move-result v0

    return v0
.end method

.method public getQemuKernel()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolvePkgs(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSA()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->at()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->U()I

    move-result v0

    return v0
.end method

.method public getScreenBrightnessMode()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->V()I

    move-result v0

    return v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardPath()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->az()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSerialno()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignMD5()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->X()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aj()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 801
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTTYDriversInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->T()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraffic()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->an()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 815
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 817
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 824
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 826
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public isFakePass(Ljava/lang/String;)Z
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInMainProcess()Z
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->aF()Z

    move-result v0

    return v0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRooted()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public isSensitiveDevice()Z
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->k()Z

    move-result v0

    return v0
.end method

.method public isSmlt()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->j()Z

    move-result v0

    return v0
.end method

.method public isWifiProxy()Z
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->i()Z

    move-result v0

    return v0
.end method

.method public queryIMEI()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->A()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryIMSI()[Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->p()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public regReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 768
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "016GbfLgRddbcdeMbgYbfeb]gZbeMgEbc!hgVbf"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, p2, v2

    const/4 v2, 0x1

    const-class v3, Landroid/content/IntentFilter;

    aput-object v3, p2, v2

    invoke-static {v0, v1, p1, p2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public registerWifiScanReceiver(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 773
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/utils/DeviceHelper$1;-><init>(Lcom/mob/tools/utils/DeviceHelper;Ljava/util/concurrent/BlockingQueue;)V

    .line 788
    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 789
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0, v0, p1}, Lcom/mob/tools/utils/DeviceHelper;->regReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 792
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/a/a;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public scanWifiList()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->N()Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/a/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public unregReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    const-string v1, "0189babibf g*ddbcdeBbg[bfeb7gSbe;gDbc,hg bf"

    invoke-static {v1}, Lcom/mob/commons/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public usbEnable()Z
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->h()Z

    move-result v0

    return v0
.end method

.method public vpn()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/a/c;->a(Landroid/content/Context;)Lcom/mob/tools/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/c;->a()Lcom/mob/tools/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/a/a;->e()Z

    move-result v0

    return v0
.end method
