.class public Lcom/popcap/util/NtfAction;
.super Ljava/lang/Object;
.source "NtfAction.java"


# static fields
.field public static s_NtfAction:Lcom/popcap/util/NtfAction;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GetGamePending(Lcom/popcap/util/PopCapNotificationAbstract;)Landroid/app/PendingIntent;
    .locals 3

    .line 62
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->GetSkuId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/util/PCPLocalGameMgr;->GetPackage(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 73
    invoke-static {}, Lcom/popcap/util/PopCapPushNotificationService;->getSrvkey()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/popcap/util/PopCapPushNotificationService;->getSrvValue()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/popcap/util/PopCapPushNotificationService;->getSrvRwdKey()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private GetTextPending()Landroid/app/PendingIntent;
    .locals 3

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private GetUriPending(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 92
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/popcap/util/NtfUtil;->GetPCPService()Lcom/popcap/util/PopCapDaemonService;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static Instance()Lcom/popcap/util/NtfAction;
    .locals 1

    .line 15
    sget-object v0, Lcom/popcap/util/NtfAction;->s_NtfAction:Lcom/popcap/util/NtfAction;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/popcap/util/NtfAction;

    invoke-direct {v0}, Lcom/popcap/util/NtfAction;-><init>()V

    sput-object v0, Lcom/popcap/util/NtfAction;->s_NtfAction:Lcom/popcap/util/NtfAction;

    .line 19
    :cond_0
    sget-object v0, Lcom/popcap/util/NtfAction;->s_NtfAction:Lcom/popcap/util/NtfAction;

    return-object v0
.end method


# virtual methods
.method public GetUserOptAction(Lcom/popcap/util/PopCapNotificationAbstract;)Landroid/app/PendingIntent;
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->getNtType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/popcap/util/NtfAction;->GetUriPending(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/popcap/util/NtfAction;->GetGamePending(Lcom/popcap/util/PopCapNotificationAbstract;)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 38
    invoke-direct {p0}, Lcom/popcap/util/NtfAction;->GetTextPending()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/popcap/util/NtfAction;->GetTextPending()Landroid/app/PendingIntent;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method
