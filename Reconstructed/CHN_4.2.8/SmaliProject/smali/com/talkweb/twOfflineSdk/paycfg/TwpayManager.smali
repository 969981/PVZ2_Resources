.class public Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;
.super Ljava/lang/Object;
.source "TwpayManager.java"


# static fields
.field private static MAX_SYNC_COUNT:I = 0x3

.field private static SYNC_TWPAY_COUNT:I = 0x0

.field private static SYNC_TWPAY_FILE_COUNT:I = 0x0

.field private static TWPAY_VERSION_TXT:Ljava/lang/String; = "version.txt"


# instance fields
.field private fileDirPath:Ljava/lang/String;

.field private syncCallBack:Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncCallBack:Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->processResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->onCallBack()V

    return-void
.end method

.method private onCallBack()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncCallBack:Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;->syncFinished()V

    :cond_0
    return-void
.end method

.method private processResponse(I)V
    .locals 4

    if-lez p1, :cond_2

    .line 142
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const-string v1, "twpayFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "twpayVersionKey"

    const-string v3, ""

    .line 144
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp\u4e2dtwpayVersion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "sp\u4e2d\u7684twpayVersion\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 148
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->getTwpayFile(I)V

    goto :goto_1

    .line 155
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-ge v2, p1, :cond_1

    .line 160
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->getTwpayFile(I)V

    goto :goto_1

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp\u4e2d\u6ca1\u6709\u66f4\u65b0\u7684\u7248\u672c oldVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->setTwPayConfig()V

    .line 165
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->onCallBack()V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncTwpay()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getTwpayFile(I)V
    .locals 3

    const-string v0, "getTwpayFile begin"

    .line 181
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 182
    sget v0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->SYNC_TWPAY_FILE_COUNT:I

    sget v1, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->MAX_SYNC_COUNT:I

    if-le v0, v1, :cond_0

    const-string p1, "\u83b7\u53d6twpay\u6587\u4ef6\u5df2\u7ecf\u8d85\u8fc73\u6b21"

    .line 183
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->setTwPayConfig()V

    .line 185
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->onCallBack()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 188
    sput v0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->SYNC_TWPAY_FILE_COUNT:I

    const/4 v0, 0x3

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;

    invoke-direct {v2, p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$2;-><init>(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;I)V

    invoke-static {v0, v1, v2}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method

.method public setTwPayConfig()V
    .locals 3

    .line 275
    sget-object v0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->mainActivity:Landroid/app/Activity;

    const-string v1, "twpayFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "twpayFileKey"

    const-string v2, ""

    .line 277
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->parsePayConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4f7f\u7528\u4e86shared\u5b58\u50a8\u7684twpay\u6587\u4ef6"

    .line 279
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "shared\u5b58\u50a8\u7684twpay\u6587\u4ef6\u4e0d\u6b63\u786e"

    .line 281
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public syncTwpay()V
    .locals 3

    const-string v0, "syncTwpay"

    .line 67
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 70
    sget v0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->SYNC_TWPAY_COUNT:I

    sget v1, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->MAX_SYNC_COUNT:I

    if-le v0, v1, :cond_0

    const-string v0, "\u83b7\u53d6twpay\u7248\u672c\u53f7\u5df2\u7ecf\u8d85\u8fc73\u6b21"

    .line 71
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->setTwPayConfig()V

    .line 73
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->onCallBack()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 76
    sput v0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->SYNC_TWPAY_COUNT:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6twpay\u7248\u672c\u53f7\u7b2c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->SYNC_TWPAY_COUNT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 78
    new-instance v1, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager$1;-><init>(Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;)V

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/lang/String;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    return-void
.end method
