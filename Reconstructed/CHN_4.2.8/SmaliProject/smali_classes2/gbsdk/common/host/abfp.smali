.class public Lgbsdk/common/host/abfp;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static x(Ljava/lang/String;)Lgbsdk/common/host/abfp;
    .locals 3

    new-instance v0, Lgbsdk/common/host/abfp;

    invoke-direct {v0}, Lgbsdk/common/host/abfp;-><init>()V

    iput-object p0, v0, Lgbsdk/common/host/abfp;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgbsdk/common/host/abfp;->b:J

    return-object v0
.end method
