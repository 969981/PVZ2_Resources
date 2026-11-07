.class public Lgbsdk/common/host/abjh;
.super Ljava/lang/Object;
.source "OkHttp3RequestLog.java"


# instance fields
.field mUrl:Ljava/lang/String;

.field ne:Ljava/lang/String;

.field np:I

.field nq:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 521
    iput v0, p0, Lgbsdk/common/host/abjh;->np:I

    const-string v0, ""

    .line 522
    iput-object v0, p0, Lgbsdk/common/host/abjh;->ne:Ljava/lang/String;

    .line 523
    iput-object v0, p0, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lgbsdk/common/host/abjh;->nq:Z

    return-void
.end method
