.class final Lct/bm$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lct/bm;


# direct methods
.method public constructor <init>(Lct/bm;Landroid/os/Looper;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lct/bm$a;->a:Lct/bm;

    .line 860
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 865
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-static {}, Lct/bm;->c()V

    .line 871
    iget-object p1, p0, Lct/bm$a;->a:Lct/bm;

    invoke-static {p1}, Lct/bm;->b(Lct/bm;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lct/bm;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object p1, p0, Lct/bm$a;->a:Lct/bm;

    invoke-static {p1}, Lct/bm;->a(Lct/bm;)V

    return-void
.end method
