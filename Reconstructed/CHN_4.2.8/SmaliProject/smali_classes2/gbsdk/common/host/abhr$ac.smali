.class public Lgbsdk/common/host/abhr$ac;
.super Lgbsdk/common/host/abhr$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abhr$ab;-><init>(Lgbsdk/common/host/abhr$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abhr$1;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abhr$ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result p1

    return p1
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result p1

    return p1
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result p1

    return p1
.end method
