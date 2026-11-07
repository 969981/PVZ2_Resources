.class public Lcom/apm/insight/runtime/a/e;
.super Lcom/apm/insight/runtime/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/apm/insight/runtime/a/b;Lcom/apm/insight/runtime/a/d;)V
    .locals 1

    sget-object v0, Lcom/apm/insight/CrashType;->BLOCK:Lcom/apm/insight/CrashType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/apm/insight/runtime/a/c;-><init>(Lcom/apm/insight/CrashType;Landroid/content/Context;Lcom/apm/insight/runtime/a/b;Lcom/apm/insight/runtime/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;
    .locals 2

    invoke-super {p0, p1}, Lcom/apm/insight/runtime/a/c;->a(Lgbsdk/common/host/abfl;)Lgbsdk/common/host/abfl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apm/insight/runtime/a/e;->g(Lgbsdk/common/host/abfl;)V

    iget-object v0, p0, Lcom/apm/insight/runtime/a/e;->a:Lcom/apm/insight/CrashType;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abib;->a(Lgbsdk/common/host/abfl;Lcom/apm/insight/entity/Header;Lcom/apm/insight/CrashType;)V

    return-object p1
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
