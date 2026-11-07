.class public final Lgbsdk/common/host/abyl$1;
.super Lgbsdk/common/host/abvh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLJ:Lgbsdk/common/host/abyl;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abyl;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lgbsdk/common/host/abyl$1;->aLJ:Lgbsdk/common/host/abyl;

    invoke-direct {p0}, Lgbsdk/common/host/abvh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lgbsdk/common/host/abyl$1;->aLJ:Lgbsdk/common/host/abyl;

    invoke-static {p1}, Lgbsdk/common/host/abyl;->a(Lgbsdk/common/host/abyl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-static {}, Lgbsdk/common/host/abyo;->hN()Lgbsdk/common/host/abyo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgbsdk/common/host/abyo;->i(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
