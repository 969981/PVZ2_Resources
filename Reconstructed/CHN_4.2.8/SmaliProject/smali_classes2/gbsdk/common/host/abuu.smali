.class public final Lgbsdk/common/host/abuu;
.super Ljava/lang/Object;
.source "CommandReportUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lgbsdk/common/host/abwh;Ljava/lang/String;)V
    .locals 2

    .line 1098
    iget-object p1, p1, Lgbsdk/common/host/abwh;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-static {p2, p1, p0, v0, v1}, Lgbsdk/common/host/abuu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    sget-boolean v0, Lgbsdk/common/host/abvp;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "report: commandId="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", message="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", code="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ", specificParams="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ApmInsight"

    invoke-static {v1, v0}, Lgbsdk/common/host/abvp;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 62
    :cond_1
    new-instance p4, Lgbsdk/common/host/abvq;

    invoke-direct {p4, p0, p1, v0}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 63
    iput p3, p4, Lgbsdk/common/host/abvq;->bd:I

    .line 64
    iput-object p2, p4, Lgbsdk/common/host/abvq;->m:Ljava/lang/String;

    .line 65
    invoke-static {p4}, Lgbsdk/common/host/abuw;->a(Lgbsdk/common/host/abvq;)V

    return-void
.end method
