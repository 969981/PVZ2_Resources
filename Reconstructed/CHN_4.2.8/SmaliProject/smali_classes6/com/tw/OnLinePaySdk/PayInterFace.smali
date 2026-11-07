.class public abstract Lcom/tw/OnLinePaySdk/PayInterFace;
.super Ljava/lang/Object;
.source "PayInterFace.java"


# static fields
.field public static userId:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public channelSpecialCallback(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    .locals 0

    return-void
.end method

.method public checkAppVersionByChannel(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "02"

    .line 93
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->checkAppVersionCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public abstract destroySDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract existBbs()Z
.end method

.method public abstract existDestroySDKWindow()Z
.end method

.method public abstract existFloatingWindow()Z
.end method

.method public abstract existLogoutAccount()Z
.end method

.method public existSendUserInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract existUserCenter()Z
.end method

.method public abstract initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;Lcom/tw/OnLinePaySdk/callback/ChannelSpecialCallback;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tw/OnLinePaySdk/PayInterFace;->initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public abstract loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract logoutAccount(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDestroy(Landroid/content/Context;)V
.end method

.method public onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public abstract onPause(Landroid/content/Context;)V
.end method

.method public abstract onRestart(Landroid/content/Context;)V
.end method

.method public abstract onResume(Landroid/content/Context;)V
.end method

.method public abstract onStart(Landroid/content/Context;)V
.end method

.method public abstract onStop(Landroid/content/Context;)V
.end method

.method public abstract openBbs(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract openFloatingWindow(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract openUserCenter(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract pay(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public abstract queryOrderResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end method

.method public redeemGiftPack(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "01"

    .line 60
    invoke-static {p1, p3}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->redeemGiftPackCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method

.method public sendUserInfo(Landroid/content/Context;Landroid/content/Intent;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/PayInterFace;->appId:Ljava/lang/String;

    return-void
.end method

.method public updateApp(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    const-string p1, "01"

    .line 97
    invoke-static {p1, p2}, Lcom/tw/OnLinePaySdk/tools/CallBackUtil;->updateAppCallBack(Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method
