.class public Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;
.super Ljava/lang/Object;
.source "CommonCoreData.java"


# static fields
.field private static final CACHED_KEY_USER_UNIQUE_ID_LAST:Ljava/lang/String; = "cached_user_unique_id_last"

.field private static final FIRST_UNION_MODE:Ljava/lang/String; = "first_union_mode"

.field private static final KEY_INSTALL_RANDOM_ID:Ljava/lang/String; = "install_random_id"

.field private static final KEY_IS_AGREE_PRIVACY_PROTECTION:Ljava/lang/String; = "is_agree_privacy_protection"

.field private static final REPO_NAME_CACHED_APPLOG_DATA:Ljava/lang/String; = "cached_applog_data"

.field private static final REPO_NAME_CACHED_PLUGIN_VERSION:Ljava/lang/String; = "repo_name_cached_plugin_version"

.field private static final TAG:Ljava/lang/String; = "CommonCoreData"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static sInstance:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;


# instance fields
.field private final allPluginVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private appContext:Landroid/content/Context;

.field private appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

.field private cloudTest:Z

.field private componentsInfo:Lgbsdk/common/host/abri;

.field public counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hostVersion:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

.field private initSwitchData:Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

.field private isAppLogPrepared:Z

.field private final isPluginSdk:Z

.field private final launchId:Ljava/lang/String;

.field private logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

.field private mComponents:Ljava/lang/String;

.field private mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

.field private final mDebugInfoParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGameActivity:Landroid/app/Activity;

.field private mInstallRandomId:J

.field private mSessionValue:Ljava/lang/String;

.field private mUnionMode:I

.field private mUserId:Ljava/lang/String;

.field private mUserUniqueIdLast:Ljava/lang/String;

.field private needInitOnPrivacyAgreed:Z

.field private runningCloud:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2.5.0.0-rc6"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->hostVersion:Landroid/util/Pair;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->allPluginVersion:Ljava/util/Map;

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->needInitOnPrivacyAgreed:Z

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUnionMode:I

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    .line 81
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isAppLogPrepared:Z

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mDebugInfoParams:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    .line 92
    iput-wide v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mInstallRandomId:J

    .line 98
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->cloudTest:Z

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mComponents:Ljava/lang/String;

    .line 106
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;

    invoke-virtual {v2}, Lcom/bytedance/ttgame/tob/common/host/framework/util/UUIDUtils;->getUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->launchId:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    .line 111
    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    :try_start_0
    const-string v1, "com.bytedance.ttgame.tob.packer.common.BuildConfig"

    .line 116
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 120
    :catch_0
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isPluginSdk:Z

    return-void
.end method

.method private cachedAllPluginVersion(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dae3c101e2140f1a4660254f4ca1b634"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 201
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$1;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getAllPluginVersionFromCached()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2a145bb28bba98bbd361f4601c576270"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "repo_name_cached_plugin_version"

    .line 177
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 178
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_0

    .line 188
    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;
    .locals 1

    .line 124
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sInstance:Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    return-object v0
.end method

.method private getUnionModeByOsdkType(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "b9e090eea897932f4a94032890560aca"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const-string v1, "Android_Merge"

    .line 431
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Android_GameId"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Android_Official"

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-string v0, "Omnichannel_DataLink"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0xb

    return p1

    :cond_3
    const-string v0, "Omnichannel_ActivityLink"

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xc

    return p1

    :cond_4
    const/16 p1, 0x64

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method private initUnionMode()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8ea40ef40e6283f9f492f58c99591448"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string v2, "first_union_mode"

    .line 414
    invoke-static {v2, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    iget v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 417
    invoke-virtual {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->setPrivacyAgreed(Z)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    iget v0, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->unionMode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 422
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->osdkType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getUnionModeByOsdkType(Ljava/lang/String;)I

    move-result v0

    .line 425
    :cond_2
    invoke-static {v2, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putInt(Ljava/lang/String;I)V

    .line 426
    iput v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUnionMode:I

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "union_mode"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->addEventExternalParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addDebugInfoParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "10fba6a364290ac1ef752f786139a22a"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mDebugInfoParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public addEventExternalParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4cc798d3a6e3f0c2a1e39091b141fe11"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public addEventExternalParams(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bb99e716031e09661046c76260a48795"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public getAllPluginVersion()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6447f97355047a8adbf17a9c246edc50"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->allPluginVersion:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->allPluginVersion:Ljava/util/Map;

    return-object v0

    .line 169
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getAllPluginVersionFromCached()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getComponents()Ljava/lang/String;
    .locals 6

    const-string v0, "CommonCoreData"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "d3939010f1de075fdde659aaf3ec9dd9"

    invoke-static {v2, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mComponents:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mComponents:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v2, ""

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->componentsInfo:Lgbsdk/common/host/abri;

    invoke-virtual {v3}, Lgbsdk/common/host/abri;->el()Ljava/util/List;

    move-result-object v3

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    if-lez v1, :cond_2

    const-string v5, "_"

    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    iput-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mComponents:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "getComponents failed: "

    .line 577
    invoke-static {v0, v3, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[osdk_init]getComponents: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getComponentsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8977a513808a40de96ce45ab0f79c569"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->componentsInfo:Lgbsdk/common/host/abri;

    if-nez v0, :cond_1

    const-string v0, "CommonCoreData"

    const-string v1, "CommonCoreData need init!!!"

    .line 587
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 590
    :cond_1
    invoke-virtual {v0}, Lgbsdk/common/host/abri;->el()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    return-object v0
.end method

.method public getDebugInfoParams()Ljava/util/HashMap;
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

    .line 375
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mDebugInfoParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEnv()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0fe90a89708e22d36a2670ddb328fbd0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->runningCloud:Ljava/lang/Boolean;

    const-string v1, "cloud_game_3rd"

    const-string v2, "osdk"

    const-string v3, "cloud_game"

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getCloudGameInfo()Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object v2

    .line 518
    :cond_3
    invoke-static {}, Lgbsdk/common/host/abrn;->ec()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v3

    .line 524
    :cond_4
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;->getCloudGameInfo()Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    return-object v2
.end method

.method public getGameActivity()Landroid/app/Activity;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mGameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHostVersion()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->hostVersion:Landroid/util/Pair;

    return-object v0
.end method

.method public getInitConfig()Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    return-object v0
.end method

.method public getInitSwitchData()Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initSwitchData:Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    return-object v0
.end method

.method public getInstallRandomId()J
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8f92598153472de6b1baf7f8ef9bf531"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 399
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mInstallRandomId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    const-string v0, "install_random_id"

    .line 403
    invoke-static {v0, v2, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mInstallRandomId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 405
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mInstallRandomId:J

    .line 406
    invoke-static {v0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putLong(Ljava/lang/String;J)V

    .line 408
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mInstallRandomId:J

    return-wide v0
.end method

.method public getIsCloudGameValue()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "92ddded738e1275bd644c7176d1970a7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getEnv()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cloud_game"

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v2, "cloud_game_3rd"

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_2
    return v0
.end method

.method public getLaunchId()Ljava/lang/String;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->launchId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogExtra()Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    return-object v0
.end method

.method public getPluginVersion()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "52297a765f18a5cfc4039a4313a95bd4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    return-object v0

    .line 164
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;

    invoke-interface {v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginContext;->getChannelVersion()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSessionValue()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mSessionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsResponse()Ljava/lang/String;
    .locals 1

    .line 379
    sget-object v0, Lgbsdk/common/host/abrl;->Dd:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionMode()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUnionMode:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserUniqueId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e528c8fabf4398bb4b0ef851b75a1f86"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserUniqueIdLast:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserUniqueIdLast:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "cached_user_unique_id_last"

    const-string v1, ""

    .line 459
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "24890affa46a36e0b81f8365b647ef9e"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->appContext:Landroid/content/Context;

    .line 130
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    invoke-static {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ConfigJsonParser;->parse(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mConfig:Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    .line 131
    new-instance v0, Lgbsdk/common/host/abri;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->componentsInfo:Lgbsdk/common/host/abri;

    .line 132
    const-class p1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-static {p1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;

    invoke-interface {p1}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/HostService;->getAppLogDelegate()Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    .line 133
    new-instance v0, Lgbsdk/common/host/abrk;

    invoke-direct {v0}, Lgbsdk/common/host/abrk;-><init>()V

    invoke-interface {p1, v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V

    .line 134
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initUnionMode()V

    return-void
.end method

.method public isCloudTest()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->cloudTest:Z

    return v0
.end method

.method public isNeedInitOnPrivacyAgreed()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->needInitOnPrivacyAgreed:Z

    return v0
.end method

.method public isPluginSdk()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isPluginSdk:Z

    return v0
.end method

.method public isPrivacyAgreed()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "894370f7164e528c5b078157ad6bf1b8"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "is_agree_privacy_protection"

    .line 391
    invoke-static {v1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRunningCloud()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->runningCloud:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 474
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRunningCloudBackChannel()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2d21bba6766c5e74b90ba70c6cec6c5a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud_game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needRequestDataLinkSwitch()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3b41eabc66a48e4e0190ad375b0e0a3c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 600
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getConfig()Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/CommonConfig;->debugMode:Z

    if-nez v1, :cond_1

    const-class v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    .line 601
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isOmnichannel()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->appContext:Landroid/content/Context;

    .line 602
    invoke-static {v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/AppInfoUtil;->isLocalTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->getInstance()Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isRunningCloudBackChannel()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lgbsdk/common/host/abrb;->Dw:Lgbsdk/common/host/abrb$ab;

    .line 604
    invoke-virtual {v1}, Lgbsdk/common/host/abrb$ab;->er()Lgbsdk/common/host/abrb;

    move-result-object v1

    iget-boolean v1, v1, Lgbsdk/common/host/abrb;->DD:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppLogPrepared()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "13a8f5fad1804ca117f0d48447d753a2"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isAppLogPrepared:Z

    .line 345
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$3;

    invoke-direct {v1, p0}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$3;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "6d8986dc401d9e482d90654d11a3bf62"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(ZLjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sendLog(ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "osdk_"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "40798c54beebf56b0b6160d0cda82a9a"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 262
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 268
    :cond_1
    sget-object p1, Lgbsdk/common/host/abqs;->BM:Lgbsdk/common/host/abqs;

    invoke-virtual {p1}, Lgbsdk/common/host/abqs;->dV()V

    if-nez p3, :cond_2

    .line 271
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string p1, "platform_app_id"

    const-string v0, "3176"

    .line 274
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    invoke-static {}, Lgbsdk/common/host/abrn;->ed()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "attribution"

    .line 278
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    :cond_3
    invoke-static {}, Lgbsdk/common/host/abrn;->getTicketId()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ticket_id"

    .line 284
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    :cond_4
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 289
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mExternalParams:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 298
    :cond_6
    iget-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->appLogDelegate:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/AppLogDelegate;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 302
    const-class p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-static {p2}, Lcom/bytedance/ttgame/tob/framework/service/common/ServiceManager;->getService(Ljava/lang/Class;)Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;

    invoke-interface {p2}, Lcom/bytedance/ttgame/tob/common/host/base/api/core/ICoreDataService;->isDebugMode()Z

    move-result p2

    const-string p3, "sendLog exception: "

    if-nez p2, :cond_7

    .line 305
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CommonCoreData"

    invoke-static {p3, p2, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 303
    :cond_7
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sendLogWithCache(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "518451941b1cc27218b02df31391daf5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->isAppLogPrepared:Z

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->sendLog(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 324
    :goto_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData$2;-><init>(Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p3, :cond_3

    .line 334
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->diskIO()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 336
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public setCloudTest(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->cloudTest:Z

    return-void
.end method

.method public setGameActivity(Landroid/app/Activity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mGameActivity:Landroid/app/Activity;

    return-void
.end method

.method public declared-synchronized setInitConfig(Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;)V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initConfig:Lcom/bytedance/ttgame/tob/common/host/api/config/InitConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInitSwitchData(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->initSwitchData:Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    return-void
.end method

.method public setNeedInitOnPrivacyAgreed(Z)V
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->needInitOnPrivacyAgreed:Z

    return-void
.end method

.method public setPluginVersion(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "4516c68635db06aa8edc6f03403bf254"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->allPluginVersion:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->allPluginVersion:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->cachedAllPluginVersion(Ljava/util/Map;)V

    return-void
.end method

.method public setPrivacyAgreed(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a30ff1fb22b2f96b2320c17d58fb8ed6"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "is_agree_privacy_protection"

    .line 395
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRunningCloud(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b0e8ad0d9ca220029cf52f6dc3992ba2"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->runningCloud:Ljava/lang/Boolean;

    return-void
.end method

.method public setSessionValue(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mSessionValue:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "50b664979f4942749cf25fac7067c975"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-static {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 450
    :cond_1
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->mUserUniqueIdLast:Ljava/lang/String;

    const-string v0, "cached_user_unique_id_last"

    .line 451
    invoke-static {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDygameLogExtra(Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 629
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/impl/core/CommonCoreData;->logExtra:Lcom/bytedance/ttgame/tob/common/host/base/api/core/DygameLogExtra;

    :cond_0
    return-void
.end method
