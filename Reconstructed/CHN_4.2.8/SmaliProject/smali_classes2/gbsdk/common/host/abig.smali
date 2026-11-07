.class public Lgbsdk/common/host/abig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abig$ac;,
        Lgbsdk/common/host/abig$ab;
    }
.end annotation


# static fields
.field static final fH:Lgbsdk/common/host/abig$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    new-instance v0, Lgbsdk/common/host/abig$ac;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abig$ac;-><init>(Lgbsdk/common/host/abig$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgbsdk/common/host/abig$ab;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abig$ab;-><init>(Lgbsdk/common/host/abig$1;)V

    :goto_0
    sput-object v0, Lgbsdk/common/host/abig;->fH:Lgbsdk/common/host/abig$ab;

    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    sget-object v0, Lgbsdk/common/host/abig;->fH:Lgbsdk/common/host/abig$ab;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abig$ab;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
