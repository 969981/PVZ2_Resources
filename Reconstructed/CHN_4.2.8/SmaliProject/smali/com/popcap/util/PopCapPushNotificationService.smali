.class public Lcom/popcap/util/PopCapPushNotificationService;
.super Ljava/lang/Object;
.source "PopCapPushNotificationService.java"


# static fields
.field private static m_Notification:Lcom/popcap/util/PopCapPushNotificationService; = null

.field private static srvRwdKey:Ljava/lang/String; = "rwdKey"

.field private static srvValue:Ljava/lang/String; = "1"

.field private static srvkey:Ljava/lang/String; = "com.popcap.notice"


# instance fields
.field private activity:Landroid/app/Activity;

.field private connection:Landroid/content/ServiceConnection;

.field private mIRemoteService:Lcom/popcap/util/IRemoteService;

.field private userOptPackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    .line 23
    iput-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->mIRemoteService:Lcom/popcap/util/IRemoteService;

    .line 33
    new-instance v1, Lcom/popcap/util/PopCapPushNotificationService$1;

    invoke-direct {v1, p0}, Lcom/popcap/util/PopCapPushNotificationService$1;-><init>(Lcom/popcap/util/PopCapPushNotificationService;)V

    iput-object v1, p0, Lcom/popcap/util/PopCapPushNotificationService;->connection:Landroid/content/ServiceConnection;

    .line 110
    iput-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->userOptPackName:Ljava/lang/String;

    return-void
.end method

.method private GetServiceName()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 139
    const-string v0, ""

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_DAEMON_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Instance()Lcom/popcap/util/PopCapPushNotificationService;
    .locals 1

    .line 105
    sget-object v0, Lcom/popcap/util/PopCapPushNotificationService;->m_Notification:Lcom/popcap/util/PopCapPushNotificationService;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/popcap/util/PopCapPushNotificationService;

    invoke-direct {v0}, Lcom/popcap/util/PopCapPushNotificationService;-><init>()V

    sput-object v0, Lcom/popcap/util/PopCapPushNotificationService;->m_Notification:Lcom/popcap/util/PopCapPushNotificationService;

    .line 108
    :cond_0
    sget-object v0, Lcom/popcap/util/PopCapPushNotificationService;->m_Notification:Lcom/popcap/util/PopCapPushNotificationService;

    return-object v0
.end method

.method static synthetic access$0(Lcom/popcap/util/PopCapPushNotificationService;Lcom/popcap/util/IRemoteService;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->mIRemoteService:Lcom/popcap/util/IRemoteService;

    return-void
.end method

.method static synthetic access$1(Lcom/popcap/util/PopCapPushNotificationService;)Lcom/popcap/util/IRemoteService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/popcap/util/PopCapPushNotificationService;->mIRemoteService:Lcom/popcap/util/IRemoteService;

    return-object p0
.end method

.method static synthetic access$2(Lcom/popcap/util/PopCapPushNotificationService;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/popcap/util/PopCapPushNotificationService;->userOptPackName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Lcom/popcap/util/PopCapPushNotificationService;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->userOptPackName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/popcap/util/PopCapPushNotificationService;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$5(Lcom/popcap/util/PopCapPushNotificationService;)Landroid/content/ServiceConnection;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/popcap/util/PopCapPushNotificationService;->connection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static getSrvRwdKey()Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Lcom/popcap/util/PopCapPushNotificationService;->srvRwdKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSrvValue()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lcom/popcap/util/PopCapPushNotificationService;->srvValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getSrvkey()Ljava/lang/String;
    .locals 1

    .line 127
    sget-object v0, Lcom/popcap/util/PopCapPushNotificationService;->srvkey:Ljava/lang/String;

    return-object v0
.end method

.method public static setSrvRwdKey(Ljava/lang/String;)V
    .locals 0

    .line 121
    sput-object p0, Lcom/popcap/util/PopCapPushNotificationService;->srvRwdKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public SetOwnActivity(Landroid/app/Activity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public SetUserLastOpt(Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/popcap/util/PopCapPushNotificationService;->GetServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->userOptPackName:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/popcap/util/PopCapPushNotificationService;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public StartService(ILjava/lang/String;)I
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 69
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/popcap/util/PopCapPushNotificationService;->GetServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v2, "version"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string p1, "pck"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    return p1
.end method

.method public StartService(Ljava/lang/String;)I
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/popcap/util/PopCapPushNotificationService;->GetServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const-string v3, "version"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v1, "pck"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    return p1
.end method
