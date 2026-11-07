.class public Lgbsdk/common/host/abmi;
.super Ljava/lang/Object;
.source "DispatchActionInfo.java"


# instance fields
.field public mPriority:I

.field public qJ:Ljava/lang/String;

.field public qW:J

.field public qX:Z

.field public qY:I

.field public qZ:Z

.field public ra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIZIZLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgbsdk/common/host/abmi;->qJ:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lgbsdk/common/host/abmi;->qW:J

    .line 21
    iput p4, p0, Lgbsdk/common/host/abmi;->mPriority:I

    .line 22
    iput-boolean p5, p0, Lgbsdk/common/host/abmi;->qX:Z

    .line 23
    iput p6, p0, Lgbsdk/common/host/abmi;->qY:I

    .line 24
    iput-boolean p7, p0, Lgbsdk/common/host/abmi;->qZ:Z

    .line 25
    iput-object p8, p0, Lgbsdk/common/host/abmi;->ra:Ljava/lang/String;

    return-void
.end method
