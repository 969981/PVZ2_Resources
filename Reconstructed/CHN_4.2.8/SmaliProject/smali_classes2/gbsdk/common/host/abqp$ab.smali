.class public Lgbsdk/common/host/abqp$ab;
.super Ljava/lang/Object;
.source "MonitorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public BD:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk_patch_fetch_level"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lgbsdk/common/host/abqp$ab;->BD:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lgbsdk/common/host/abqp$ab;->BD:I

    .line 106
    iput p1, p0, Lgbsdk/common/host/abqp$ab;->BD:I

    return-void
.end method
