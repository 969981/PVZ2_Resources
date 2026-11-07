.class public final Lgbsdk/common/host/abgj;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field public a:I

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lgbsdk/common/host/abgj;->a:I

    .line 24
    iput-object p2, p0, Lgbsdk/common/host/abgj;->cG:Ljava/util/Map;

    .line 25
    iput-object p3, p0, Lgbsdk/common/host/abgj;->fT:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lgbsdk/common/host/abgj;->a:I

    .line 19
    iput-object p2, p0, Lgbsdk/common/host/abgj;->fT:[B

    return-void
.end method
