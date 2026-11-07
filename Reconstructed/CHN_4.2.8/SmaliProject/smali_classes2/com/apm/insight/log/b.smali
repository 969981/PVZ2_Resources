.class public final Lcom/apm/insight/log/b;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/apm/insight/log/a/g;->b()V

    return-void

    .line 113
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/apm/insight/log/a$a;

    if-eqz v0, :cond_2

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/apm/insight/log/a$a;

    invoke-static {p1}, Lcom/apm/insight/log/a;->a(Lcom/apm/insight/log/a$a;)V

    :cond_2
    :goto_0
    return-void
.end method
