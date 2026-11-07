.class final Lcom/tencent/wxop/stat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bN:Lcom/tencent/wxop/stat/f;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/m;->e:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wxop/stat/m;->bN:Lcom/tencent/wxop/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/m;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wxop/stat/m;->bN:Lcom/tencent/wxop/stat/f;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/tencent/wxop/stat/e;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/f;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/e;->K()Lcom/tencent/wxop/stat/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/b/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method
