.class public Lgbsdk/common/host/abqe$ac;
.super Ljava/lang/Object;
.source "DirectedGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ac"
.end annotation


# instance fields
.field final synthetic xu:Lgbsdk/common/host/abqe;

.field public final xv:Ljava/lang/String;

.field public final xw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqe$ab;",
            ">;"
        }
    .end annotation
.end field

.field public xx:I


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abqe;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lgbsdk/common/host/abqe$ac;->xu:Lgbsdk/common/host/abqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lgbsdk/common/host/abqe$ac;->xv:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lgbsdk/common/host/abqe$ac;->xx:I

    .line 31
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abqe$ac;->xw:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/abqe$ac;)I
    .locals 2

    .line 23
    iget v0, p0, Lgbsdk/common/host/abqe$ac;->xx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgbsdk/common/host/abqe$ac;->xx:I

    return v0
.end method

.method static synthetic b(Lgbsdk/common/host/abqe$ac;)I
    .locals 1

    .line 23
    iget v0, p0, Lgbsdk/common/host/abqe$ac;->xx:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgbsdk/common/host/abqe$ac;->xx:I

    return v0
.end method
