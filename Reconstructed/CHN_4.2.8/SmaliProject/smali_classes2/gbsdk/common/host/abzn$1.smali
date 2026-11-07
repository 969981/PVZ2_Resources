.class public final Lgbsdk/common/host/abzn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzn;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic aMY:Lgbsdk/common/host/abzn;

.field final synthetic cz:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzn;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lgbsdk/common/host/abzn$1;->aMY:Lgbsdk/common/host/abzn;

    iput-object p2, p0, Lgbsdk/common/host/abzn$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lgbsdk/common/host/abzn$1;->cz:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 23
    invoke-static {}, Lgbsdk/common/host/abzp;->hR()Lgbsdk/common/host/abzp;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abzn$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lgbsdk/common/host/abzn$1;->cz:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abzp;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
