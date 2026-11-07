.class public Lgbsdk/common/host/abol$1;
.super Lgbsdk/common/host/abmm$ab;
.source "DefaultLogSendImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abol;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic uD:Lgbsdk/common/host/abol;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abol;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lgbsdk/common/host/abol$1;->uD:Lgbsdk/common/host/abol;

    iput-object p2, p0, Lgbsdk/common/host/abol$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lgbsdk/common/host/abmm$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()I
    .locals 1

    .line 61
    iget-object v0, p0, Lgbsdk/common/host/abol$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->C(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgbsdk/common/host/abol$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_monitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lgbsdk/common/host/abol$1;->a:Ljava/lang/String;

    const-string v1, "sdk_monitor"

    invoke-static {v0, v1}, Lgbsdk/common/host/aboj;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 66
    iget-object v0, p0, Lgbsdk/common/host/abol$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lgbsdk/common/host/abol$1;->uD:Lgbsdk/common/host/abol;

    iget-object v0, v0, Lgbsdk/common/host/abol;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lgbsdk/common/host/abol$1;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abol$1;->uD:Lgbsdk/common/host/abol;

    iget-object v2, v2, Lgbsdk/common/host/abol;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
