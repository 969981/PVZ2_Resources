.class public abstract Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/sdk/ITwOfflineSDK;


# static fields
.field private static final CHANNLEUSERID:Ljava/lang/String; = "channleuserid"

.field private static final CHARACTERID:Ljava/lang/String; = "characterid"

.field private static final ORDER_TEXT:Ljava/lang/String; = "orderData"

.field private static final SAVE_USERINFO_FIEL:Ljava/lang/String; = "userInfo"

.field private static final SAVE_USERINFO_Key:Ljava/lang/String; = "userInfoKey"

.field private static final TWUSERID:Ljava/lang/String; = "twuserid"

.field private static final UPLOAD_TIME:Ljava/lang/String; = "uploadTime"

.field private static apkSaveUrl:Ljava/lang/String;

.field private static dialog:Landroid/app/Dialog;

.field private static fileTotalSize:I

.field public static isVerifyShow:Z

.field private static progressBar:Landroid/widget/ProgressBar;

.field private static tv_progress:Landroid/widget/TextView;


# instance fields
.field private curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

.field private curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

.field private isInit:Z

.field private isLogined:Z

.field private isOrder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isInit:Z

    .line 140
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    .line 145
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isOrder:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->showPaylDialog(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)J
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->readUploadTime(Landroid/app/Activity;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->saveUploadTiem(Landroid/app/Activity;)V

    return-void
.end method

.method private cancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 764
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 765
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->cancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private doInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isInit:Z

    .line 306
    :try_start_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$2;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwInitCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6267\u884c\u6e20\u9053\u521d\u59cb\u5316\u5de5\u4f5c error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1115
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    .line 1116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 1118
    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->genarateUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 1120
    new-instance v2, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$15;

    invoke-direct {v2, p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$15;-><init>(Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x3ed

    .line 1169
    invoke-interface {p1, p0, v0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/16 p0, 0x3ea

    const-string v0, "key can not be null value"

    .line 1108
    invoke-interface {p1, v0, p0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    return-void
.end method

.method public static getApkVersion(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private static getFormatStr(IFF)Ljava/lang/String;
    .locals 0

    .line 1927
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1933
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1960
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1963
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1964
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1965
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "application/vnd.android.package-archive"

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".fileprovider"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 1972
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1973
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1977
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1980
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private order(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 754
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 755
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->order(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 744
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 745
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private static payTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    .line 840
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ordercode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&price="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paytestparams\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 842
    new-instance v0, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;

    new-instance v1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;

    invoke-direct {v1, p1, p3, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$9;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;-><init>(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    .line 860
    sget-object p0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xb

    const/16 p2, 0x3ea

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-ge p0, p1, :cond_0

    new-array p0, v1, [Ljava/lang/Integer;

    .line 862
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p3

    invoke-virtual {v0, p0}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 864
    :cond_0
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v1, [Ljava/lang/Integer;

    .line 865
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    .line 864
    invoke-virtual {v0, p0, p1}, Lcom/talkweb/twOfflineSdk/TWHttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private queryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            "Lcom/talkweb/twOfflineSdk/bean/Goods;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;)V"
        }
    .end annotation

    .line 774
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 775
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->queryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private readUploadTime(Landroid/app/Activity;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "userInfo"

    const/4 v3, 0x0

    .line 1645
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "uploadTime"

    .line 1647
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static redeemCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;)V
    .locals 3

    .line 1181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1182
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getDeviceInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "userId"

    .line 1183
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activityCode"

    .line 1185
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "begin to do redeem"

    .line 1186
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1187
    new-instance v1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$16;

    invoke-direct {v1, p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$16;-><init>(Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;Ljava/lang/String;)V

    const/4 p0, 0x6

    invoke-static {p0, v0, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method private saveUploadTiem(Landroid/app/Activity;)V
    .locals 4

    .line 1627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 1628
    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 1629
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-string v2, "userInfo"

    const/4 v3, 0x0

    .line 1630
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1632
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "uploadTime"

    .line 1633
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1634
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1030
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1036
    :cond_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/CacheModel;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/CacheModel;-><init>()V

    .line 1038
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1037
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->genarateUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->setKey(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0, p1}, Lcom/talkweb/twOfflineSdk/bean/CacheModel;->setData(Ljava/lang/String;)V

    .line 1042
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "1234567890aba45678901234"

    .line 1047
    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/DesUtil;->encrypt3des(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    .line 1049
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 1050
    new-instance v2, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;

    invoke-direct {v2, p2, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$14;-><init>(Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x3ed

    .line 1097
    invoke-interface {p2, p0, p1}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/16 p0, 0x3ea

    const-string p1, "key or value can not be null value"

    .line 1032
    invoke-interface {p2, p1, p0}, Lcom/talkweb/twOfflineSdk/callback/TwStorageSetCallBack;->onError(Ljava/lang/String;I)Ljava/lang/String;

    return-void
.end method

.method private static showPaylDialog(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;Ljava/lang/String;)V
    .locals 1

    .line 873
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u786e\u8ba4\u652f\u4ed8"

    .line 875
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u8bf4\u660e\uff1a\u70b9\u51fb\u786e\u8ba4\u652f\u4ed8\u5373\u6a21\u62df\u652f\u4ed8\u6210\u529f,\u70b9\u51fb\u6a21\u62df\u8865\u5355\u5373\u6a21\u62df\u6e38\u620f\u5f02\u5e38\u95ea\u9000\uff0c\u91cd\u8fdb\u6e38\u620f\u5f00\u542f\u8865\u5355!"

    .line 876
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 877
    new-instance v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;

    invoke-direct {v0, p0, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 886
    new-instance p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$11;

    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$11;-><init>()V

    const-string p2, "\u6a21\u62df\u8865\u5355"

    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 894
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public GameDeeplink(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;)V
    .locals 2

    const-string v0, "TwOfflineSDK GameDeeplink----"

    .line 2003
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 2004
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageNae\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, ""

    .line 2006
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vivogame://game.vivo.com/openjump?j_type=1&pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t_from=Privilege_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----deeplinkUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 2010
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;->resultGameDeeplink(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2012
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/TwGameDeeplinkCallback;->resultGameDeeplink(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public StartGameCenter(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;)V
    .locals 1

    const-string v0, "\u8c03\u7528TwOfflineSDK StartGameCenter----"

    .line 2061
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "isgamecenter"

    .line 2062
    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 2063
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u4ece\u4fdd\u5b58\u7684\u8bb0\u5f55\u83b7\u53d6\u7684\u662f\u4ecevivo\u4e2d\u5fc3\u542f\u52a8\uff01"

    .line 2064
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2065
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;->isGameCenter(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4ece\u4fdd\u5b58\u7684\u8bb0\u5f55\u83b7\u53d6\u7684\u4e0d\u662f\u4ecevivo\u4e2d\u5fc3\u542f\u52a8\uff01"

    .line 2067
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2068
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/StartGameCenterCallback;->isGameCenter(Z)V

    :goto_0
    return-void
.end method

.method public activeGame(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final cancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 927
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 928
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 930
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierCancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public carrierCancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public carrierOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const/16 p1, 0x3e8

    const-string p3, "\u53c2\u6570\u9519\u8bef"

    const/4 v0, 0x0

    .line 1262
    invoke-static {p1, p3, p2, p2, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public carrierQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    .line 1277
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    return-void
.end method

.method public channelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    const/16 p1, 0x3e8

    const-string p3, "\u53c2\u6570\u9519\u8bef"

    const/4 v0, 0x0

    .line 1254
    invoke-static {p1, p3, p2, p2, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public channelQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    .line 1270
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    return-void
.end method

.method public channelUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkOrder(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;",
            ">;",
            "Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;",
            ")V"
        }
    .end annotation

    .line 1434
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;->checkOrderBack(Ljava/util/Map;)V

    return-void
.end method

.method public checkorder(Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1994
    invoke-interface {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CheckNumberCallback;->result(Z)V

    return-void
.end method

.method public cleanOrder(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u9664\u8ba2\u5355\u6570\u636e\u5f00\u59cb\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v0, "orderData"

    .line 1411
    invoke-static {v0, p2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-static {v1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    :try_start_0
    const-class v2, Ljava/util/Map;

    .line 1415
    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1416
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1418
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1419
    invoke-static {v0, p1, p2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6e05\u9664\u8ba2\u5355\u6570\u636e\u6210\u529f\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1423
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u5220\u9664\u8ba2\u5355\u6570\u636e\u51fa\u9519"

    .line 1424
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u65e0\u8ba2\u5355\u6570\u636e"

    .line 1427
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeWithConfirm(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public dataReport(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final doCancelOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 9

    .line 655
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8c03\u7528\u9000\u8ba2\u670d\u52a1"

    .line 656
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 657
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 662
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_1

    goto :goto_2

    .line 675
    :cond_1
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v5

    const-string p1, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    if-eqz v5, :cond_4

    .line 676
    invoke-virtual {v5}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v5}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v8

    .line 683
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getCurCarrierPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 685
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    .line 686
    invoke-direct/range {v3 .. v8}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->cancelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0

    .line 689
    :cond_3
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 677
    :cond_4
    :goto_1
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, ""

    :goto_3
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 668
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public doCheckOrder(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 2

    const-string p2, "orderData"

    .line 1289
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 1290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1292
    :try_start_0
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    const-class v0, Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 1296
    :cond_0
    new-instance p2, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$17;

    invoke-direct {p2, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$17;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    invoke-virtual {p0, v0, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->checkOrder(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "checkOrder error"

    .line 1320
    invoke-static {p2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x1771

    const/4 p2, 0x0

    .line 1322
    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onCheckOrderCallBack(ILjava/util/Map;)V

    :goto_0
    return-void
.end method

.method public final doInit(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 1

    const-string p3, "doInit  begin"

    .line 275
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 278
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 279
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 283
    :goto_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appId verify successed"

    .line 287
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doInit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "appId verify failed"

    .line 293
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p1, 0xfa1

    .line 295
    invoke-static {p1, p3}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final doOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6

    .line 595
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8c03\u7528\u652f\u4ed8\u670d\u52a1"

    .line 596
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 597
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 603
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p3, :cond_1

    goto :goto_2

    .line 614
    :cond_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u652f\u4ed8\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 615
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 618
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$7;

    invoke-direct {p1, p0, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$7;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 629
    :cond_2
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    if-eqz p1, :cond_5

    .line 630
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 636
    :cond_3
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v5

    .line 638
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v3

    .line 639
    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getCurCarrierPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 640
    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 641
    invoke-direct/range {v0 .. v5}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->order(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0

    .line 643
    :cond_4
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 631
    :cond_5
    :goto_1
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const-string p2, ""

    :goto_3
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 608
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public final doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .line 485
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8c03\u7528\u652f\u4ed8\u670d\u52a1"

    .line 486
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 487
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 492
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_c

    .line 493
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 504
    :cond_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u652f\u4ed8\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 505
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 508
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$5;

    invoke-direct {p1, p0, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$5;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 520
    :cond_2
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    if-eqz p1, :cond_b

    .line 521
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    .line 528
    :cond_3
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v4

    .line 529
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    .line 530
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isTwMultiPayDialog()Z

    move-result v0

    if-nez v0, :cond_6

    .line 531
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payWay.getId(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",payTypeId():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->payTypeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->payTypeId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 535
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    return-void

    .line 538
    :cond_5
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->payTypeId()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "payTypeId()\u503c\u4e3a0\u652f\u4ed8\u51fa\u73b0\u5f02\u5e38!"

    .line 539
    invoke-static {v2, v4, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_6
    invoke-static {v6}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPaying(Z)V

    .line 548
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->getMultiPayDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;

    move-result-object p3

    .line 549
    invoke-virtual {p3, p2, p1}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->doPayDialog(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/bean/Goods;)V

    goto :goto_1

    .line 551
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 553
    invoke-static {v6}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPaying(Z)V

    const/4 v0, 0x0

    .line 554
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    if-eqz v1, :cond_8

    .line 557
    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-static {v2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 558
    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100"

    if-eq v2, v3, :cond_8

    .line 559
    new-instance v2, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$6;

    invoke-direct {v2, p0, v1, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$6;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Lcom/talkweb/twOfflineSdk/bean/PayWay;Landroid/app/Activity;)V

    invoke-virtual {p3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    :cond_8
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_9
    :goto_1
    return-void

    .line 582
    :cond_a
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 522
    :cond_b
    :goto_2
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_3
    if-eqz p2, :cond_d

    goto :goto_4

    :cond_d
    move-object p2, v3

    :goto_4
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 498
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public final doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    .line 379
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8c03\u7528\u652f\u4ed8\u670d\u52a1"

    .line 380
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 381
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p3, :cond_1

    goto/16 :goto_2

    .line 398
    :cond_1
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u652f\u4ed8\u6b63\u5728\u8fdb\u884c\u4e2d"

    .line 399
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 402
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;

    invoke-direct {p1, p0, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    invoke-virtual {p3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 413
    :cond_2
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    if-eqz p1, :cond_a

    .line 414
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 420
    :cond_3
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v3

    .line 421
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 423
    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPaying(Z)V

    .line 424
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 425
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 427
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 428
    :cond_4
    sget-object v5, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_CARRIER:Ljava/lang/String;

    .line 429
    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 430
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 432
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 434
    :cond_5
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v5, :cond_9

    .line 443
    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPaying(Z)V

    const/4 p4, 0x0

    .line 444
    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    if-eqz v0, :cond_7

    .line 447
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getSelloff()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    if-eq v1, v2, :cond_7

    .line 449
    new-instance v1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;

    invoke-direct {v1, p0, v0, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$4;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Lcom/talkweb/twOfflineSdk/bean/PayWay;Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    :cond_7
    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_8
    return-void

    .line 472
    :cond_9
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 415
    :cond_a
    :goto_1
    invoke-static {v2, v0, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_2
    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    const-string p2, ""

    :goto_3
    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 392
    invoke-static {v2, p1, p2, p2, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onPayCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public final doQueryOrder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .line 701
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string p1, "\u5c1a\u672a\u767b\u5f55\uff0c\u65e0\u6cd5\u8c03\u7528\u67e5\u8be2\u670d\u52a1"

    .line 702
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 704
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    return-void

    .line 708
    :cond_0
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_1

    goto :goto_2

    .line 721
    :cond_1
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object v4

    const-string p1, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    if-eqz v4, :cond_4

    .line 722
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 728
    :cond_2
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v7

    .line 729
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getCurCarrierPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 731
    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    .line 732
    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->queryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0

    .line 736
    :cond_3
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    .line 737
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 724
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    .line 725
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 715
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onQueryCallBack(I)V

    const-string p1, "\u53c2\u6570\u9519\u8bef"

    .line 716
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;)V
    .locals 2

    .line 966
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    .line 967
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    .line 968
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 969
    new-instance v1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$12;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$12;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V

    const-string p1, "\u786e\u8ba4"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 980
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$13;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$13;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public getCurPayGood()Lcom/talkweb/twOfflineSdk/bean/Goods;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    return-object v0
.end method

.method public getCurPayWay()Lcom/talkweb/twOfflineSdk/bean/PayWay;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    return-object v0
.end method

.method public getDeclareMsg(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 996
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 997
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    const-string v3, "1"

    .line 999
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "twOfflinePay.xml"

    const-string v3, "DeclareMsg"

    .line 1000
    invoke-static {p1, v2, v3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v2, "msg"

    .line 1005
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 1006
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1009
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1011
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoginTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/LoginTypeBean;",
            ">;"
        }
    .end annotation

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPayIconByType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    const-string p2, "tw_zxzf"

    .line 960
    invoke-static {p1, p2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUploadUInfoP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "channleuserid"

    const-string v1, "twuserid"

    const-string v2, ""

    .line 1569
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 1570
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getChannelsId()Ljava/lang/String;

    move-result-object v4

    .line 1571
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1572
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1576
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getUserInfoP(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1577
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getUserInfoP(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1578
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getUserInfoP(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1580
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1581
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1583
    :goto_0
    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1584
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1585
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1590
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUploadUInfoP tttt error:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 1593
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getChannelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?appid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&channleid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&twuserid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&channleuserid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1599
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&imei="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&imsi="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&deviceid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "&userid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1603
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "&characterid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUploadUInfoP xxx strBuff!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserInfoP(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    const-string v0, "userInfo"

    const/4 v1, 0x0

    .line 1617
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "userInfoKey"

    const-string v1, ""

    .line 1619
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLogined()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    return v0
.end method

.method public isPayWayOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1231
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1232
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1236
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object p1

    .line 1237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 1238
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1240
    :cond_1
    sget-object v1, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_CARRIER:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1241
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string p1, "\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u65b9\u5f0f"

    .line 1233
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v0
.end method

.method public isTwMultiPayDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
    .locals 2

    .line 245
    new-instance p1, Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-direct {p1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;-><init>()V

    const-string v0, "12345678"

    .line 246
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setChannelUserId(Ljava/lang/String;)V

    const-string v1, ""

    .line 247
    invoke-virtual {p1, v1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setTalkwebUserId(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1, v1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setToken(Ljava/lang/String;)V

    const/16 v0, 0xbb8

    .line 250
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setCode(I)V

    return-object p1
.end method

.method public loginChannelWithoutUi(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
    .locals 1

    .line 257
    new-instance p1, Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    invoke-direct {p1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;-><init>()V

    const-string v0, ""

    .line 258
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setChannelUserId(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setTalkwebUserId(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setToken(Ljava/lang/String;)V

    const/16 v0, 0xbb8

    .line 262
    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setCode(I)V

    return-object p1
.end method

.method public final loginTalkweb(Landroid/app/Activity;)V
    .locals 5

    .line 209
    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isInit:Z

    const-string v1, ""

    if-nez v0, :cond_0

    const-string p1, "\u8fd8\u6ca1\u6709\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u65e0\u6cd5\u767b\u5f55"

    .line 210
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p1, 0xbb9

    .line 211
    invoke-static {p1, v1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u767b\u5f55\u5f00\u59cb"

    .line 214
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    .line 218
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "userInfo is null"

    .line 220
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "\u767b\u5f55\u6210\u529f"

    .line 224
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$1;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Lcom/talkweb/twOfflineSdk/bean/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5f02\u5e38:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    const/16 p1, 0xbb8

    .line 236
    invoke-static {p1, v1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onLoginCallBack(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public matchService(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/MatchServiceTems;)V
    .locals 0

    const/4 p1, 0x0

    .line 2078
    invoke-interface {p2, p1}, Lcom/talkweb/twOfflineSdk/callback/MatchServiceTems;->matchResult(Z)V

    return-void
.end method

.method public momentPublish([Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public momentScene(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 0

    const-string p1, "TwOfflineSDKImpl openCertification ==="

    .line 361
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public openGameMoment(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public final order(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 907
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 908
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 910
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 911
    invoke-virtual {p0, p1, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->channelOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public final pay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8

    .line 791
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 792
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u652f\u4ed8\u5f00\u59cb getGoodsID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getGoodsID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getRealPrice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 797
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 802
    new-instance v1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$8;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayWay;)V

    invoke-static {p4, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isPayAllowed(Landroid/content/Context;FLcom/talkweb/twOfflineSdk/callback/PayAllowedCallback;)V

    :cond_0
    return-void
.end method

.method public payTypeId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final queryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 947
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 948
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    .line 950
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->getOperators()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->OPERATOR_THIRD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 951
    invoke-virtual {p0, p1, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->channelQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->carrierQueryOrder(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public queryPayment(Ljava/lang/String;)V
    .locals 2

    .line 2083
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "userId"

    .line 2084
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    new-instance p1, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$21;

    invoke-direct {p1, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$21;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    const/16 v1, 0x16

    invoke-static {v1, v0, p1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method public ququeryAllAchievementery(Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public saveOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1332
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;-><init>()V

    .line 1333
    iput-object p3, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->orderNumber:Ljava/lang/String;

    .line 1334
    iput-object p1, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->payCode:Ljava/lang/String;

    const-string p1, "orderData"

    .line 1336
    invoke-static {p1, p4}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 1337
    invoke-static {p3}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    :try_start_0
    const-class v1, Ljava/util/Map;

    .line 1340
    invoke-static {p3, v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 1341
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1345
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1349
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1350
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1353
    :goto_0
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1354
    invoke-static {p1, p2, p4}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4fdd\u5b58\u8ba2\u5355\u6570\u636e\u6210\u529f\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public saveOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1378
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;-><init>()V

    .line 1379
    iput-object p3, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->orderNumber:Ljava/lang/String;

    .line 1380
    iput-object p1, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->payCode:Ljava/lang/String;

    .line 1381
    iput-object p5, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->amount:Ljava/lang/String;

    .line 1382
    iput-object p4, v0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;->cOrederNumber:Ljava/lang/String;

    const-string p1, "orderData"

    .line 1384
    invoke-static {p1, p6}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 1385
    invoke-static {p3}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1387
    :try_start_0
    const-class p4, Ljava/util/Map;

    .line 1388
    invoke-static {p3, p4}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 1389
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    :catch_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1393
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1397
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1398
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1401
    :goto_0
    invoke-static {p2}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1402
    invoke-static {p1, p2, p6}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "\u4fdd\u5b58\u8ba2\u5355\u6570\u636e\u6210\u529f"

    .line 1403
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAchievement(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V
    .locals 0

    return-void
.end method

.method public setCurPayGood(Lcom/talkweb/twOfflineSdk/bean/Goods;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayGood:Lcom/talkweb/twOfflineSdk/bean/Goods;

    return-void
.end method

.method public setCurPayWay(Lcom/talkweb/twOfflineSdk/bean/PayWay;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->curPayWay:Lcom/talkweb/twOfflineSdk/bean/PayWay;

    return-void
.end method

.method public setLogined(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->isLogined:Z

    return-void
.end method

.method public setUserInfoP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "userInfo"

    const/4 v1, 0x0

    .line 1446
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1449
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "twuserid"

    .line 1453
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channleuserid"

    .line 1454
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1455
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1458
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    :goto_0
    const-string p3, "userInfoKey"

    .line 1461
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1463
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "\u4fdd\u5b58\u7528\u6237\u4fe1\u606f\u6210\u529f!"

    .line 1464
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Z)V
    .locals 0

    const-string p1, "TwOfflineSDKImpl showCertification ==="

    .line 370
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method

.method public startPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V
    .locals 2

    .line 2019
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u542f\u9690\u79c1\u534f\u8bae\u5f39\u7a97,\u4e3b\u7ebf\u7a0b\u4e2d\u8fd0\u884c!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->getPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    move-result-object p1

    .line 2052
    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->showPrivacyAgreementDialog()V

    return-void
.end method

.method public uploadTracking(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2128
    invoke-static {p1, p2, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    return-void
.end method

.method public uploadUserInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 1477
    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 1478
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zero:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",readUploadTime(activity):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->readUploadTime(Landroid/app/Activity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1481
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->readUploadTime(Landroid/app/Activity;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p1, "\u4eca\u5929\u5df2\u7ecf\u4e0a\u4f20\u8fc7\u690d\u7269\u5927\u6218\u50f5\u5c38\u7684\u7528\u6237\u4fe1\u606f,\u4e0d\u8fdb\u884c\u4e0a\u4f20!"

    .line 1482
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 1485
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://popcap.talkyun.com.cn/gameweb/sendPvzTwinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->getUploadUInfoP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1487
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uploadUserInfoPath:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/16 p3, 0x9

    .line 1488
    new-instance p4, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;

    invoke-direct {p4, p0, p1, v0, v1}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$18;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;J)V

    invoke-static {p3, p2, p4}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method public uploadUsrinfoTGA(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "userid"

    .line 1513
    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    .line 1514
    invoke-static {v1, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "characterid"

    .line 1515
    invoke-static {v2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1516
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1517
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1521
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1523
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0a\u4f20\u7528\u6237\u4fe1\u606f\u5230TGA\u7684\u53c2\u6570deviceid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "characterid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",dateString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",verSionName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|10070|Android|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 1531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    const-string v2, "10070"

    .line 1532
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    .line 1533
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 1537
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$19;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$19;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    const/16 v1, 0xf

    .line 1536
    invoke-static {v1, p1, v0}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method
