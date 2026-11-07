.class public Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;->getResultCode()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    sget-object p1, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    sget-object p1, Lcn/egame/terminal/miniapay/EgameMiniApay;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    goto :goto_0
.end method
