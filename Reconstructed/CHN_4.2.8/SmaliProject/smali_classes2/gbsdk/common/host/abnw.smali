.class public Lgbsdk/common/host/abnw;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private a:I

.field public cG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fT:[B


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lgbsdk/common/host/abnw;->a:I

    .line 25
    iput-object p2, p0, Lgbsdk/common/host/abnw;->cG:Ljava/util/Map;

    .line 26
    iput-object p3, p0, Lgbsdk/common/host/abnw;->fT:[B

    return-void
.end method
