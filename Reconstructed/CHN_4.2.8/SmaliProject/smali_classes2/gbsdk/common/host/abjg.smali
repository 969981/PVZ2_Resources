.class public Lgbsdk/common/host/abjg;
.super Ljava/lang/Object;
.source "OkHttp3RequestLog.java"


# instance fields
.field nr:Z

.field ns:Z

.field nt:J

.field nu:J

.field nv:J

.field nw:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lgbsdk/common/host/abjg;->nr:Z

    .line 529
    iput-boolean v0, p0, Lgbsdk/common/host/abjg;->ns:Z

    const-wide/16 v0, -0x1

    .line 530
    iput-wide v0, p0, Lgbsdk/common/host/abjg;->nt:J

    .line 531
    iput-wide v0, p0, Lgbsdk/common/host/abjg;->nu:J

    .line 532
    iput-wide v0, p0, Lgbsdk/common/host/abjg;->nv:J

    .line 533
    iput-wide v0, p0, Lgbsdk/common/host/abjg;->nw:J

    return-void
.end method
