.class public Lgbsdk/common/host/abig$ac;
.super Lgbsdk/common/host/abig$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgbsdk/common/host/abig$ab;-><init>(Lgbsdk/common/host/abig$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abig$1;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/abig$ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method
