.class public Lgbsdk/common/host/abcx$ag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abcx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ag"
.end annotation


# instance fields
.field a:I

.field b:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abcx$af;",
            ">;"
        }
    .end annotation
.end field

.field dD:Lgbsdk/common/host/abcx$af;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    iput p1, p0, Lgbsdk/common/host/abcx$ag;->a:I

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abcx$af;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lgbsdk/common/host/abcx$ag;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lgbsdk/common/host/abcx$ag;->b:I

    :goto_0
    iget-object v2, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abcx$af;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lgbsdk/common/host/abcx$ag;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abcx$af;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method a(Lgbsdk/common/host/abcx$af;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lgbsdk/common/host/abcx$ag;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lgbsdk/common/host/abcx$ag;->b:I

    rem-int/2addr v0, v1

    iput v0, p0, Lgbsdk/common/host/abcx$ag;->b:I

    iget-object v1, p0, Lgbsdk/common/host/abcx$ag;->d:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abcx$af;

    invoke-virtual {p1}, Lgbsdk/common/host/abcx$af;->b()V

    iput-object p1, p0, Lgbsdk/common/host/abcx$ag;->dD:Lgbsdk/common/host/abcx$af;

    iget p1, p0, Lgbsdk/common/host/abcx$ag;->b:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lgbsdk/common/host/abcx$ag;->b:I

    return-void
.end method

.method h(I)Lgbsdk/common/host/abcx$af;
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/abcx$ag;->dD:Lgbsdk/common/host/abcx$af;

    if-eqz v0, :cond_0

    iput p1, v0, Lgbsdk/common/host/abcx$af;->d:I

    iget-object p1, p0, Lgbsdk/common/host/abcx$ag;->dD:Lgbsdk/common/host/abcx$af;

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/common/host/abcx$ag;->dD:Lgbsdk/common/host/abcx$af;

    goto :goto_0

    :cond_0
    new-instance v0, Lgbsdk/common/host/abcx$af;

    invoke-direct {v0}, Lgbsdk/common/host/abcx$af;-><init>()V

    iput p1, v0, Lgbsdk/common/host/abcx$af;->d:I

    move-object p1, v0

    :goto_0
    return-object p1
.end method
