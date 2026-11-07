.class Lcom/popcap/util/PopCapDaemonService$1;
.super Lcom/popcap/util/IRemoteService$Stub;
.source "PopCapDaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/util/PopCapDaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/util/PopCapDaemonService;


# direct methods
.method constructor <init>(Lcom/popcap/util/PopCapDaemonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    .line 30
    invoke-direct {p0}, Lcom/popcap/util/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetServiceVerion()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->GetServiceVesion()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public SetSkuUserLastOpt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/popcap/util/NtfUtil;->SaveUserLastOpt()V

    .line 74
    invoke-static {}, Lcom/popcap/util/PCPLocalGameMgr;->Instance()Lcom/popcap/util/PCPLocalGameMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/popcap/util/PCPLocalGameMgr;->GetGameId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/popcap/util/UserOpt;->Instance()Lcom/popcap/util/UserOpt;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/popcap/util/UserOpt;->UpateUserOpt(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    iget-object v0, v0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    iget-object v0, v0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    invoke-virtual {v0, p1}, Lcom/popcap/util/PopCapNotificationManager;->UpdateSkedualTime(Ljava/lang/String;)V

    return-void
.end method

.method public SetUserLastOpt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    iget-object v0, v0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    iget-object v0, v0, Lcom/popcap/util/PopCapDaemonService;->popcapNotificationManager:Lcom/popcap/util/PopCapNotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/popcap/util/PopCapNotificationManager;->UpdateSkedualTime(Ljava/lang/String;)V

    return-void
.end method

.method public StopService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0}, Lcom/popcap/util/PopCapDaemonService;->stopSelf()V

    return-void
.end method

.method public sendNotification(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/util/PopCapDaemonService;->sendNotificationImpl(II)Z

    move-result p1

    return p1
.end method

.method public setCoinReamins(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0, p1, p2}, Lcom/popcap/util/PopCapDaemonService;->setCoinRemainsImpl(II)Z

    move-result p1

    return p1
.end method

.method public setCoinSettings(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/popcap/util/PopCapDaemonService$1;->this$0:Lcom/popcap/util/PopCapDaemonService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/popcap/util/PopCapDaemonService;->setCoinSettingsImpl(III)Z

    move-result p1

    return p1
.end method
