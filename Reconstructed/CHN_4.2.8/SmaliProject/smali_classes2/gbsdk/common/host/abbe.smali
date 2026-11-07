.class public Lgbsdk/common/host/abbe;
.super Lgbsdk/common/host/abbo;
.source "DeviceParamsLoader.java"


# static fields
.field public static bg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static volatile g:Ljava/lang/String;

.field public static volatile h:Ljava/lang/String;


# instance fields
.field public final as:Lgbsdk/common/host/abbf;

.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgbsdk/common/host/abbe;->bg:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abbf;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lgbsdk/common/host/abbo;-><init>(ZZ)V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abbe;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abbe;->as:Lgbsdk/common/host/abbf;

    return-void
.end method


# virtual methods
.method public m(Lorg/json/JSONObject;)Z
    .locals 8

    const-string v0, "mcc_mnc"

    const-string v1, "carrier"

    const-string v2, ""

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    sget-object v6, Lgbsdk/common/host/abbe;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v7, "fb935443da82e9a2dbab7c45eb26b600"

    invoke-static {v4, p0, v6, v5, v7}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object p1, v4, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isTelephonyEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    :try_start_0
    sget-object v4, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 4
    :cond_1
    sget-object v4, Lgbsdk/common/host/abbe;->bg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    iget-object v4, p0, Lgbsdk/common/host/abbe;->e:Landroid/content/Context;

    const-string v6, "phone"

    .line 6
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "DeviceParamsLoader do load operator"

    const/4 v7, 0x0

    .line 7
    :try_start_1
    invoke-static {v6, v7}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    sput-object v2, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    .line 12
    sput-object v2, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_3
    sput-object v2, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    .line 16
    sput-object v2, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    .line 18
    :goto_0
    sget-object v4, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v4, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    invoke-static {p1, v0, v4}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 22
    :catchall_0
    sput-object v2, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    .line 23
    sput-object v2, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    .line 25
    :try_start_2
    sget-object v2, Lgbsdk/common/host/abbe;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lgbsdk/common/host/abbe;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :catchall_1
    :cond_4
    :goto_1
    :try_start_3
    iget-object v0, p0, Lgbsdk/common/host/abbe;->as:Lgbsdk/common/host/abbf;

    .line 34
    iget-object v0, v0, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    check-cast v0, Lgbsdk/common/host/abaw;

    :try_start_4
    invoke-virtual {v0}, Lgbsdk/common/host/abaw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientudid"

    .line 36
    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgbsdk/common/host/abbe;->as:Lgbsdk/common/host/abbf;

    .line 39
    iget-object v0, v0, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 40
    check-cast v0, Lgbsdk/common/host/abaw;

    :try_start_5
    invoke-virtual {v0, v5}, Lgbsdk/common/host/abaw;->i(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openudid"

    .line 41
    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abbf;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lgbsdk/common/host/abbe;->e:Landroid/content/Context;

    invoke-static {p1}, Lgbsdk/common/host/abbh;->a(Landroid/content/Context;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    return v3
.end method
