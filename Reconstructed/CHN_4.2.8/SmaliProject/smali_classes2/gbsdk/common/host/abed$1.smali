.class public final Lgbsdk/common/host/abed$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abed;->as()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/v;->b(Ljava/lang/Runnable;)V

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/apm/common/utility/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/abed;->f()V

    :cond_0
    invoke-static {}, Lgbsdk/common/host/abed;->x()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abed;->as()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    invoke-static {}, Lgbsdk/common/host/abed;->as()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
