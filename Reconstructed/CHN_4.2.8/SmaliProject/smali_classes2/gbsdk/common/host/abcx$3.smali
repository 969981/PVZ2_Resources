.class public Lgbsdk/common/host/abcx$3;
.super Lgbsdk/common/host/abcw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abcx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dz:Lgbsdk/common/host/abcx;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abcx;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    invoke-direct {p0}, Lgbsdk/common/host/abcw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;Z)Z

    iget-object v0, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    invoke-static {v0, p1}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1}, Lgbsdk/common/host/abcw;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    sget-wide v2, Lgbsdk/common/host/abcw;->a:J

    invoke-static {p1, v1, v2, v3}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;ZJ)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lgbsdk/common/host/abcw;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    invoke-static {p1}, Lgbsdk/common/host/abcx;->f(Lgbsdk/common/host/abcx;)I

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    sget-wide v0, Lgbsdk/common/host/abcw;->a:J

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;ZJ)V

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    invoke-static {p1}, Lgbsdk/common/host/abcx;->g(Lgbsdk/common/host/abcx;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgbsdk/common/host/abcx;->b(Lgbsdk/common/host/abcx;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    const-string v0, "no message running"

    invoke-static {p1, v0}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lgbsdk/common/host/abcx$3;->dz:Lgbsdk/common/host/abcx;

    invoke-static {p1, v2}, Lgbsdk/common/host/abcx;->a(Lgbsdk/common/host/abcx;Z)Z

    return-void
.end method
