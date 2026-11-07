.class final Lcom/tencent/wxop/stat/z;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic cm:Lcom/tencent/wxop/stat/g;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/z;->cm:Lcom/tencent/wxop/stat/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/wxop/stat/z;->cm:Lcom/tencent/wxop/stat/g;

    invoke-static {p1}, Lcom/tencent/wxop/stat/g;->a(Lcom/tencent/wxop/stat/g;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/wxop/stat/z;->cm:Lcom/tencent/wxop/stat/g;

    invoke-static {p1}, Lcom/tencent/wxop/stat/g;->a(Lcom/tencent/wxop/stat/g;)Lcom/tencent/wxop/stat/b/f;

    move-result-object p1

    new-instance p2, Lcom/tencent/wxop/stat/ae;

    invoke-direct {p2, p0}, Lcom/tencent/wxop/stat/ae;-><init>(Lcom/tencent/wxop/stat/z;)V

    invoke-virtual {p1, p2}, Lcom/tencent/wxop/stat/b/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
