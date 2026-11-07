.class public Lcom/popcap/util/PopCapNotificationThread;
.super Ljava/lang/Thread;
.source "PopCapNotificationThread.java"


# static fields
.field public static m_sNotificationThread:Lcom/popcap/util/PopCapNotificationThread;


# instance fields
.field private _daemonService:Lcom/popcap/util/PopCapDaemonService;

.field private _isInitialized:Z

.field private _isInterrupted:Z

.field private _notification:Landroid/app/Notification;

.field private _notificationIconResId:I

.field private _systemNotificationManager:Landroid/app/NotificationManager;

.field private mEventArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/popcap/events/IEventTick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/popcap/util/PopCapDaemonService;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInitialized:Z

    .line 25
    iput-boolean v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInterrupted:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_notificationIconResId:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    .line 31
    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    .line 39
    invoke-direct {p0}, Lcom/popcap/util/PopCapNotificationThread;->initNotificationComponents()V

    return-void
.end method

.method public static Instance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationThread;
    .locals 1

    .line 43
    sget-object v0, Lcom/popcap/util/PopCapNotificationThread;->m_sNotificationThread:Lcom/popcap/util/PopCapNotificationThread;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/popcap/util/PopCapNotificationThread;

    invoke-direct {v0, p0}, Lcom/popcap/util/PopCapNotificationThread;-><init>(Lcom/popcap/util/PopCapDaemonService;)V

    sput-object v0, Lcom/popcap/util/PopCapNotificationThread;->m_sNotificationThread:Lcom/popcap/util/PopCapNotificationThread;

    .line 46
    :cond_0
    sget-object p0, Lcom/popcap/util/PopCapNotificationThread;->m_sNotificationThread:Lcom/popcap/util/PopCapNotificationThread;

    return-object p0
.end method

.method private ThreadSleep(I)V
    .locals 2

    int-to-long v0, p1

    .line 80
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initNotificationComponents()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    .line 100
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/popcap/util/PopCapDaemonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 99
    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_systemNotificationManager:Landroid/app/NotificationManager;

    .line 102
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v1}, Lcom/popcap/util/PopCapDaemonService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 113
    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    const-string v2, "DEBUG"

    const-string v4, "ERROR: failed to get Packa geInfo"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInitialized:Z

    const/4 v1, 0x0

    .line 121
    :goto_0
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 122
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_notificationIconResId:I

    .line 124
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    iput-boolean v3, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInitialized:Z

    .line 128
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public GetPackageIcon(Ljava/lang/String;)I
    .locals 0

    .line 146
    iget p1, p0, Lcom/popcap/util/PopCapNotificationThread;->_notificationIconResId:I

    return p1
.end method

.method public PlayNotification(Lcom/popcap/util/PopCapNotificationAbstract;)V
    .locals 5

    .line 152
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->GetSkuId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/popcap/util/PCPLocalGameMgr;->GetPackage(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lcom/popcap/util/PopCapNotificationThread;->GetPackageIcon(Ljava/lang/String;)I

    move-result v0

    .line 162
    new-instance v1, Landroid/app/Notification;

    iget-object v2, p1, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    .line 164
    iget-object v0, p1, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 165
    invoke-static {}, Lcom/popcap/util/NtfAction;->Instance()Lcom/popcap/util/NtfAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/popcap/util/NtfAction;->GetUserOptAction(Lcom/popcap/util/PopCapNotificationAbstract;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    iget-object v3, p1, Lcom/popcap/util/PopCapNotificationAbstract;->title:Ljava/lang/String;

    .line 167
    iget-object v4, p1, Lcom/popcap/util/PopCapNotificationAbstract;->text:Ljava/lang/String;

    .line 166
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 168
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 169
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_systemNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationAbstract;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/popcap/util/PopCapNotificationThread;->_notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public RegistEvent(Lcom/popcap/events/IEventTick;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public SetService(Lcom/popcap/util/PopCapDaemonService;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/popcap/util/PopCapNotificationThread;->_daemonService:Lcom/popcap/util/PopCapDaemonService;

    return-void
.end method

.method public UpdateSkedualTime(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/events/IEventTick;

    .line 65
    invoke-interface {v1}, Lcom/popcap/events/IEventTick;->UpdateUserOpt()V

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {v1, p1}, Lcom/popcap/events/IEventTick;->UpdateSkuUserOpt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserStartGameEvent(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/events/IEventTick;

    .line 74
    invoke-interface {v1, p1}, Lcom/popcap/events/IEventTick;->OnUserStartGameEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInterrupted:Z

    if-eqz v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/popcap/util/PopCapNotificationThread;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x1d4c0

    .line 57
    invoke-direct {p0, v0}, Lcom/popcap/util/PopCapNotificationThread;->ThreadSleep(I)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/popcap/events/IEventTick;

    .line 56
    invoke-interface {v1}, Lcom/popcap/events/IEventTick;->Tick()V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/popcap/util/PopCapNotificationThread;->_isInterrupted:Z

    return-void
.end method
