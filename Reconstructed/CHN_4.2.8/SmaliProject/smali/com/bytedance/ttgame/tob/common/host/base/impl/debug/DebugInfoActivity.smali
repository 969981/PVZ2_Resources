.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;
.super Landroid/app/Activity;
.source "DebugInfoActivity.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private Dh:Lgbsdk/android/support/v7/widget/RecyclerView;

.field private Di:Lgbsdk/common/host/abre;

.field private Dj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abrf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dj:Ljava/util/ArrayList;

    return-void
.end method

.method private en()V
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c901a9611c4ccbe3a3f5d8b1b51b9639"

    invoke-static {v2, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;

    .line 52
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    const-string v3, "app_id"

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    const-string v3, "bddid"

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;->getDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v2

    const-string v3, "hash_bddid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/applog/IAppLogService;->getDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/HashUtil;->longHashCode(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "apk_version"

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getHostVersion()Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "plugin_version"

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAllPluginVersion()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "channel"

    const-string v3, "bsdk"

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "hostabi"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "apminsight_did"

    sget-object v3, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {v3}, Lgbsdk/common/host/abqs;->dW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    const-string v2, "install_random_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstallRandomId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getDebugInfoParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dj:Ljava/util/ArrayList;

    new-instance v3, Lgbsdk/common/host/abrf;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lgbsdk/common/host/abrf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "302ce97481b22a6653ea5c4b3c652685"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 74
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 75
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "15e229c7ab281df9ddbcb1d381b7d740"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lgbsdk/common/host/abrh;->eo()Lgbsdk/common/host/abrh;

    move-result-object p1

    iget-boolean p1, p1, Lgbsdk/common/host/abrh;->Do:Z

    if-nez p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->finish()V

    :cond_1
    const-string p1, "gbsdk_activity_debug_info"

    const-string v1, "layout"

    .line 41
    invoke-static {p1, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->setContentView(I)V

    const-string p1, "rv_debug_info"

    const-string v1, "id"

    .line 42
    invoke-static {p1, v1}, Lcom/bytedance/ttgame/tob/framework/dynamic_r/DynamicR;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lgbsdk/android/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dh:Lgbsdk/android/support/v7/widget/RecyclerView;

    .line 43
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->en()V

    .line 44
    new-instance p1, Lgbsdk/common/host/abre;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dj:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Lgbsdk/common/host/abre;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Di:Lgbsdk/common/host/abre;

    .line 45
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dh:Lgbsdk/android/support/v7/widget/RecyclerView;

    new-instance v1, Lgbsdk/android/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v0, v2}, Lgbsdk/android/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Lgbsdk/android/support/v7/widget/RecyclerView;->setLayoutManager(Lgbsdk/android/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Dh:Lgbsdk/android/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/debug/DebugInfoActivity;->Di:Lgbsdk/common/host/abre;

    invoke-virtual {p1, v0}, Lgbsdk/android/support/v7/widget/RecyclerView;->setAdapter(Lgbsdk/android/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
