.class public Lgbsdk/common/host/abqp$ad;
.super Ljava/lang/Object;
.source "MonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# static fields
.field public static BI:F = 100.0f

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public BJ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_debug_md5"
    .end annotation
.end field

.field public BK:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_log_exp_days"
    .end annotation
.end field

.field public BL:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_sub_process_max_size"
    .end annotation
.end field

.field public level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_level"
    .end annotation
.end field

.field public maxDirSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_max_dir_size"
    .end annotation
.end field

.field public perSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vlog_per_size"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lgbsdk/common/host/abqp$ad;->BJ:Ljava/lang/String;

    const/16 v0, 0xe

    .line 45
    iput v0, p0, Lgbsdk/common/host/abqp$ad;->BK:I

    const/high16 v0, 0x1400000

    .line 49
    iput v0, p0, Lgbsdk/common/host/abqp$ad;->maxDirSize:I

    const/high16 v0, 0x200000

    .line 53
    iput v0, p0, Lgbsdk/common/host/abqp$ad;->perSize:I

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lgbsdk/common/host/abqp$ad;->level:I

    const/16 v0, 0xa

    .line 62
    iput v0, p0, Lgbsdk/common/host/abqp$ad;->BL:I

    return-void
.end method


# virtual methods
.method public dU()F
    .locals 2

    .line 66
    iget v0, p0, Lgbsdk/common/host/abqp$ad;->BL:I

    int-to-float v0, v0

    sget v1, Lgbsdk/common/host/abqp$ad;->BI:F

    div-float/2addr v0, v1

    return v0
.end method
