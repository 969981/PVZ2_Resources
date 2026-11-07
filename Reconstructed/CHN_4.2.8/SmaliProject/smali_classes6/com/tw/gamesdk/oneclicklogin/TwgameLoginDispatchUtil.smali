.class public Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;
.super Ljava/lang/Object;
.source "TwgameLoginDispatchUtil.java"


# static fields
.field private static final TIP_UNSUPPORTED:Ljava/lang/String; = "\u5f53\u524d SIM \u5361\u6216\u7f51\u7edc\u6682\u4e0d\u652f\u6301\u4e00\u952e\u767b\u5f55\uff0c\u5df2\u4e3a\u60a8\u5207\u6362\u5230\u77ed\u4fe1\u9a8c\u8bc1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->launchOneClick(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->fallbackToCode(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void
.end method

.method private static fallbackToCode(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 68
    instance-of p2, p0, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 69
    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    const-string v0, "\u5f53\u524d SIM \u5361\u6216\u7f51\u7edc\u6682\u4e0d\u652f\u6301\u4e00\u952e\u767b\u5f55\uff0c\u5df2\u4e3a\u60a8\u5207\u6362\u5230\u77ed\u4fe1\u9a8c\u8bc1"

    invoke-static {v0, p2}, Lcom/tw/pay/sdk/tool/Tools;->makeToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/ui/TwGameLoginUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method private static hasSimCard(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method private static launchOneClick(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->getTwGameOneClickLoginUtil(Landroid/content/Context;)Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil;->doOneClickLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void
.end method

.method private static preLoginAndLaunch(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object v0

    new-instance v1, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil$1;-><init>(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->preLogin(Lcom/tw/gamesdk/oneclicklogin/OneClickPreLoginListener;)V

    return-void
.end method

.method public static tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, v0}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void
.end method

.method public static tryOneClickThenFallback(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V
    .locals 2

    .line 30
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->fallbackToCode(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void

    .line 34
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 36
    invoke-static {}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->getInstance()Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/tw/gamesdk/oneclicklogin/OneClickLoginManager;->isInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    invoke-static {v0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->fallbackToCode(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->hasSimCard(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 42
    invoke-static {v0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->fallbackToCode(Landroid/content/Context;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void

    .line 46
    :cond_2
    invoke-static {v0, p1, p2}, Lcom/tw/gamesdk/oneclicklogin/TwgameLoginDispatchUtil;->preLoginAndLaunch(Landroid/app/Activity;Lcom/tw/pay/sdk/callback/TwCallback;Z)V

    return-void
.end method
