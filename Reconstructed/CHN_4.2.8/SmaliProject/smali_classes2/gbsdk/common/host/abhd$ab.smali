.class public abstract Lgbsdk/common/host/abhd$ab;
.super Ljava/lang/Object;
.source "LifeCycleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation


# instance fields
.field public fX:I

.field public fY:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 107
    iput v0, p0, Lgbsdk/common/host/abhd$ab;->fX:I

    .line 109
    new-instance v0, Lgbsdk/common/host/abhd$ab$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abhd$ab$1;-><init>(Lgbsdk/common/host/abhd$ab;)V

    iput-object v0, p0, Lgbsdk/common/host/abhd$ab;->fY:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    .line 107
    iput v0, p0, Lgbsdk/common/host/abhd$ab;->fX:I

    .line 109
    new-instance v0, Lgbsdk/common/host/abhd$ab$1;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abhd$ab$1;-><init>(Lgbsdk/common/host/abhd$ab;)V

    iput-object v0, p0, Lgbsdk/common/host/abhd$ab;->fY:Ljava/lang/Runnable;

    .line 122
    iput p1, p0, Lgbsdk/common/host/abhd$ab;->fX:I

    return-void
.end method


# virtual methods
.method public abstract aN()V
.end method

.method public abstract aO()V
.end method
