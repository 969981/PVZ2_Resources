.class public final Lcom/apm/insight/runtime/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgbsdk/common/host/abfn;


# direct methods
.method constructor <init>(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/runtime/p$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apm/insight/runtime/p$1;->b:Lgbsdk/common/host/abfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/abhp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/runtime/p$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/apm/insight/runtime/p$1;->b:Lgbsdk/common/host/abfn;

    invoke-static {v0, v1}, Lgbsdk/common/host/abcz;->a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V

    :cond_0
    return-void
.end method
