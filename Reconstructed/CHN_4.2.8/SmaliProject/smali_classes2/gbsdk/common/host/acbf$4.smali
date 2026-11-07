.class public final Lgbsdk/common/host/acbf$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/acbf;->a(Lgbsdk/common/host/abyx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aMA:Lgbsdk/common/host/abyx;

.field final synthetic aNu:Lgbsdk/common/host/acbf;


# direct methods
.method constructor <init>(Lgbsdk/common/host/acbf;Lgbsdk/common/host/abyx;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lgbsdk/common/host/acbf$4;->aNu:Lgbsdk/common/host/acbf;

    iput-object p2, p0, Lgbsdk/common/host/acbf$4;->aMA:Lgbsdk/common/host/abyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 336
    iget-object v0, p0, Lgbsdk/common/host/acbf$4;->aNu:Lgbsdk/common/host/acbf;

    iget-object v1, p0, Lgbsdk/common/host/acbf$4;->aMA:Lgbsdk/common/host/abyx;

    invoke-static {v0, v1}, Lgbsdk/common/host/acbf;->a(Lgbsdk/common/host/acbf;Lgbsdk/common/host/abyx;)V

    return-void
.end method
