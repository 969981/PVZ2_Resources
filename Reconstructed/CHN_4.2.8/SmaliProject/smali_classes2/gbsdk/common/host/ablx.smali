.class public Lgbsdk/common/host/ablx;
.super Ljava/lang/Object;
.source "HostResolveJob.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lgbsdk/common/host/ablx;",
        ">;"
    }
.end annotation


# instance fields
.field public oG:Ljava/lang/String;

.field public pj:Lgbsdk/common/host/ablt;

.field public pk:Z

.field private pl:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgbsdk/common/host/ablt;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lgbsdk/common/host/ablx;->oG:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lgbsdk/common/host/ablx;->pj:Lgbsdk/common/host/ablt;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lgbsdk/common/host/ablx;->pl:J

    .line 15
    iput-boolean p3, p0, Lgbsdk/common/host/ablx;->pk:Z

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/ablx;)I
    .locals 4

    .line 20
    iget-wide v0, p1, Lgbsdk/common/host/ablx;->pl:J

    iget-wide v2, p0, Lgbsdk/common/host/ablx;->pl:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lgbsdk/common/host/ablx;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ablx;->a(Lgbsdk/common/host/ablx;)I

    move-result p1

    return p1
.end method
