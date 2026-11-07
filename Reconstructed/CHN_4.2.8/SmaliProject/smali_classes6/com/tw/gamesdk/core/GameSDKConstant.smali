.class public Lcom/tw/gamesdk/core/GameSDKConstant;
.super Ljava/lang/Object;
.source "GameSDKConstant.java"


# static fields
.field public static isTapLogin:Z = false

.field public static tapLoginUserId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthLoginKey()Ljava/lang/String;
    .locals 3

    .line 15
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getGameContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "twOfflinePay.xml"

    const-string v2, "authLoginKey"

    invoke-static {v0, v1, v2}, Lcom/tw/pay/sdk/tool/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
