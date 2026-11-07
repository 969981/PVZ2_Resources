.class public Lgbsdk/common/host/abvu;
.super Ljava/lang/Object;
.source "TTDnsResult.java"


# instance fields
.field public aIL:I

.field public aIM:I

.field public aIN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public aIO:Ljava/lang/String;

.field public jT:I


# direct methods
.method public constructor <init>(IIILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lgbsdk/common/host/abvu;->aIL:I

    .line 14
    iput p2, p0, Lgbsdk/common/host/abvu;->jT:I

    .line 15
    iput p3, p0, Lgbsdk/common/host/abvu;->aIM:I

    .line 16
    iput-object p4, p0, Lgbsdk/common/host/abvu;->aIN:Ljava/util/List;

    .line 17
    iput-object p5, p0, Lgbsdk/common/host/abvu;->aIO:Ljava/lang/String;

    return-void
.end method
