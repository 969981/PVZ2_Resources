.class public Lgbsdk/common/host/abym;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aLE:Lgbsdk/common/host/abym;


# instance fields
.field aLF:Lcom/volcengine/zeus/download/IDownloader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->getDownloaderProvider()Lcom/volcengine/zeus/download/IDownloaderProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/volcengine/zeus/download/IDownloaderProvider;->getDownloader()Lcom/volcengine/zeus/download/IDownloader;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abym;->aLF:Lcom/volcengine/zeus/download/IDownloader;

    .line 52
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abym;->aLF:Lcom/volcengine/zeus/download/IDownloader;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Lgbsdk/common/host/abyq;

    invoke-direct {v0}, Lgbsdk/common/host/abyq;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abym;->aLF:Lcom/volcengine/zeus/download/IDownloader;

    :cond_1
    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    .line 1171
    sget v0, Lgbsdk/common/host/abya$ab;->j:I

    add-int/lit16 v0, v0, -0x3e8

    add-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 0

    .line 2124
    invoke-static {p0}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 29
    invoke-static/range {v0 .. v5}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;ILjava/lang/String;IJ)V

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 4

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 206
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 209
    invoke-static {p2}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 210
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 211
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lgbsdk/common/host/abzx;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abya;->hF()Lgbsdk/common/host/abya;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v1, v2}, Lgbsdk/common/host/abya;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;JLcom/volcengine/zeus/download/PluginDownloadBean;)V
    .locals 10

    .line 1136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {v0}, Lgbsdk/common/host/acbv;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 1140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1142
    :goto_0
    invoke-static {v0}, Lgbsdk/common/host/abxx;->M(Ljava/io/File;)Lgbsdk/common/host/acbq;

    move-result-object v3

    iget-object v3, v3, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    .line 1146
    sget-object v4, Lgbsdk/common/host/abya;->d:Ljava/lang/String;

    sget v5, Lgbsdk/common/host/abya$ab;->g:I

    iget-object v6, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget v7, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;ILjava/lang/String;IJ)V

    .line 1147
    iget-object p0, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1149
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object p0

    iget-object p1, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/volcengine/zeus/plugin/PluginManager;->syncInstall(Ljava/lang/String;Ljava/io/File;)Z

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 1154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Check md5 failed. "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " != "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1155
    sget p1, Lgbsdk/common/host/abya$ab;->k:I

    goto :goto_1

    .line 1157
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abxx;->a()Ljava/lang/String;

    move-result-object p0

    .line 1158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "PluginAbi not match hostAbi["

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] md5["

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mMd5:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1159
    sget p1, Lgbsdk/common/host/abya$ab;->bd:I

    :goto_1
    move v4, p1

    .line 1162
    sget-object v3, Lgbsdk/common/host/abya;->d:Ljava/lang/String;

    iget-object v5, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    iget v6, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mVersionCode:I

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lgbsdk/common/host/abym;->a(Ljava/lang/String;ILjava/lang/String;IJ)V

    .line 1164
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1166
    iget-object p1, p4, Lcom/volcengine/zeus/download/PluginDownloadBean;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v2

    invoke-static {p1, p2, p3}, Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static hL()Lgbsdk/common/host/abym;
    .locals 2

    .line 36
    sget-object v0, Lgbsdk/common/host/abym;->aLE:Lgbsdk/common/host/abym;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lgbsdk/common/host/abym;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abym;->aLE:Lgbsdk/common/host/abym;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lgbsdk/common/host/abym;

    invoke-direct {v1}, Lgbsdk/common/host/abym;-><init>()V

    sput-object v1, Lgbsdk/common/host/abym;->aLE:Lgbsdk/common/host/abym;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abym;->aLE:Lgbsdk/common/host/abym;

    return-object v0
.end method

.method private static v(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    .line 184
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lgbsdk/common/host/abxw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 190
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Zeus/download_zeus"

    const-string v1, "isPluginDownloaded failed."

    .line 197
    invoke-static {p1, v1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method static synthetic w(Ljava/lang/String;I)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lgbsdk/common/host/abym;->v(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
