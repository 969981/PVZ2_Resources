.class public Lgbsdk/common/host/abcv;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/m;->b()Z

    move-result v0

    return v0
.end method
