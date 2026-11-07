.class public Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;
.super Ljava/lang/Object;
.source "TalkwebPayConfig.java"


# static fields
.field private static gameBak:Ljava/lang/String;

.field private static gameContext:Landroid/content/Context;

.field private static isPaying:Z

.field private static isSplashShow:Z

.field private static payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

.field private static permisionContext:Landroid/content/Context;

.field private static simState:Lcom/talkweb/twOfflineSdk/bean/SimState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameBak()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameBak:Ljava/lang/String;

    return-object v0
.end method

.method public static getGameContext()Landroid/content/Context;
    .locals 1

    .line 78
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;
    .locals 1

    .line 140
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    return-object v0
.end method

.method public static getPayGood(Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/Goods;
    .locals 3

    .line 162
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 164
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 166
    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPayWay(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/talkweb/twOfflineSdk/bean/Goods;

    .line 154
    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getPayWayList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPayWay(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/talkweb/twOfflineSdk/bean/PayWay;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSimState()Lcom/talkweb/twOfflineSdk/bean/SimState;
    .locals 1

    .line 95
    sget-object v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->simState:Lcom/talkweb/twOfflineSdk/bean/SimState;

    return-object v0
.end method

.method public static isPaying()Z
    .locals 1

    .line 99
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isPaying:Z

    return v0
.end method

.method public static isSplashShow()Z
    .locals 1

    .line 107
    sget-boolean v0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isSplashShow:Z

    return v0
.end method

.method public static parseAssetsPayConfig(Landroid/content/Context;)V
    .locals 1

    const-string v0, "twpay.xml"

    .line 194
    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getContentFromAssetsByFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->parsePayConfig(Ljava/lang/String;)Z

    return-void
.end method

.method public static parsePayConfig(Landroid/content/Context;Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;)V
    .locals 0

    .line 182
    new-instance p0, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;

    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;-><init>(Lcom/talkweb/twOfflineSdk/callback/SyncTwpayCallback;)V

    .line 183
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->setTwPayConfig()V

    .line 184
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/paycfg/TwpayManager;->syncTwpay()V

    return-void
.end method

.method public static parsePayConfig(Ljava/lang/String;)Z
    .locals 4

    .line 206
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->decryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "\u89e3\u5bc6\u5931\u8d25"

    .line 208
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v1

    .line 211
    :cond_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;-><init>()V

    .line 212
    new-instance v2, Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-direct {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;-><init>()V

    .line 213
    sget-object v3, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, p0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parsePayConfig(Landroid/content/Context;Lcom/talkweb/twOfflineSdk/bean/PayConfig;Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    .line 214
    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 219
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->setPayConfig(Lcom/talkweb/twOfflineSdk/bean/PayConfig;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "payConfig\u89e3\u6790\u5931\u8d25"

    .line 223
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v1
.end method

.method public static parseSimState(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static setGameBak(Ljava/lang/String;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameBak:Ljava/lang/String;

    return-void
.end method

.method public static setGameContext(Landroid/content/Context;)V
    .locals 3

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameContext\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    sput-object p0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameContext:Landroid/content/Context;

    return-void
.end method

.method public static setPayConfig(Lcom/talkweb/twOfflineSdk/bean/PayConfig;)V
    .locals 0

    .line 144
    sput-object p0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    return-void
.end method

.method public static setPaying(Z)V
    .locals 0

    .line 103
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isPaying:Z

    return-void
.end method

.method public static setSplashShow(Z)V
    .locals 0

    .line 111
    sput-boolean p0, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->isSplashShow:Z

    return-void
.end method

.method public static verifyPayConfig(Ljava/lang/String;)Z
    .locals 4

    .line 236
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->decryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "\u89e3\u5bc6\u5931\u8d25"

    .line 238
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v1

    .line 241
    :cond_0
    new-instance v0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;-><init>()V

    .line 242
    new-instance v2, Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-direct {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;-><init>()V

    .line 243
    sget-object v3, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->gameContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2, p0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parsePayConfig(Landroid/content/Context;Lcom/talkweb/twOfflineSdk/bean/PayConfig;Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    .line 244
    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "payConfig\u89e3\u6790\u5931\u8d25"

    .line 252
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return v1
.end method
