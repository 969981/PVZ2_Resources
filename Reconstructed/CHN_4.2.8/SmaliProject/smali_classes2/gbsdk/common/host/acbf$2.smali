.class public final Lgbsdk/common/host/acbf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/acbf;->c(Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKZ:Landroid/content/Intent;

.field final synthetic aNu:Lgbsdk/common/host/acbf;


# direct methods
.method constructor <init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lgbsdk/common/host/acbf$2;->aNu:Lgbsdk/common/host/acbf;

    iput-object p2, p0, Lgbsdk/common/host/acbf$2;->aKZ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 212
    invoke-static {}, Lgbsdk/common/host/acbf;->hW()Lgbsdk/common/host/acbf;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/acbf$2;->aKZ:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/acbf;->a(Landroid/content/ComponentName;)Z

    return-void
.end method
