.class Lcom/popcap/util/PopCapPushNotificationService$1;
.super Ljava/lang/Object;
.source "PopCapPushNotificationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/util/PopCapPushNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/util/PopCapPushNotificationService;


# direct methods
.method constructor <init>(Lcom/popcap/util/PopCapPushNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p2}, Lcom/popcap/util/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/popcap/util/IRemoteService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/popcap/util/PopCapPushNotificationService;->access$0(Lcom/popcap/util/PopCapPushNotificationService;Lcom/popcap/util/IRemoteService;)V

    .line 41
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1}, Lcom/popcap/util/PopCapPushNotificationService;->access$1(Lcom/popcap/util/PopCapPushNotificationService;)Lcom/popcap/util/IRemoteService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1}, Lcom/popcap/util/PopCapPushNotificationService;->access$2(Lcom/popcap/util/PopCapPushNotificationService;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1}, Lcom/popcap/util/PopCapPushNotificationService;->access$1(Lcom/popcap/util/PopCapPushNotificationService;)Lcom/popcap/util/IRemoteService;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {v0}, Lcom/popcap/util/PopCapPushNotificationService;->access$2(Lcom/popcap/util/PopCapPushNotificationService;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/popcap/util/IRemoteService;->SetSkuUserLastOpt(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1, p2}, Lcom/popcap/util/PopCapPushNotificationService;->access$3(Lcom/popcap/util/PopCapPushNotificationService;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1}, Lcom/popcap/util/PopCapPushNotificationService;->access$4(Lcom/popcap/util/PopCapPushNotificationService;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1}, Lcom/popcap/util/PopCapPushNotificationService;->access$4(Lcom/popcap/util/PopCapPushNotificationService;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {v0}, Lcom/popcap/util/PopCapPushNotificationService;->access$5(Lcom/popcap/util/PopCapPushNotificationService;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    invoke-static {p1, p2}, Lcom/popcap/util/PopCapPushNotificationService;->access$0(Lcom/popcap/util/PopCapPushNotificationService;Lcom/popcap/util/IRemoteService;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/popcap/util/PopCapPushNotificationService$1;->this$0:Lcom/popcap/util/PopCapPushNotificationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/popcap/util/PopCapPushNotificationService;->access$0(Lcom/popcap/util/PopCapPushNotificationService;Lcom/popcap/util/IRemoteService;)V

    return-void
.end method
