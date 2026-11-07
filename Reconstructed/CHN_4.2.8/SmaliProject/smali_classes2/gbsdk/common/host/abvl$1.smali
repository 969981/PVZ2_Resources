.class public final Lgbsdk/common/host/abvl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abvl;-><init>([Lgbsdk/common/host/abvl$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLe:Lgbsdk/common/host/abvl$ab;

.field final synthetic aLf:Lgbsdk/common/host/abvl;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abvl;Lgbsdk/common/host/abvl$ab;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lgbsdk/common/host/abvl$1;->aLf:Lgbsdk/common/host/abvl;

    iput-object p2, p0, Lgbsdk/common/host/abvl$1;->aLe:Lgbsdk/common/host/abvl$ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abvl$1;->aLe:Lgbsdk/common/host/abvl$ab;

    invoke-interface {v0}, Lgbsdk/common/host/abvl$ab;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lgbsdk/common/host/abvl$1;->aLf:Lgbsdk/common/host/abvl;

    iput-object v0, v1, Lgbsdk/common/host/abvl;->ea:Ljava/lang/Throwable;

    .line 29
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abvl$1;->aLf:Lgbsdk/common/host/abvl;

    .line 1013
    iget-object v0, v0, Lgbsdk/common/host/abvl;->cy:Ljava/util/concurrent/CountDownLatch;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
