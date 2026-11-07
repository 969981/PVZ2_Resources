.class public final Lgbsdk/common/host/abwj$1;
.super Ljava/lang/Object;
.source "CloudMessageManager.java"

# interfaces
.implements Lgbsdk/common/host/abwl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKI:Lgbsdk/common/host/abwj;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgbsdk/common/host/abwj;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lgbsdk/common/host/abwj$1;->aKI:Lgbsdk/common/host/abwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(JJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 124
    invoke-static {}, Lcom/apm/insight/log/VLog;->flush()V

    const-wide/16 v0, 0x3e8

    .line 126
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 130
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/abwj$1;->aKI:Lgbsdk/common/host/abwj;

    .line 1046
    iget-object v0, v0, Lgbsdk/common/host/abwj;->c:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Lcom/apm/insight/log/VLog;->getInstance(Ljava/lang/String;)Lcom/apm/insight/log/ILog;

    move-result-object v0

    const-string v1, "ApmInsight"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/apm/insight/log/ILog;->getFilesOfAllProcesses(JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    .line 133
    sget-boolean p1, Lgbsdk/common/host/abvp;->a:Z

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/String;

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "iLog get vlog list size:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v1, p1}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    :cond_0
    sget-boolean p1, Lgbsdk/common/host/abvp;->a:Z

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 139
    :goto_1
    iget-object p2, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    new-array p2, v3, [Ljava/lang/String;

    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "iLog get vlog List result:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v1, p2}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    return-object p1
.end method

.method public final hD()Lgbsdk/common/host/abva;
    .locals 3

    .line 150
    iget-object v0, p0, Lgbsdk/common/host/abwj$1;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "log file get"

    goto :goto_1

    :cond_1
    const-string v1, "log file not get"

    :goto_1
    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abva;->a(ZLjava/lang/String;Ljava/util/HashMap;)Lgbsdk/common/host/abva;

    move-result-object v0

    return-object v0
.end method
