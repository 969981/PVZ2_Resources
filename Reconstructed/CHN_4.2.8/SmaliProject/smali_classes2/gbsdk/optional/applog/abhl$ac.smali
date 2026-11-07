.class public Lgbsdk/optional/applog/abhl$ac;
.super Lgbsdk/optional/applog/abfa$ab;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abhl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgbsdk/optional/applog/abfa$ab;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgbsdk/optional/applog/abhl$ac;->d:J

    return-void
.end method
