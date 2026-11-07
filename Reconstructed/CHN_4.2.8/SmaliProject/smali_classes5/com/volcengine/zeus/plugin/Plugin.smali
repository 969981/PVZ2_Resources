.class public Lcom/volcengine/zeus/plugin/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIFE_INSTALLED:I = 0x2

.field public static final LIFE_LOADED:I = 0x3

.field public static final LIFE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Plugin"


# instance fields
.field final initializeLock:Ljava/lang/Object;

.field final installLock:Ljava/lang/Object;

.field private mAllowInstallVersion:I

.field private mApiVersionCode:I

.field public final mAppKey:Ljava/lang/String;

.field public final mAppSecretKey:Ljava/lang/String;

.field public mApplication:Lcom/volcengine/zeus/ZeusApplication;

.field public mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

.field public mHostApplication:Lcom/volcengine/zeus/wrapper/PluginApplicationWrapper;

.field public mHostApplicationInfoHookSomeField:Landroid/content/pm/ApplicationInfo;

.field private volatile mInitialized:Z

.field public mInternalPath:Ljava/lang/String;

.field private mInternalVersionCode:I

.field public mIsSupportLibIso:Z

.field private volatile mLifeCycle:I

.field public mMaxVersionCode:I

.field public mMinVersionCode:I

.field public final mOpenLoadClassOpt:Z

.field private mPackageDir:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public final mReInstallInternalPluginByMd5:Z

.field public mResources:Landroid/content/res/Resources;

.field public final mSharedHostSos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSignature:Ljava/lang/String;

.field public final mUnInstallPluginWhenHostChange:Z

.field public final mUseMemoryForActivityIntent:Z

.field private mVersionCode:I

.field public pluginActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginReceiver:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pluginServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->pluginServices:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->pluginReceiver:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->pluginProvider:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I

    const v1, 0x7fffffff

    .line 140
    iput v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    const/4 v2, 0x1

    .line 144
    iput v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mSharedHostSos:Ljava/util/List;

    .line 195
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->installLock:Ljava/lang/Object;

    .line 204
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->initializeLock:Ljava/lang/Object;

    .line 209
    iput v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mAllowInstallVersion:I

    const-string v2, "packageName"

    .line 212
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const-string v2, "minPluginVersion"

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMinVersionCode:I

    const-string v2, "maxPluginVersion"

    .line 214
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    const-string v1, "apiVersionCode"

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mApiVersionCode:I

    .line 216
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v1

    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/volcengine/zeus/GlobalParam;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mSignature:Ljava/lang/String;

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "signature"

    .line 218
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mSignature:Ljava/lang/String;

    :cond_0
    const-string v1, "isSupportLibIsolate"

    .line 220
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mIsSupportLibIso:Z

    const-string v1, "internalPath"

    .line 221
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    const-string v1, "internalVersionCode"

    .line 222
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I

    const-string v0, "appKey"

    .line 223
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mAppKey:Ljava/lang/String;

    const-string v0, "appSecretKey"

    .line 224
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mAppSecretKey:Ljava/lang/String;

    const-string v0, "loadClassOpt"

    .line 225
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mOpenLoadClassOpt:Z

    const-string v0, "unInstallPluginWhenHostChange"

    .line 226
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mUnInstallPluginWhenHostChange:Z

    const-string v0, "useMemoryForActivityIntent"

    .line 227
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mUseMemoryForActivityIntent:Z

    const-string v0, "reInstallInternalPluginByMd5"

    .line 228
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mReInstallInternalPluginByMd5:Z

    const-string v0, "sharedHostSo"

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 231
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mSharedHostSos:Ljava/util/List;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->setupInternalPlugin()V

    return-void
.end method

.method private checkValid(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 7

    .line 692
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Plugin checkValid "

    const-string v2, "Zeus/install_zeus"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " package name not match !!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 697
    :cond_0
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMinVersionCode:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt p3, v0, :cond_6

    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    if-le p3, v0, :cond_1

    goto/16 :goto_1

    .line 705
    :cond_1
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    if-ge p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    .line 706
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    iget p3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v5

    const-string p3, " pluginApk ver[%s] lower than installed plugin[%s]."

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 707
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    if-eqz p1, :cond_5

    .line 712
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 718
    :cond_3
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    if-ne p3, v0, :cond_4

    .line 719
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    .line 7240
    iget-object v0, v0, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "IDENTITY_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {p1}, Lgbsdk/common/host/acbu;->Q(Ljava/io/File;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pluginApk with the same identity has already installed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 726
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " true"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 713
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pluginApk not exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    :goto_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 699
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v3

    iget p3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMinVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v5

    iget p3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    const-string p3, " pluginApk ver[%s] not match plugin VerRange[%s, %s]."

    .line 698
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 700
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private checkVersionValid(IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 493
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v3

    iget-object v4, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "Plugin"

    const/4 v6, 0x2

    const-string v7, "Zeus/init_zeus"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v3, v2, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 496
    iget-object v4, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v4, v1, v9

    .line 497
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, " checkVersionValid %s apiVersion downgrade , lastApiVersion=%s , currentApiVersion=%s"

    .line 496
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    if-ltz v1, :cond_1

    .line 503
    iget v3, v0, Lcom/volcengine/zeus/plugin/Plugin;->mMinVersionCode:I

    if-lt v1, v3, :cond_1

    iget v3, v0, Lcom/volcengine/zeus/plugin/Plugin;->mMaxVersionCode:I

    if-gt v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const/4 v10, -0x1

    if-eq v2, v10, :cond_4

    .line 508
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v10

    iget-object v11, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 4187
    iget-object v10, v10, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "API_MIN_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 509
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v12

    iget-object v13, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 4191
    iget-object v12, v12, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "API_MAX_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v13, 0x7fffffff

    invoke-interface {v12, v11, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    if-lt v2, v10, :cond_3

    if-le v2, v13, :cond_4

    :cond_3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 512
    iget-object v11, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v11, v3, v9

    iget v11, v0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    .line 513
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, " checkVersionValid plugin[%s, ver=%s] is not compatible with api[ver_code=%s], apiCompatibleVer=[%s,%s]"

    .line 512
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    .line 520
    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v4, v1}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lgbsdk/common/host/abxx;->e(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-array v2, v6, [Ljava/lang/Object;

    .line 522
    iget-object v3, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const-string v1, " checkVersionValid plugin[%s, ver=%s] not match hostAbi"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v9, v3

    .line 525
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Plugin checkVersionValid, pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method private deleteIfNeeded()V
    .locals 4

    .line 533
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 4236
    iget-object v0, v0, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNINSTALL__"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 5230
    iget-object v0, v0, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5231
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->deleteInstalledPlugin()V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin deleteIfNeeded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/init_zeus"

    invoke-static {v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private deleteInstalledPlugin()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abxw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 547
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/volcengine/zeus/plugin/Plugin$3;

    invoke-direct {v1, p0}, Lcom/volcengine/zeus/plugin/Plugin$3;-><init>(Lcom/volcengine/zeus/plugin/Plugin;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 557
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/acbs;->a(Ljava/lang/String;)V

    return-void
.end method

.method private deleteOtherExpiredVer(I)V
    .locals 2

    .line 566
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abxw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 570
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "version-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 571
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/volcengine/zeus/plugin/Plugin$4;

    invoke-direct {v1, p0, p1}, Lcom/volcengine/zeus/plugin/Plugin$4;-><init>(Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    :cond_1
    return-void
.end method

.method private isAllowInstall(I)Z
    .locals 3

    .line 677
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mAllowInstallVersion:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private modifyResIfNeed(I)I
    .locals 5

    .line 352
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/acbz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgbsdk/common/host/acam;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    .line 355
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mUnInstallPluginWhenHostChange:Z

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "Zeus/init_zeus"

    if-nez v0, :cond_5

    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    iget-object v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/volcengine/zeus/GlobalParam;->unInstallPluginWhenHostChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "modifyRes by init. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    new-instance v2, Lgbsdk/common/host/abzl;

    invoke-direct {v2}, Lgbsdk/common/host/abzl;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v4, p1}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lgbsdk/common/host/abzl;->a(Ljava/io/File;ZLjava/lang/StringBuilder;)I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return p1

    .line 357
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "uninstall plugin by host update. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private setupInternalPlugin()V
    .locals 9

    const-string v0, "_"

    .line 239
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mApiVersionCode:I

    .line 1292
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v2, "OFFLINE_INTERNAL_%s"

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I

    if-eq v1, v4, :cond_2

    return-void

    .line 249
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lgbsdk/common/host/abyz;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v7, v2, :cond_4

    aget-object v3, v1, v7

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lgbsdk/common/host/acan;->a(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lgbsdk/common/host/abyz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    .line 256
    iput v6, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Zeus/install_zeus"

    const-string v2, "setupInternalPlugin failed."

    .line 261
    invoke-static {v1, v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateInstallStateFromMainProcess()V
    .locals 3

    .line 401
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 403
    invoke-static {}, Lgbsdk/common/host/acbg;->hV()Lgbsdk/common/host/abyc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgbsdk/common/host/abyc;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lgbsdk/common/host/abyc;->b(Ljava/lang/String;)I

    move-result v0

    .line 408
    invoke-direct {p0, v0}, Lcom/volcengine/zeus/plugin/Plugin;->updateToInstalled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateInstallStateFromMainProcess error. process = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    invoke-static {}, Lgbsdk/common/host/abxz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zeus/ppm_zeus"

    .line 415
    invoke-static {v2, v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private updateToInstalled(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    const/4 p1, 0x2

    .line 435
    iput p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    return-void
.end method


# virtual methods
.method public getApiVersionCode()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mApiVersionCode:I

    return v0
.end method

.method public getInstalledMaxVer()I
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abxw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    .line 457
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPackageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/volcengine/zeus/plugin/Plugin$2;

    invoke-direct {v1, p0}, Lcom/volcengine/zeus/plugin/Plugin$2;-><init>(Lcom/volcengine/zeus/plugin/Plugin;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 466
    array-length v2, v0

    if-lez v2, :cond_2

    .line 467
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 468
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_1

    .line 470
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v5

    iget-object v6, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lgbsdk/common/host/acam;->w(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    iget-object v5, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v5, v4}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 472
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Plugin getInstalledMaxVersion, pkg="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maxVer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Zeus/init_zeus"

    invoke-static {v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getInternalPath()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalVersionCode()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I

    return v0
.end method

.method public getLifeCycle()I
    .locals 1

    .line 378
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 379
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    return v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 2

    .line 736
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    if-lez v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v1, v0}, Lgbsdk/common/host/abxw;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/abxw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 388
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    return v0
.end method

.method init()V
    .locals 9

    .line 270
    iget-boolean v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->initializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 275
    monitor-exit v0

    return-void

    .line 278
    :cond_1
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 281
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 2103
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v4, "HOST_ABI_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 282
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 2112
    iget-object v5, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v6, "HOST_ABI_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Zeus/init_zeus"

    .line 2113
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ZeusSpUtils isHostAbiUpdate HOST_ABI="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v8, "HOST_ABI_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 285
    :goto_1
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->deleteIfNeeded()V

    .line 286
    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getInstalledMaxVer()I

    move-result v1

    .line 287
    iget v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mApiVersionCode:I

    invoke-direct {p0, v1, v4, v5}, Lcom/volcengine/zeus/plugin/Plugin;->checkVersionValid(IIZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    invoke-direct {p0, v1}, Lcom/volcengine/zeus/plugin/Plugin;->modifyResIfNeed(I)I

    move-result v3

    .line 290
    invoke-direct {p0, v3}, Lcom/volcengine/zeus/plugin/Plugin;->updateToInstalled(I)V

    .line 294
    :cond_4
    invoke-direct {p0, v3}, Lcom/volcengine/zeus/plugin/Plugin;->deleteOtherExpiredVer(I)V

    const-string v1, "Zeus/init_zeus"

    const-string v3, "Plugin initPlugins result="

    .line 295
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 3077
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "ROM_LAST_"

    .line 3078
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3079
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 3121
    iget-object v4, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    const-string v5, "HOST_ABI_"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3122
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "HOST_ABI_"

    .line 3123
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "Zeus/init_zeus"

    .line 3125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ZeusSpUtils setHostAbiUpdated HOST_ABI="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getHostAbi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lgbsdk/common/host/acbz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 3170
    invoke-virtual {v1, v3}, Lgbsdk/common/host/acam;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3171
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3172
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "HOST_IDENTITY_"

    .line 3173
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v1, "Zeus/init_zeus"

    .line 3176
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ZeusSpUtils setHostIdentity("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v1

    iget-object v3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    iget v4, p0, Lcom/volcengine/zeus/plugin/Plugin;->mApiVersionCode:I

    .line 4145
    invoke-virtual {v1, v3}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 4147
    iget-object v1, v1, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "PLUGIN_API_VERSION_"

    .line 4148
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4149
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string v1, "Zeus/init_zeus"

    .line 4151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "ZeusSpUtils setPluginApiVersion "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 304
    :cond_7
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 306
    :goto_2
    iput-boolean v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInitialized:Z

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {p0, v2}, Lcom/volcengine/zeus/plugin/Plugin;->installInternalPlugin(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 307
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public injectResponse(Ljava/lang/String;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->response:Ljava/lang/String;

    return-void
.end method

.method public install(Ljava/io/File;Lgbsdk/common/host/abwx;)Ljava/lang/String;
    .locals 9

    :try_start_0
    const-string v0, "Zeus/install_zeus"

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Plugin install from local file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p2, Lgbsdk/common/host/abwx;->a:Ljava/lang/String;

    .line 621
    iget p2, p2, Lgbsdk/common/host/abwx;->b:I

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pkg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 624
    iget-object v2, p0, Lcom/volcengine/zeus/plugin/Plugin;->installLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "Zeus/install_zeus"

    const-string v4, "Plugin synchronized begin, plugin="

    .line 625
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, p1, v0, p2}, Lcom/volcengine/zeus/plugin/Plugin;->checkValid(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-static {p1, v0, p2}, Lgbsdk/common/host/abzr;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 631
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " install internal error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez v4, :cond_2

    .line 634
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v6, p2}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lgbsdk/common/host/acbu;->Q(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 635
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v6

    iget-object v7, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 6244
    iget-object v6, v6, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "IDENTITY_"

    .line 6245
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6246
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v6

    iget-object v7, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, p2, v8}, Lgbsdk/common/host/acam;->a(Ljava/lang/String;IZ)V

    const-string v6, "Zeus/install_zeus"

    .line 637
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Plugin markPluginInstalled, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " identity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {p1}, Lgbsdk/common/host/acbs;->a(Ljava/io/File;)V

    goto :goto_1

    .line 642
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " checkValid failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 646
    :cond_2
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_5

    .line 649
    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    iget p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    invoke-direct {p0, p2}, Lcom/volcengine/zeus/plugin/Plugin;->isAllowInstall(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 652
    invoke-direct {p0, p2}, Lcom/volcengine/zeus/plugin/Plugin;->updateToInstalled(I)V

    const-string p1, "Zeus/install_zeus"

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Plugin INSTALLED "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "Zeus/install_zeus"

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Plugin LIFE_LOADED, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " valid next restart. lifeCycle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAllowInstall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/volcengine/zeus/plugin/Plugin;->isAllowInstall(I)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "Zeus/install_zeus"

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Plugin INSTALL_FAILED"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {p1}, Lgbsdk/common/host/acbs;->a(Ljava/io/File;)V

    const-string p1, "Zeus/install_zeus"

    const-string p2, "Plugin delete file."

    .line 661
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 664
    :cond_5
    invoke-static {p1}, Lgbsdk/common/host/acbs;->a(Ljava/io/File;)V

    const-string p1, "Zeus/install_zeus"

    const-string p2, "Plugin deleting invalid. "

    .line 665
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 667
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 668
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 670
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string p2, "Zeus/install_zeus"

    const-string v0, "Plugin IMPOSSIBLE!!!"

    .line 671
    invoke-static {p2, v0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v5
.end method

.method public declared-synchronized installInternalPlugin(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object p1

    iget-object v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/volcengine/zeus/GlobalParam;->isAutoInstallInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 317
    monitor-exit p0

    return-void

    .line 320
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abxz;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mReInstallInternalPluginByMd5:Z

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result p1

    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le p1, v0, :cond_2

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result p1

    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalVersionCode:I

    if-ge p1, v0, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mInternalPath:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 327
    :cond_3
    new-instance p1, Lcom/volcengine/zeus/plugin/Plugin$1;

    invoke-direct {p1, p0}, Lcom/volcengine/zeus/plugin/Plugin$1;-><init>(Lcom/volcengine/zeus/plugin/Plugin;)V

    invoke-static {p1}, Lgbsdk/common/host/abxy;->d(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 323
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInstalled()Z
    .locals 2

    .line 424
    invoke-direct {p0}, Lcom/volcengine/zeus/plugin/Plugin;->updateInstallStateFromMainProcess()V

    .line 425
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 445
    iget v0, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVersionInstalled(I)Z
    .locals 2

    .line 604
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/acam;->w(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setAllowInstallVersion(I)V
    .locals 0

    .line 757
    iput p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mAllowInstallVersion:I

    return-void
.end method

.method public setApiCompatVersion(III)V
    .locals 4

    .line 594
    invoke-static {}, Lgbsdk/common/host/acam;->hY()Lgbsdk/common/host/acam;

    move-result-object v0

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    .line 6180
    iget-object v0, v0, Lgbsdk/common/host/acam;->cv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API_MIN_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6182
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "API_MAX_"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLifeCycle(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin{pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", life="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mLifeCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
