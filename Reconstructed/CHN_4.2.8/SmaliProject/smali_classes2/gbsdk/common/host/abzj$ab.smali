.class public final Lgbsdk/common/host/abzj$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public final aNi:S

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method private constructor <init>(SIII)V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-short p1, p0, Lgbsdk/common/host/abzj$ab;->aNi:S

    .line 393
    iput p2, p0, Lgbsdk/common/host/abzj$ab;->b:I

    .line 394
    iput p3, p0, Lgbsdk/common/host/abzj$ab;->c:I

    .line 395
    iput p4, p0, Lgbsdk/common/host/abzj$ab;->d:I

    add-int/2addr p4, p3

    .line 396
    iput p4, p0, Lgbsdk/common/host/abzj$ab;->e:I

    return-void
.end method

.method public static a(Lgbsdk/common/host/acbo;Lgbsdk/common/host/acbm;)Lgbsdk/common/host/abzj$ab;
    .locals 3

    .line 401
    invoke-virtual {p1}, Lgbsdk/common/host/acbm;->a()I

    move-result v0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lgbsdk/common/host/acbo;->readShort()S

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    new-instance v1, Lgbsdk/common/host/abzj$ab;

    invoke-virtual {p0}, Lgbsdk/common/host/acbo;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lgbsdk/common/host/acbo;->readInt()I

    move-result p0

    invoke-direct {v1, p1, v2, p0, v0}, Lgbsdk/common/host/abzj$ab;-><init>(SIII)V

    return-object v1

    .line 405
    :catch_0
    new-instance p0, Lgbsdk/common/host/abzj$ab;

    const/4 v0, -0x1

    invoke-virtual {p1}, Lgbsdk/common/host/acbm;->a()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lgbsdk/common/host/abzj$ab;-><init>(SIII)V

    return-object p0
.end method
