.class public Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MobileSecurePayHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 39
    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    .line 331
    new-instance v0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;

    invoke-direct {v0, p0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$4;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;)V

    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 202
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 218
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "needUpdate"

    .line 220
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "updateUrl"

    .line 221
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method closeProgress()V
    .locals 1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public detectMobile_sp()Z
    .locals 7

    .line 51
    invoke-virtual {p0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->isMobile_spExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/temp.apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const-string v3, "alipay_plugin_20120428msp.apk"

    invoke-virtual {p0, v2, v3, v1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "\u6b63\u5728\u68c0\u6d4b\u5b89\u5168\u652f\u4ed8\u670d\u52a1\u7248\u672c"

    invoke-static {v2, v3, v6, v4, v5}, Lcom/tw/pay/sdk/alipay/BaseHelper;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 67
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;

    invoke-direct {v3, p0, v1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$1;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return v0
.end method

.method public isMobile_spExist()Z
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 144
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 146
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.alipay.android.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 171
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 173
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 177
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    invoke-virtual {p3, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public retrieveApkFromNet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 306
    :try_start_0
    new-instance v0, Lcom/tw/pay/sdk/alipay/NetworkManager;

    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tw/pay/sdk/alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v0, p1, p2, p3}, Lcom/tw/pay/sdk/alipay/NetworkManager;->urlDownloadToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 241
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    const-string v2, "update"

    .line 242
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "platform"

    const-string v3, "android"

    .line 245
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    .line 246
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "partner"

    const-string v2, ""

    .line 247
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 249
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 266
    new-instance v0, Lcom/tw/pay/sdk/alipay/NetworkManager;

    iget-object v1, p0, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tw/pay/sdk/alipay/NetworkManager;-><init>(Landroid/content/Context;)V

    .line 273
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "https://msp.alipay.com/x.htm"

    .line 275
    invoke-virtual {v0, p1, v1}, Lcom/tw/pay/sdk/alipay/NetworkManager;->SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 276
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string p1, "MobileSecurePayHelper"

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tw/pay/sdk/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public showInstallConfirmDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "info"

    .line 105
    invoke-static {p1, v1}, Lcom/tw/OnLinePaySdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "confirm_install_hint"

    .line 106
    invoke-static {p1, v1}, Lcom/tw/OnLinePaySdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "confirm_install"

    .line 107
    invoke-static {p1, v1}, Lcom/tw/OnLinePaySdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ensure"

    .line 109
    invoke-static {p1, v1}, Lcom/tw/OnLinePaySdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$2;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p2, "Cancel"

    .line 127
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$3;

    invoke-direct {p2, p0}, Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper$3;-><init>(Lcom/tw/pay/sdk/alipay/MobileSecurePayHelper;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
