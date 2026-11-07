.class public Lcom/popcap/pvz2cthddev/SexyAppActivity;
.super Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
.source "SexyAppActivity.java"


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_hvga:I

    const/16 v1, 0x140

    const/16 v2, 0x1e0

    invoke-static {v0, v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 21
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wvga:I

    const/16 v3, 0x320

    invoke-static {v0, v2, v3}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 22
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_fwvga:I

    const/16 v4, 0x356

    invoke-static {v0, v2, v4}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 23
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_qhd:I

    const/16 v5, 0x21c

    const/16 v6, 0x3c0

    invoke-static {v0, v5, v6}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 24
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wsvga:I

    const/16 v7, 0x258

    const/16 v8, 0x400

    invoke-static {v0, v7, v8}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 25
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wxga:I

    const/16 v9, 0x300

    const/16 v10, 0x500

    invoke-static {v0, v9, v10}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 26
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_10in:I

    const/16 v11, 0x4b0

    invoke-static {v0, v3, v11}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 27
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_1080p:I

    const/16 v12, 0x438

    const/16 v13, 0x780

    invoke-static {v0, v12, v13}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 28
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga:I

    const/16 v14, 0x640

    const/16 v15, 0xa00

    invoke-static {v0, v14, v15}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 29
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga:I

    invoke-static {v0, v15, v14}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 30
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga:I

    const/16 v14, 0xa5c

    invoke-static {v0, v14, v11}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddSplashScreenImage(III)V

    .line 32
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_hvga_1:I

    invoke-static {v0, v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 33
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wvga_1:I

    invoke-static {v0, v2, v3}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 34
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_fwvga_1:I

    invoke-static {v0, v2, v4}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 35
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_qhd_1:I

    invoke-static {v0, v5, v6}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 36
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wsvga_1:I

    invoke-static {v0, v7, v8}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 37
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wxga_1:I

    invoke-static {v0, v9, v10}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 38
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_10in_1:I

    invoke-static {v0, v3, v11}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 39
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_1080p_1:I

    invoke-static {v0, v12, v13}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 40
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga_1:I

    const/16 v1, 0x640

    invoke-static {v0, v1, v15}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 41
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga_1:I

    invoke-static {v0, v15, v1}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 42
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->splash_wqxga_1:I

    invoke-static {v0, v14, v11}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddFirstSplashScreenImage(III)V

    .line 44
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->progress_bar:I

    const/16 v1, 0x80d

    const/16 v2, 0x3e

    invoke-static {v0, v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddProgressBarImage(III)V

    .line 45
    sget v0, Lcom/popcap/pvz2cthddev/R$drawable;->progress_bar_bg:I

    const/16 v1, 0x825

    const/16 v2, 0x54

    invoke-static {v0, v1, v2}, Lcom/popcap/pvz2cthddev/SexyAppActivity;->AddProgressBarBgImage(III)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public handleNativeCrash(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->handleNativeCrash(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 137
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p1, p2, p3}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->instance()Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/AndroidViewContainerManager;->HandleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onBackPressed()V

    .line 168
    :cond_1
    invoke-static {}, Lcom/popcap/pvz2cthddev/TWPurchase;->instance()Lcom/popcap/pvz2cthddev/TWPurchase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/popcap/pvz2cthddev/TWPurchase;->instance()Lcom/popcap/pvz2cthddev/TWPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/TWPurchase;->OnExit()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onCreate(Landroid/app/Activity;)V

    .line 53
    invoke-super {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 147
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onDestroy(Landroid/app/Activity;)V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 127
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onPause()V

    .line 97
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onPause(Landroid/app/Activity;)V

    .line 100
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 117
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onRestart(Landroid/app/Activity;)V

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onResume()V

    .line 81
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onResume(Landroid/app/Activity;)V

    .line 84
    invoke-static {p0}, Lcom/talkweb/twgame/sdk/TwGameSDKImpl;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 176
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onStart(Landroid/app/Activity;)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/popcap/pvz2cthddev/TWPurchase;->m_initSuccess:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->onStop(Landroid/app/Activity;)V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->onStop()V

    return-void
.end method
