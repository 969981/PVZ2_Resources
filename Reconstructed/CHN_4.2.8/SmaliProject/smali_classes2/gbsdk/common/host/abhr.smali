.class public Lgbsdk/common/host/abhr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abhr$ac;,
        Lgbsdk/common/host/abhr$ab;
    }
.end annotation


# static fields
.field static final fs:Lgbsdk/common/host/abhr$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    new-instance v0, Lgbsdk/common/host/abhr$ac;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abhr$ac;-><init>(Lgbsdk/common/host/abhr$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgbsdk/common/host/abhr$ab;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abhr$ab;-><init>(Lgbsdk/common/host/abhr$1;)V

    :goto_0
    sput-object v0, Lgbsdk/common/host/abhr;->fs:Lgbsdk/common/host/abhr$ab;

    return-void
.end method

.method public static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    sget-object v0, Lgbsdk/common/host/abhr;->fs:Lgbsdk/common/host/abhr$ab;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abhr$ab;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    sget-object v0, Lgbsdk/common/host/abhr;->fs:Lgbsdk/common/host/abhr$ab;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abhr$ab;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    sget-object v0, Lgbsdk/common/host/abhr;->fs:Lgbsdk/common/host/abhr$ab;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abhr$ab;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method
