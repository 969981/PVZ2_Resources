.class public Lcom/volcengine/zeus/provider/ContentProviderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/volcengine/zeus/provider/ContentProviderManager$ab;,
        Lcom/volcengine/zeus/provider/ContentProviderManager$ad;,
        Lcom/volcengine/zeus/provider/ContentProviderManager$ac;
    }
.end annotation


# static fields
.field public static final LIVE_META_PROVIDER_PATHS:Ljava/lang/String; = "android-support-FILE_PROVIDER_PATHS"

.field public static final PLUGIN_PKG_NAME:Ljava/lang/String; = "plugin_pkg_name"

.field public static final PLUGIN_PROCESS_NAME:Ljava/lang/String; = "process_name"

.field public static final PROVIDER_PARAM_FEILD:Ljava/lang/String; = "provider_params"

.field public static final PROVIDER_PLUGIN_AUTHORITY:Ljava/lang/String; = "provider_params"

.field public static final PROVIDER_PROXY_URI:Ljava/lang/String; = "provider_proxy_uri"

.field public static final PROVIDER_URI:Ljava/lang/String; = "uri"

.field private static sInstance:Lcom/volcengine/zeus/provider/ContentProviderManager;


# instance fields
.field private final mAuthorityProcessNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/volcengine/zeus/provider/ContentProviderManager$ac;",
            "Lcom/volcengine/zeus/provider/ContentProviderManager$ab;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemProviderInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/volcengine/zeus/provider/ContentProviderManager$ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mContentProviderMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mAuthorityProcessNameMap:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mSystemProviderInfoMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/volcengine/zeus/provider/ContentProviderManager;
    .locals 2

    .line 128
    sget-object v0, Lcom/volcengine/zeus/provider/ContentProviderManager;->sInstance:Lcom/volcengine/zeus/provider/ContentProviderManager;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Lcom/volcengine/zeus/provider/ContentProviderManager;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/volcengine/zeus/provider/ContentProviderManager;->sInstance:Lcom/volcengine/zeus/provider/ContentProviderManager;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/volcengine/zeus/provider/ContentProviderManager;

    invoke-direct {v1}, Lcom/volcengine/zeus/provider/ContentProviderManager;-><init>()V

    sput-object v1, Lcom/volcengine/zeus/provider/ContentProviderManager;->sInstance:Lcom/volcengine/zeus/provider/ContentProviderManager;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :goto_0
    sget-object v0, Lcom/volcengine/zeus/provider/ContentProviderManager;->sInstance:Lcom/volcengine/zeus/provider/ContentProviderManager;

    return-object v0
.end method

.method private hasFileProviderPath(Landroid/content/pm/ProviderInfo;)Z
    .locals 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "providerInfo metaData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Zeus/provider_zeus"

    invoke-static {v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "gbsdk.android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android-support-FILE_PROVIDER_PATHS"

    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private installProvider(Ljava/lang/String;Landroid/content/pm/ProviderInfo;Lcom/volcengine/zeus/plugin/Plugin;)V
    .locals 3

    const-string v0, "Zeus/provider_zeus"

    if-nez p2, :cond_0

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ProviderInfo is null !! can not install plugin provider \uff0c plugin-mPkgName\uff1a\u3010"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u3011"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Start install plugin provider [authority:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [className:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-direct {p0, p3, p2}, Lcom/volcengine/zeus/provider/ContentProviderManager;->instantiateProvider(Lcom/volcengine/zeus/plugin/Plugin;Landroid/content/pm/ProviderInfo;)Lcom/volcengine/zeus/provider/PluginContentProvider;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 252
    :cond_1
    iget-object v2, p3, Lcom/volcengine/zeus/plugin/Plugin;->mHostApplication:Lcom/volcengine/zeus/wrapper/PluginApplicationWrapper;

    iget-object p3, p3, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-static {v2, p3}, Lcom/volcengine/zeus/transform/ZeusTransformUtils;->wrapperContext(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/volcengine/zeus/provider/PluginContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 253
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Install plugin provider finish and invoke plugin provider attachInfo(onCreate) method finish [className:"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/volcengine/zeus/log/ZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    new-instance p3, Lcom/volcengine/zeus/provider/ContentProviderManager$ac;

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p3, v0, v1, v2}, Lcom/volcengine/zeus/provider/ContentProviderManager$ac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;

    invoke-direct {v0, p3, p2, p1}, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;-><init>(Lcom/volcengine/zeus/provider/ContentProviderManager$ac;Landroid/content/pm/ProviderInfo;Lcom/volcengine/zeus/provider/PluginContentProvider;)V

    .line 260
    iget-object p1, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mContentProviderMap:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Instantiating Exception : "

    .line 255
    invoke-static {v0, p2, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 262
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mAuthorityProcessNameMap:Ljava/util/Map;

    iget-object p3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private instantiateProvider(Lcom/volcengine/zeus/plugin/Plugin;Landroid/content/pm/ProviderInfo;)Lcom/volcengine/zeus/provider/PluginContentProvider;
    .locals 4

    .line 272
    iget-object v0, p1, Lcom/volcengine/zeus/plugin/Plugin;->mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/volcengine/zeus/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isProvider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v2, v0, Lgbsdk/android/support/v4/content/FileProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasPath:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/volcengine/zeus/provider/ContentProviderManager;->hasFileProviderPath(Landroid/content/pm/ProviderInfo;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Zeus/provider_zeus"

    invoke-static {v3, v1}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    .line 274
    invoke-direct {p0, p2}, Lcom/volcengine/zeus/provider/ContentProviderManager;->hasFileProviderPath(Landroid/content/pm/ProviderInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    check-cast v0, Lcom/volcengine/zeus/provider/PluginContentProvider;

    return-object v0

    .line 275
    :cond_1
    :goto_0
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 279
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "gbsdk.android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android-support-FILE_PROVIDER_PATHS"

    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    :cond_2
    iget-object p2, p1, Lcom/volcengine/zeus/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 284
    invoke-static {p1, p2}, Lcom/volcengine/zeus/FileProvider;->a(Lcom/volcengine/zeus/plugin/Plugin;Landroid/content/res/XmlResourceParser;)V

    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Missing android.support.FILE_PROVIDER_PATHS meta-data. provider:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public call(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 192
    invoke-static/range {p1 .. p6}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 196
    invoke-static/range {p1 .. p6}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 0

    .line 180
    invoke-static {p1, p2, p3, p4}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 176
    invoke-static {p1, p2, p3, p4, p5}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPluginProcessNameByAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mAuthorityProcessNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPluginProvider(Lcom/volcengine/zeus/provider/ContentProviderManager$ac;)Lcom/volcengine/zeus/provider/PluginContentProvider;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mContentProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_0
    iget-object p1, p1, Lcom/volcengine/zeus/provider/ContentProviderManager$ab;->aMW:Lcom/volcengine/zeus/provider/PluginContentProvider;

    return-object p1
.end method

.method public getType(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-static {p1, p2, p3}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initSystemContentProviderInfo()V
    .locals 12

    const-string v0, "]"

    const-string v1, "],[authority:"

    const-string v2, "],[processName="

    const-string v3, ".zeus.provider.proxy."

    const-string v4, "Zeus/provider_zeus"

    .line 295
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 296
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_1

    .line 297
    array-length v6, v5

    if-eqz v6, :cond_1

    .line 298
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    if-eqz v8, :cond_0

    .line 299
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 303
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Need to init system provider info start [packageNam:="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 306
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v9}, Lgbsdk/common/host/abxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    new-instance v10, Lcom/volcengine/zeus/provider/ContentProviderManager$ad;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9, v8}, Lcom/volcengine/zeus/provider/ContentProviderManager$ad;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V

    .line 308
    iget-object v11, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mSystemProviderInfoMap:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Init system provider info finish [packageNam:="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    .line 312
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Init system contentProviderInfo [authority:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "],exception\uff1a"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v9}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "init System ContentProviderInfo exception\uff1a"

    .line 317
    invoke-static {v4, v1, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 172
    invoke-static {p1, p2, p3, p4, p5}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 168
    invoke-static {p1, p2, p3, p4}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public installContentProviders(Ljava/util/Collection;Lcom/volcengine/zeus/plugin/Plugin;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Lcom/volcengine/zeus/plugin/Plugin;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 220
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    invoke-static {}, Lgbsdk/common/host/abxz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abxz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 224
    sget-boolean v2, Lcom/volcengine/zeus/log/ZeusLogger;->sDebug:Z

    if-eqz v2, :cond_1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Install plugin provider [authority:"

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] - [className:"

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Zeus/provider_zeus"

    invoke-static {v3, v2}, Lcom/volcengine/zeus/log/ZeusLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lcom/volcengine/zeus/provider/ContentProviderManager;->installProvider(Ljava/lang/String;Landroid/content/pm/ProviderInfo;Lcom/volcengine/zeus/plugin/Plugin;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected isPluginProvider(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/volcengine/zeus/provider/ContentProviderManager;->mAuthorityProcessNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 203
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 160
    invoke-static/range {p1 .. p6}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 149
    invoke-static/range {p1 .. p8}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 154
    invoke-static/range {p1 .. p7}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 0

    .line 188
    invoke-static {p1, p2, p3, p4, p5}, Lcom/volcengine/zeus/provider/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public update(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 184
    invoke-static/range {p1 .. p6}, Lcom/volcengine/zeus/provider/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
