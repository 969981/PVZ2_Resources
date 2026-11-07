.class public Lgbsdk/common/host/abcx$ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field final a:I

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abcx$ab;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field dB:Lgbsdk/common/host/abcx$ab;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgbsdk/common/host/abcx$ac;->d:I

    iput p1, p0, Lgbsdk/common/host/abcx$ac;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/abcx$ac;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method X()Lgbsdk/common/host/abcx$ab;
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/abcx$ac;->dB:Lgbsdk/common/host/abcx$ab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lgbsdk/common/host/abcx$ac;->dB:Lgbsdk/common/host/abcx$ab;

    goto :goto_0

    :cond_0
    new-instance v0, Lgbsdk/common/host/abcx$ab;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abcx$ab;-><init>(Lgbsdk/common/host/abcx$1;)V

    :goto_0
    return-object v0
.end method

.method a(Lgbsdk/common/host/abcx$ab;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/abcx$ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lgbsdk/common/host/abcx$ac;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abcx$ac;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbsdk/common/host/abcx$ac;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lgbsdk/common/host/abcx$ac;->d:I

    rem-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abcx$ac;->d:I

    iget-object v1, p0, Lgbsdk/common/host/abcx$ac;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abcx$ab;

    invoke-virtual {p1}, Lgbsdk/common/host/abcx$ab;->a()V

    iput-object p1, p0, Lgbsdk/common/host/abcx$ac;->dB:Lgbsdk/common/host/abcx$ab;

    iget p1, p0, Lgbsdk/common/host/abcx$ac;->d:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lgbsdk/common/host/abcx$ac;->d:I

    return-void
.end method
