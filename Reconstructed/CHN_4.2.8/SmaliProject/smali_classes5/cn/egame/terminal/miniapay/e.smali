.class public final Lcn/egame/terminal/miniapay/e;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    sput-boolean p1, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    return-void
.end method
