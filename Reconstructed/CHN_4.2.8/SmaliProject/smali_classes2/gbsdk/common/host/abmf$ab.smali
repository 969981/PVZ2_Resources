.class public Lgbsdk/common/host/abmf$ab;
.super Ljava/lang/Object;
.source "URLDispatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lgbsdk/common/host/ablk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/ablk;Lgbsdk/common/host/ablk;)I
    .locals 0

    .line 366
    iget p1, p1, Lgbsdk/common/host/ablk;->mPriority:I

    iget p2, p2, Lgbsdk/common/host/ablk;->mPriority:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 363
    check-cast p1, Lgbsdk/common/host/ablk;

    check-cast p2, Lgbsdk/common/host/ablk;

    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abmf$ab;->a(Lgbsdk/common/host/ablk;Lgbsdk/common/host/ablk;)I

    move-result p1

    return p1
.end method
