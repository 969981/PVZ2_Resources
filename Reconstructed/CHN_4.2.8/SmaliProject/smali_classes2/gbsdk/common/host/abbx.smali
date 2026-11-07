.class public Lgbsdk/common/host/abbx;
.super Lgbsdk/common/host/abbo;
.source "SimCountryLoader.java"


# static fields
.field public static bk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static volatile f:Ljava/lang/String;


# instance fields
.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/common/host/abbx;->bk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abbo;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abbx;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abbx;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "07cfa76d922d84e30134864a15b30d9b"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isTelephonyEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abbx;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lgbsdk/common/host/abbx;->bk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    const-string v1, "SimCountryLoader do load sim country"

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-static {v1, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    iget-object v1, p0, Lgbsdk/common/host/abbx;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lgbsdk/common/host/abbx;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :catchall_0
    :try_start_3
    sget-object v1, Lgbsdk/common/host/abbx;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    .line 11
    sput-object v1, Lgbsdk/common/host/abbx;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const-string v1, "sim_region"

    .line 15
    :try_start_4
    sget-object v2, Lgbsdk/common/host/abbx;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_2
    return v0
.end method
