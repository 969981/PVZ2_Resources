.class public final Lcom/tw/gamesdk/oneclicklogin/OneClickAuthUIConfig;
.super Ljava/lang/Object;
.source "OneClickAuthUIConfig.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/AuthUIConfig;
    .locals 5

    const-string v0, "twgame_bg_orange_pink_gradient"

    .line 30
    invoke-static {p0, v0}, Lcom/tw/pay/sdk/tool/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "twgame_user_agreement_link"

    .line 33
    invoke-static {p0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "twgame_privacy_policy_link"

    .line 34
    invoke-static {p0, v2}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AuthConfig userAgreement:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AuthConfig privacyPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    .line 37
    new-instance v3, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    invoke-direct {v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;-><init>()V

    sget-object v4, Lcom/tw/gamesdk/net/RequestUtils;->USER_AGREEMENT_URL:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v1, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setAppPrivacyOne(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    sget-object v3, Lcom/tw/gamesdk/net/RequestUtils;->PRIVACY_POLICY_URL:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setAppPrivacyTwo(Ljava/lang/String;Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const v2, -0x655f5a

    const v3, -0x9500

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setAppPrivacyColor(II)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setPrivacyState(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const v3, -0xddddde

    .line 48
    invoke-virtual {v1, v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNumberColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const/16 v3, 0x11

    .line 49
    invoke-virtual {v1, v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNumberLayoutGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const/16 v4, 0x24

    .line 50
    invoke-virtual {v1, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNumFieldOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const/16 v4, 0x16

    .line 51
    invoke-virtual {v1, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNumberSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 52
    invoke-virtual {v1, v4}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNumberTypeface(Landroid/graphics/Typeface;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object v1

    const-string v4, "twgame_btn_oneclick_login_text"

    .line 53
    invoke-static {p0, v4}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnText(Ljava/lang/String;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/4 v1, -0x1

    .line 54
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnTextColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x168

    .line 56
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x34

    .line 57
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, v3}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnLayoutGravity(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x4a

    .line 60
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 61
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnTypeface(Landroid/graphics/Typeface;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnMarginLeftAndRight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setNavHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogoHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setSwitchAccHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setStatusBarColor(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setStatusBarHidden(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLightColor(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x190

    .line 71
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setDialogWidth(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x12c

    .line 72
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setDialogHeight(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setDialogOffsetX(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setDialogOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setTapAuthPageMaskClosePage(Z)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0xc

    .line 76
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setSloganOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0xe

    .line 77
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setSloganTextSizeDp(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    const/16 v1, 0x8e

    .line 78
    invoke-virtual {p0, v1}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setPrivacyOffsetY(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    move-result-object p0

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_1

    const/4 v2, 0x3

    .line 87
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setScreenOrientation(I)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->setLogBtnBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/mobile/auth/gatewayauth/AuthUIConfig$Builder;->create()Lcom/mobile/auth/gatewayauth/AuthUIConfig;

    move-result-object p0

    return-object p0
.end method
