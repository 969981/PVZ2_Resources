.class public abstract Lgbsdk/common/host/abmg;
.super Lgbsdk/common/host/ablk;
.source "URLDispatchAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public rx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lgbsdk/common/host/abmg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abmg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lgbsdk/common/host/ablk;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lgbsdk/common/host/abmg;->rx:Z

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abma;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/common/host/abma;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abmi;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abmg;->a(Lgbsdk/common/host/abma;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p2, p3}, Lgbsdk/common/host/abmg;->a(Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;

    move-result-object p2

    .line 24
    new-instance v0, Lgbsdk/common/host/abmi;

    invoke-direct {v0}, Lgbsdk/common/host/abmi;-><init>()V

    .line 25
    sget-object v2, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    if-eq p2, v2, :cond_2

    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v0, Lgbsdk/common/host/abmi;->qX:Z

    .line 27
    iget-wide v2, p0, Lgbsdk/common/host/ablk;->qI:J

    iput-wide v2, v0, Lgbsdk/common/host/abmi;->qW:J

    .line 28
    iget v2, p0, Lgbsdk/common/host/ablk;->mPriority:I

    iput v2, v0, Lgbsdk/common/host/abmi;->mPriority:I

    .line 29
    invoke-virtual {p0}, Lgbsdk/common/host/abmg;->ct()I

    move-result v2

    iput v2, v0, Lgbsdk/common/host/abmi;->qY:I

    .line 30
    iget-object v2, p0, Lgbsdk/common/host/ablk;->qJ:Ljava/lang/String;

    iput-object v2, v0, Lgbsdk/common/host/abmi;->qJ:Ljava/lang/String;

    .line 31
    sget-object v2, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    if-ne p2, v2, :cond_1

    .line 32
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lgbsdk/common/host/abmi;->ra:Ljava/lang/String;

    .line 33
    iget-boolean p3, p0, Lgbsdk/common/host/abmg;->rx:Z

    iput-boolean p3, v0, Lgbsdk/common/host/abmi;->qZ:Z

    .line 35
    :cond_1
    iget p3, p0, Lgbsdk/common/host/abmg;->qK:I

    iput p3, p1, Lgbsdk/common/host/abma;->rL:I

    .line 37
    :cond_2
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 20
    :cond_3
    :goto_0
    invoke-interface {p3, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p1, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    return-object p1
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;J)Z
    .locals 8

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 44
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-wide v4, p3

    .line 45
    invoke-virtual/range {v0 .. v5}, Lgbsdk/common/host/abmg;->a(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;J)Z

    move-result p1

    .line 46
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lgbsdk/common/host/abmg;->rx:Z

    return p1
.end method

.method protected abstract a(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/String;ZI)V
.end method

.method public c(Ljava/lang/String;ZI)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lgbsdk/common/host/abmg;->rx:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgbsdk/common/host/abmg;->b(Ljava/lang/String;ZI)V

    return-void
.end method

.method public abstract ct()I
.end method
