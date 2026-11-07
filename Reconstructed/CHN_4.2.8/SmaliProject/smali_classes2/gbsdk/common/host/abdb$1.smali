.class public Lgbsdk/common/host/abdb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dg:Lgbsdk/common/host/abdb;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abdb;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abdb$1;->dg:Lgbsdk/common/host/abdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abdb$1;->dg:Lgbsdk/common/host/abdb;

    const/16 v1, 0x19

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lgbsdk/common/host/abdb;->a(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v1, v2, v0}, Lgbsdk/common/host/abct;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
