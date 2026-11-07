.class public Lgbsdk/common/host/abdx$ac;
.super Lgbsdk/common/host/abdv$ab;
.source "HWOaidImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgbsdk/common/host/abdv$ab;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lgbsdk/common/host/abdx$ac;->c:J

    return-void
.end method
