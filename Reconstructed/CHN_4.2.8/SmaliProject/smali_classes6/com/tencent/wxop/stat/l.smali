.class final Lcom/tencent/wxop/stat/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bN:Lcom/tencent/wxop/stat/f;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/l;->e:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wxop/stat/l;->bN:Lcom/tencent/wxop/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/l;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/e;->K()Lcom/tencent/wxop/stat/b/b;

    move-result-object v0

    const-string v1, "The Context of StatService.onResume() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/b/b;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/tencent/wxop/stat/b/l;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wxop/stat/l;->bN:Lcom/tencent/wxop/stat/f;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/f;)V

    return-void
.end method
