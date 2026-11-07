.class public final Lgbsdk/common/host/acbf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/acbf;->b(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKZ:Landroid/content/Intent;

.field final synthetic aNy:Lgbsdk/common/host/acbf;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lgbsdk/common/host/acbf$1;->aNy:Lgbsdk/common/host/acbf;

    iput-object p2, p0, Lgbsdk/common/host/acbf$1;->aKZ:Landroid/content/Intent;

    iput-object p3, p0, Lgbsdk/common/host/acbf$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lgbsdk/common/host/acbf$1;->aNy:Lgbsdk/common/host/acbf;

    iget-object v1, p0, Lgbsdk/common/host/acbf$1;->aKZ:Landroid/content/Intent;

    iget-object v2, p0, Lgbsdk/common/host/acbf$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/acbf;->a(Lgbsdk/common/host/acbf;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    return-void
.end method
