.class public Lcom/tencent/tencentmap/lbssdk/service/e;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/lbssdk/service/e$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "tencentloc"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 12
    :catch_0
    new-instance v0, Lcom/tencent/tencentmap/lbssdk/service/e$a;

    const-string v1, "load tencentloc failed"

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/lbssdk/service/e$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lct/ct;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static native o([B)I
.end method

.method public static native r(DII)D
.end method

.method public static native v(Ljava/lang/String;)I
.end method

.method public static native w(Ljava/lang/String;Ljava/lang/String;)I
.end method
