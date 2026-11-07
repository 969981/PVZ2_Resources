.class public final Lgbsdk/common/host/acbf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/acbf;->a(Landroid/content/Intent;Lgbsdk/common/host/abyx;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKZ:Landroid/content/Intent;

.field final synthetic aNA:Lgbsdk/common/host/acbf;

.field final synthetic aNz:Lgbsdk/common/host/abyx;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;Lgbsdk/common/host/abyx;ILjava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lgbsdk/common/host/acbf$3;->aNA:Lgbsdk/common/host/acbf;

    iput-object p2, p0, Lgbsdk/common/host/acbf$3;->aKZ:Landroid/content/Intent;

    iput-object p3, p0, Lgbsdk/common/host/acbf$3;->aNz:Lgbsdk/common/host/abyx;

    iput p4, p0, Lgbsdk/common/host/acbf$3;->c:I

    iput-object p5, p0, Lgbsdk/common/host/acbf$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 271
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/acbf$3;->aNA:Lgbsdk/common/host/acbf;

    iget-object v1, p0, Lgbsdk/common/host/acbf$3;->aKZ:Landroid/content/Intent;

    iget-object v2, p0, Lgbsdk/common/host/acbf$3;->aNz:Lgbsdk/common/host/abyx;

    iget-object v3, p0, Lgbsdk/common/host/acbf$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/acbf;->a(Lgbsdk/common/host/acbf;Landroid/content/Intent;Lgbsdk/common/host/abyx;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Zeus/service_zeus"

    const-string v2, "bindService failed"

    .line 273
    invoke-static {v1, v2, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
