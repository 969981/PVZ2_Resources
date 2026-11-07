.class public Lgbsdk/common/host/abqp$ac;
.super Ljava/lang/Object;
.source "MonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field public BE:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash_package_name"
    .end annotation
.end field

.field public BF:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "crash_so_list"
    .end annotation
.end field

.field public BG:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trace_dump"
    .end annotation
.end field

.field public BH:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apm_enable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lgbsdk/common/host/abqp$ac;->BG:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lgbsdk/common/host/abqp$ac;->BH:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lgbsdk/common/host/abqp$ac;->BG:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lgbsdk/common/host/abqp$ac;->BH:Z

    .line 79
    iput-object p1, p0, Lgbsdk/common/host/abqp$ac;->BE:[Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lgbsdk/common/host/abqp$ac;->BF:[Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Lgbsdk/common/host/abqp$ac;->BG:Z

    return-void
.end method
