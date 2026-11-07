.class public final Lcom/apm/applog/AppLog;
.super Ljava/lang/Object;
.source "AppLog.java"


# static fields
.field public static final EVENT_V1_CATEGORY:Ljava/lang/String; = "event_v1"

.field public static d:Z = true

.field public static volatile e:Lgbsdk/common/host/am; = null

.field public static f:Landroid/app/Application; = null

.field public static volatile g:Z = false

.field public static h:Ljava/lang/Integer; = null

.field public static i:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/applog/AppLog;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Lcom/apm/applog/network/INetworkClient; = null

.field public static k:Lcom/apm/applog/network/INetworkClient; = null

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Z = false

.field public static volatile sEventFilterFromClient:Lgbsdk/common/host/ax; = null

.field public static sLaunchFrom:I = 0x1


# instance fields
.field public volatile a:Lgbsdk/common/host/abbk;

.field public volatile b:Lgbsdk/common/host/abbf;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEngine:Lgbsdk/common/host/ap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Lgbsdk/common/host/abaz;

    invoke-direct {v0}, Lgbsdk/common/host/abaz;-><init>()V

    sput-object v0, Lcom/apm/applog/AppLog;->j:Lcom/apm/applog/network/INetworkClient;

    const/4 v0, 0x1

    .line 1115
    sput-boolean v0, Lcom/apm/applog/AppLog;->l:Z

    .line 1131
    sput-boolean v0, Lcom/apm/applog/AppLog;->m:Z

    .line 1147
    sput-boolean v0, Lcom/apm/applog/AppLog;->n:Z

    .line 1162
    sput-boolean v0, Lcom/apm/applog/AppLog;->o:Z

    .line 1163
    sput-boolean v0, Lcom/apm/applog/AppLog;->p:Z

    .line 1164
    sput-boolean v0, Lcom/apm/applog/AppLog;->q:Z

    .line 1165
    sput-boolean v0, Lcom/apm/applog/AppLog;->r:Z

    .line 1166
    sput-boolean v0, Lcom/apm/applog/AppLog;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apm/applog/InitConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apm/applog/InitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/apm/applog/AppLog;->initInner(Landroid/content/Context;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/AppLog;

    return-void
.end method

.method public static addEventObserver(Lgbsdk/common/host/ai;)V
    .locals 1

    .line 1
    invoke-static {}, Lgbsdk/common/host/abaq;->O()Lgbsdk/common/host/abaq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abaq;->a(Lgbsdk/common/host/ai;)V

    return-void
.end method

.method public static addSessionHook(Lgbsdk/common/host/abbt;)V
    .locals 1

    .line 1
    invoke-static {}, Lgbsdk/common/host/abdk;->P()Lgbsdk/common/host/abdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abdk;->a(Lgbsdk/common/host/abbt;)V

    return-void
.end method

.method public static getAppContext()Lgbsdk/common/host/ac;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    return-object v0
.end method

.method public static getEncryptAndCompress()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->d:Z

    return v0
.end method

.method public static getHeaderCustomCallback()Lgbsdk/common/host/an;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;
    .locals 1

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/applog/AppLog;

    return-object p0
.end method

.method public static getNetClient()Lcom/apm/applog/network/INetworkClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->k:Lcom/apm/applog/network/INetworkClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/apm/applog/AppLog;->j:Lcom/apm/applog/network/INetworkClient;

    :goto_0
    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.1"

    return-object v0
.end method

.method public static getSensitiveInfoProvider()Lgbsdk/common/host/abbw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 2

    .line 1
    sget-wide v0, Lgbsdk/common/host/av;->aN:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStarted()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->g:Z

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/AppLog;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/apm/applog/AppLog;->init(Landroid/content/Context;Lcom/apm/applog/InitConfig;Ljava/util/Map;)Lcom/apm/applog/AppLog;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/apm/applog/InitConfig;Ljava/util/Map;)Lcom/apm/applog/AppLog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apm/applog/InitConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apm/applog/AppLog;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/applog/AppLog;

    if-eqz v0, :cond_2

    .line 4
    iget-object p0, v0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    if-nez p0, :cond_0

    .line 5
    iput-object p2, v0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-object v0

    .line 12
    :cond_2
    new-instance v0, Lcom/apm/applog/AppLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/apm/applog/AppLog;-><init>(Landroid/content/Context;Lcom/apm/applog/InitConfig;Ljava/util/Map;)V

    return-object v0
.end method

.method public static isAndroidIdEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->l:Z

    return v0
.end method

.method public static isEnableActivityInfo()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->q:Z

    return v0
.end method

.method public static isEnableDeviceModel()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->o:Z

    return v0
.end method

.method public static isEnableDisplay()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->p:Z

    return v0
.end method

.method public static isEnableLocation()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->s:Z

    return v0
.end method

.method public static isEnableOsVersion()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->r:Z

    return v0
.end method

.method public static isGAIdEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->n:Z

    return v0
.end method

.method public static isNewUserMode(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lgbsdk/common/host/abbh;->a(Landroid/content/Context;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static isNewUserModeAvailable()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/apm/applog/AppLog;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abbh;->a()Z

    return v1
.end method

.method public static isOAIdEnabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->m:Z

    return v0
.end method

.method public static onActivityPause()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgbsdk/common/host/am;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onActivityResumed(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/am;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/apm/applog/AppLog;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {v0, p0}, Lcom/apm/applog/AppLog;->onActivityResumed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static receive(Lgbsdk/common/host/aban;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-object v0, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/applog/AppLog;

    .line 4
    iget-object v1, v1, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p0}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static registerHeaderCustomCallback(Lgbsdk/common/host/an;)V
    .locals 0

    return-void
.end method

.method public static removeEventObserver(Lgbsdk/common/host/ai;)V
    .locals 1

    .line 1
    invoke-static {}, Lgbsdk/common/host/abaq;->O()Lgbsdk/common/host/abaq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abaq;->b(Lgbsdk/common/host/ai;)V

    return-void
.end method

.method public static removeOaidObserver(Lgbsdk/common/host/aw;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lgbsdk/common/host/abec;->b(Lgbsdk/common/host/aw;)V

    return-void
.end method

.method public static removeSessionHook(Lgbsdk/common/host/abbt;)V
    .locals 1

    .line 1
    invoke-static {}, Lgbsdk/common/host/abdk;->P()Lgbsdk/common/host/abdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abdk;->b(Lgbsdk/common/host/abbt;)V

    return-void
.end method

.method public static setAndroidIdEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->l:Z

    return-void
.end method

.method public static setAppContext(Lgbsdk/common/host/ac;)V
    .locals 0

    return-void
.end method

.method public static setEnableActivityInfo(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->q:Z

    return-void
.end method

.method public static setEnableDeviceModel(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->o:Z

    return-void
.end method

.method public static setEnableDisplay(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->p:Z

    return-void
.end method

.method public static setEnableLocation(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->s:Z

    return-void
.end method

.method public static setEnableOsVersion(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->r:Z

    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->d:Z

    return-void
.end method

.method public static setEventFilterByClient(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    .line 10
    new-instance p0, Lgbsdk/common/host/az;

    invoke-direct {p0, v1, v0}, Lgbsdk/common/host/az;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Lgbsdk/common/host/ay;

    invoke-direct {p0, v1, v0}, Lgbsdk/common/host/ay;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    :goto_1
    move-object v0, p0

    .line 13
    :cond_3
    sput-object v0, Lcom/apm/applog/AppLog;->sEventFilterFromClient:Lgbsdk/common/host/ax;

    return-void
.end method

.method public static setExtraParams(Lgbsdk/common/host/al;)V
    .locals 0

    .line 1
    sput-object p0, Lgbsdk/common/host/ak;->ah:Lgbsdk/common/host/al;

    return-void
.end method

.method public static setGAIdEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->n:Z

    return-void
.end method

.method public static setHttpMonitorPort(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/apm/applog/AppLog;->h:Ljava/lang/Integer;

    return-void
.end method

.method public static setLogger(Landroid/content/Context;Lcom/apm/applog/ILogger;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lgbsdk/common/host/abdn;->a(Landroid/content/Context;Lcom/apm/applog/ILogger;)V

    return-void
.end method

.method public static setNetworkClient(Lcom/apm/applog/network/INetworkClient;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/apm/applog/AppLog;->k:Lcom/apm/applog/network/INetworkClient;

    return-void
.end method

.method public static setNewUserMode(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lgbsdk/common/host/abbh;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setOAIdEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/apm/applog/AppLog;->m:Z

    return-void
.end method

.method public static setOaidObserver(Lgbsdk/common/host/aw;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lgbsdk/common/host/abec;->a(Lgbsdk/common/host/aw;)V

    return-void
.end method

.method public static setSensitiveInfoProvider(Lgbsdk/common/host/abbw;)V
    .locals 0

    return-void
.end method

.method public static setUserID(J)V
    .locals 0

    .line 1
    sput-wide p0, Lgbsdk/common/host/av;->aN:J

    return-void
.end method


# virtual methods
.method public addDataObserver(Lcom/apm/applog/IDataObserver;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abax;->a(Lcom/apm/applog/IDataObserver;)V

    return-void
.end method

.method public addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLgbsdk/common/host/abal;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0, p2, p3, p4}, Lgbsdk/common/host/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLgbsdk/common/host/abal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/ap;->a([Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v2, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v2}, Lgbsdk/common/host/abbk;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "vid"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "val"

    .line 8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v2}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;)V

    .line 11
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ab_sdk_version"

    .line 12
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v0, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v0

    const-string v2, "abtest_exposure"

    invoke-virtual {v0, v2, v3}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    return-object v1
.end method

.method public getAbSdkVersion()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-boolean v1, v0, Lgbsdk/common/host/abbf;->a:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->b()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAllAbTestConfigs()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 3
    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->a()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getClientUdid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "clientudid"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init come first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    .line 4
    invoke-static {v0, p1, p2, p3}, Lgbsdk/common/host/ak;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHttpMonitorPort()I
    .locals 3

    .line 1
    sget-object v0, Lcom/apm/applog/AppLog;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v2, "http_monitor_port"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public getIid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "install_id"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getInitConfig()Lcom/apm/applog/InitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpenUdid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "openudid"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v1, "device_token"

    const-string v2, ""

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const-string v0, "x-tt-dt"

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSessionTags()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    .line 4
    :cond_0
    invoke-static {}, Lcom/bytedance/apm/common/utility/ToolUtils;->isHarmonyOs()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "is_harmony_os"

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catchall_0
    :goto_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSsidGroup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_id"

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getIid()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "install_id"

    .line 7
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "openudid"

    .line 11
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientudid"

    .line 15
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public getSuccRate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v2, "bav_monitor_rate"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getUdid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbf;->d:Lorg/json/JSONObject;

    const-string v2, "udid"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public initInner(Landroid/content/Context;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/AppLog;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getLogger()Lcom/apm/applog/ILogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getLogger()Lcom/apm/applog/ILogger;

    move-result-object v0

    invoke-static {p1, v0}, Lgbsdk/common/host/abdn;->a(Landroid/content/Context;Lcom/apm/applog/ILogger;)V

    :cond_0
    const-string v0, "Inited Begin"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sput-object p1, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    .line 8
    :cond_1
    sget-object p1, Lcom/apm/applog/AppLog;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Lgbsdk/common/host/abbk;

    sget-object v0, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    invoke-direct {p1, v0, p2}, Lgbsdk/common/host/abbk;-><init>(Landroid/content/Context;Lcom/apm/applog/InitConfig;)V

    iput-object p1, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 10
    new-instance p1, Lgbsdk/common/host/abbf;

    sget-object v0, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    invoke-direct {p1, v0, v2}, Lgbsdk/common/host/abbf;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;)V

    iput-object p1, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 11
    new-instance p1, Lgbsdk/common/host/ap;

    sget-object v0, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    iget-object v3, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-direct {p1, v0, v2, v3}, Lgbsdk/common/host/ap;-><init>(Landroid/app/Application;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abbf;)V

    iput-object p1, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    .line 12
    new-instance p1, Lgbsdk/common/host/am;

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getPicker()Lgbsdk/common/host/abbn;

    invoke-direct {p1}, Lgbsdk/common/host/am;-><init>()V

    sput-object p1, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    .line 14
    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    sget-object p1, Lcom/apm/applog/AppLog;->f:Landroid/app/Application;

    sget-object v0, Lcom/apm/applog/AppLog;->e:Lgbsdk/common/host/am;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 18
    :cond_2
    sget-boolean p1, Lcom/apm/applog/AppLog;->g:Z

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sput-boolean p1, Lcom/apm/applog/AppLog;->g:Z

    const-string p1, "Inited Config Did:"

    .line 20
    invoke-static {p1}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getInitConfig()Lcom/apm/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getInitConfig()Lcom/apm/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->isH5BridgeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getInitConfig()Lcom/apm/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getInitConfig()Lcom/apm/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->isH5CollectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewUser()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    .line 3
    iget-boolean v0, v0, Lgbsdk/common/host/abbf;->i:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public manualActivate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lgbsdk/common/host/ap;->a(Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 9

    const-string v1, "event_v1"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 9
    invoke-virtual/range {v0 .. v8}, Lcom/apm/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v1, "event_v1"

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 8
    invoke-virtual/range {v0 .. v8}, Lcom/apm/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 7
    invoke-virtual/range {v0 .. v8}, Lcom/apm/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 5
    iget-object v2, v0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    new-instance v12, Lgbsdk/common/host/abak;

    if-eqz p8, :cond_1

    invoke-virtual/range {p8 .. p8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v11, v1

    move-object v3, v12

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-direct/range {v3 .. v11}, Lgbsdk/common/host/abak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v2, v12}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V

    return-void

    :cond_2
    :goto_0
    move-object v0, p0

    const-string v2, "category or tag is empty"

    .line 6
    invoke-static {v2, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 13
    :goto_1
    invoke-static {p2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "event name is empty"

    .line 3
    invoke-static {p1, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    new-instance v2, Lgbsdk/common/host/abae;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, p1, v3, v1}, Lgbsdk/common/host/abae;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V

    return-void
.end method

.method public onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "both second appid and second app name is empty, return"

    .line 15
    invoke-static {p1, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second_app_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 18
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string p2, "params_for_special"

    const-string v1, "second_app"

    .line 24
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "second_appid"

    .line 25
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "second_appname"

    .line 26
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "product_type"

    .line 27
    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 30
    :goto_1
    invoke-static {p2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 32
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string p2, "both second appid and second app name is empty, return"

    .line 2
    invoke-static {p2, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "params_for_special"

    const-string v1, "second_app"

    .line 6
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "second_appid"

    .line 7
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "second_appname"

    .line 8
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "product_type"

    .line 9
    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 11
    invoke-static {p3}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/apm/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onLaunchEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 2
    iget-boolean v0, v0, Lgbsdk/common/host/abbk;->q:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    .line 4
    iget-object v1, v0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lgbsdk/common/host/aq;

    invoke-direct {v2, v0}, Lgbsdk/common/host/aq;-><init>(Lgbsdk/common/host/ap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    new-instance v1, Lgbsdk/common/host/abaj;

    invoke-direct {v1, p1, p2}, Lgbsdk/common/host/abaj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "call onEventData get exception: "

    .line 7
    invoke-static {p2, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    const-string p2, "call onEventData with invalid params, return"

    .line 8
    invoke-static {p2, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public profileAppend(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 7
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array v1, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lgbsdk/common/host/abam;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, "only support String\u3001Int\u3001String Array\uff01"

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 13
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->a(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public profileIncrement(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 7
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lgbsdk/common/host/abam;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string v0, "only support Int"

    .line 10
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 11
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->b(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public profileSet(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->k(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public profileSetOnce(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->l(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, ""

    .line 7
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/ap;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method public putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLgbsdk/common/host/abal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lgbsdk/common/host/abal;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0, p3, p2, p4}, Lgbsdk/common/host/ak;->a(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/util/Map;Lgbsdk/common/host/abal;)V

    return-void
.end method

.method public removeAllDataObserver()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/abax;->bQ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public removeDataObserver(Lcom/apm/applog/IDataObserver;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apm/applog/AppLog;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abax;->t(Ljava/lang/String;)Lgbsdk/common/host/abax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abax;->b(Lcom/apm/applog/IDataObserver;)V

    return-void
.end method

.method public removeHeaderInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbf;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbf;->a(Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method

.method public setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    const-string v2, "app_language"

    .line 3
    invoke-virtual {v1, v2, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, v1, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, p1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v1, v0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    const-string v2, "app_region"

    .line 7
    invoke-virtual {v1, v2, p2}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v1, v1, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 9
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, p2}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int/2addr p1, v4

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, v0, Lgbsdk/common/host/ap;->au:Lgbsdk/common/host/as;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    :cond_2
    return-void
.end method

.method public setAppTrack(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, "app_track"

    .line 3
    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCustomLaunch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->a:Lgbsdk/common/host/abbk;

    .line 3
    iput-boolean p1, v0, Lgbsdk/common/host/abbk;->q:Z

    :cond_0
    return-void
.end method

.method public setEventSenderEnable(ZLandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lgbsdk/common/host/ap;->a(ZLandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbf;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, "google_aid"

    .line 3
    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abbf;->b(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbf;->b(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setRangersEventVerifyEnable(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setTouchPoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "touch_point"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/apm/applog/AppLog;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTracerData(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, "tracer_data"

    .line 3
    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUriRuntime(Lcom/apm/applog/UriConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    const-string v0, "setUriRuntime "

    .line 2
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apm/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    .line 5
    iput-object p1, v0, Lgbsdk/common/host/ap;->ax:Lcom/apm/applog/UriConfig;

    .line 6
    iget-object p1, v0, Lgbsdk/common/host/ap;->au:Lgbsdk/common/host/as;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    .line 7
    iget-object p1, v0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 8
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 9
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 10
    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->a(Z)Z

    :cond_0
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apm/applog/AppLog;->b:Lgbsdk/common/host/abbf;

    const-string v1, "user_agent"

    .line 3
    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v0, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 5
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lgbsdk/common/host/ap;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/apm/applog/AppLog;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/apm/applog/AppLog;->g:Z

    .line 3
    iget-object v1, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    .line 4
    iget-boolean v2, v1, Lgbsdk/common/host/ap;->n:Z

    if-nez v2, :cond_0

    .line 5
    iput-boolean v0, v1, Lgbsdk/common/host/ap;->n:Z

    .line 6
    iget-object v1, v1, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public startSimulator(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lgbsdk/common/host/ap;->aA:Lgbsdk/common/host/ao;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v2, v1, Lgbsdk/common/host/ao;->e:Z

    :cond_0
    const-string v1, "com.bytedance.applog.picker.DomSender"

    .line 4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Lgbsdk/common/host/ap;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 6
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "bd_tracker_d"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p1, v3, v2

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/ao;

    iput-object p1, v0, Lgbsdk/common/host/ap;->aA:Lgbsdk/common/host/ao;

    .line 9
    iget-object p1, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    iget-object v1, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/16 v2, 0x9

    iget-object v0, v0, Lgbsdk/common/host/ap;->aA:Lgbsdk/common/host/ao;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public userProfileSetOnce(Lorg/json/JSONObject;Lgbsdk/common/host/ad;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iget-object v2, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 3
    iget-object v4, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lgbsdk/common/host/ae;->a(Lgbsdk/common/host/ap;ILorg/json/JSONObject;Lgbsdk/common/host/ad;Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method public userProfileSync(Lorg/json/JSONObject;Lgbsdk/common/host/ad;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apm/applog/AppLog;->mEngine:Lgbsdk/common/host/ap;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-object v2, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 3
    iget-object v4, v0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lgbsdk/common/host/ae;->a(Lgbsdk/common/host/ap;ILorg/json/JSONObject;Lgbsdk/common/host/ad;Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method
