.class public Lcom/popcap/util/PopCapDaemonService;
.super Landroid/app/Service;
.source "PopCapDaemonService.java"


# instance fields
.field private final mBinder:Lcom/popcap/util/IRemoteService$Stub;

.field public popcapNotificationConfig:Lcom/popcap/util/PopCapNotificationConfigManger;

.field public popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

.field private s_version:I

.field public systemNotificationManager:Landroid/app/NotificationManager;

.field public targetClassName:Ljava/lang/String;

.field public targetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/popcap/util/PopCapDaemonService;->s_version:I

    .line 30
    new-instance v0, Lcom/popcap/util/PopCapDaemonService$1;

    invoke-direct {v0, p0}, Lcom/popcap/util/PopCapDaemonService$1;-><init>(Lcom/popcap/util/PopCapDaemonService;)V

    iput-object v0, p0, Lcom/popcap/util/PopCapDaemonService;->mBinder:Lcom/popcap/util/IRemoteService$Stub;

    return-void
.end method

.method private IsDebugVerion()Z
    .locals 4

    .line 180
    const-string v0, "PushService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    const-string v2, "ver"

    const-string v3, "none"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 187
    :cond_0
    const-string v2, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 191
    :cond_1
    const-string v2, "release"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v1
.end method

.method private SaveVersion(Ljava/lang/String;)V
    .locals 2

    .line 200
    const-string v0, "PushService"

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/popcap/util/PopCapDaemonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    const-string v1, "ver"

    .line 203
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public GetServiceVesion()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/popcap/util/PopCapDaemonService;->s_version:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->mBinder:Lcom/popcap/util/IRemoteService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    const-string v0, "service onCreate"

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/popcap/util/PopCapDaemonService;->stopNotifications()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .line 116
    const-string v0, "service onStart"

    invoke-static {v0}, Lcom/popcap/util/NtfUtil;->SaveLogServer(Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 210
    sput-object p0, Lcom/popcap/util/NtfUtil;->mPcpService:Lcom/popcap/util/PopCapDaemonService;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 218
    invoke-direct {p0}, Lcom/popcap/util/PopCapDaemonService;->IsDebugVerion()Z

    move-result p1

    .line 219
    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SetVerion(Z)V

    .line 220
    invoke-static {p0}, Lcom/popcap/util/PopCapNotificationManager;->getInstance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationManager;

    move-result-object p3

    iput-object p3, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p3}, Lcom/popcap/util/PopCapNotificationManager;->SetDebugVersionConfig()V

    goto/16 :goto_2

    .line 224
    :cond_1
    invoke-virtual {p3}, Lcom/popcap/util/PopCapNotificationManager;->SetReleaseVersionConfig()V

    goto :goto_2

    .line 227
    :cond_2
    invoke-static {p0}, Lcom/popcap/util/PopCapNotificationManager;->getInstance(Lcom/popcap/util/PopCapDaemonService;)Lcom/popcap/util/PopCapNotificationManager;

    move-result-object p3

    iput-object p3, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    .line 228
    const-string p3, "version"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 229
    const-string v0, "pck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lstStartTime_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 234
    invoke-static {v1}, Lcom/popcap/util/NtfUtil;->GetDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/popcap/util/NtfUtil;->SaveDatalocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    invoke-virtual {v0, p1}, Lcom/popcap/util/PopCapNotificationManager;->OnUserStartGameEvent(Ljava/lang/String;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_4

    move p1, p2

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 238
    :goto_1
    invoke-static {p1}, Lcom/popcap/util/NtfUtil;->SetVerion(Z)V

    if-eqz p1, :cond_5

    .line 241
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationManager;->SetDebugVersionConfig()V

    .line 242
    const-string p1, "debug"

    invoke-direct {p0, p1}, Lcom/popcap/util/PopCapDaemonService;->SaveVersion(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne p3, p2, :cond_6

    .line 244
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationManager;->SetReleaseVersionConfig()V

    .line 245
    const-string p1, "release"

    invoke-direct {p0, p1}, Lcom/popcap/util/PopCapDaemonService;->SaveVersion(Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "what you pass value = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "+++ errror "

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_2
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    invoke-virtual {p1}, Lcom/popcap/util/PopCapNotificationManager;->StartPopcapService()V

    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public saveNotifications()V
    .locals 0

    return-void
.end method

.method public sendNotificationImpl(II)Z
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setCoinRemainsImpl(II)Z
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setCoinSettingsImpl(III)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public stopNotifications()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/popcap/util/PopCapNotificationManager;->stopNotifications()V

    :cond_0
    return-void
.end method
