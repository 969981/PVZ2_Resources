.class public final Lcom/apm/insight/runtime/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apm/insight/runtime/v$b<",
        "Lcom/apm/insight/runtime/v$d;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apm/insight/runtime/v$d;Ljava/lang/Runnable;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/apm/insight/runtime/v$d;->a:Landroid/os/Message;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/apm/insight/runtime/v$d;->a:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/apm/insight/runtime/v$d;->a:Landroid/os/Message;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/apm/insight/runtime/v$d;->a:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/apm/insight/runtime/v$d;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/apm/insight/runtime/v$1;->a(Lcom/apm/insight/runtime/v$d;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
