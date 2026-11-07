.class public final Lgbsdk/common/host/abjq$ab;
.super Ljava/lang/Object;
.source "ThreadPoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# instance fields
.field public hk:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hl:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hm:Ljava/util/concurrent/ThreadPoolExecutor;

.field public hn:Ljava/util/concurrent/ThreadPoolExecutor;

.field public ho:I

.field public hp:I

.field public hq:I

.field public hr:I

.field public hs:J

.field public ht:J

.field public hu:J

.field public hv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lgbsdk/common/host/abjq$ab;->hv:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)Lgbsdk/common/host/abjq$ab;
    .locals 0

    .line 131
    iput-object p1, p0, Lgbsdk/common/host/abjq$ab;->hk:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public b(II)Lgbsdk/common/host/abjq$ab;
    .locals 0

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    if-gt p1, p2, :cond_0

    .line 164
    iput p2, p0, Lgbsdk/common/host/abjq$ab;->ho:I

    .line 165
    iput p1, p0, Lgbsdk/common/host/abjq$ab;->hq:I

    return-object p0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Core thread size must set less equal than Max thread size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Api thread size must set > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/util/concurrent/ThreadPoolExecutor;)Lgbsdk/common/host/abjq$ab;
    .locals 0

    .line 136
    iput-object p1, p0, Lgbsdk/common/host/abjq$ab;->hl:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public bs()Lgbsdk/common/host/abjq;
    .locals 2

    .line 220
    new-instance v0, Lgbsdk/common/host/abjq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/abjq;-><init>(Lgbsdk/common/host/abjq$ab;Lgbsdk/common/host/abjq$1;)V

    return-object v0
.end method

.method public c(II)Lgbsdk/common/host/abjq$ab;
    .locals 0

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    if-gt p1, p2, :cond_0

    .line 183
    iput p2, p0, Lgbsdk/common/host/abjq$ab;->hp:I

    .line 184
    iput p1, p0, Lgbsdk/common/host/abjq$ab;->hr:I

    return-object p0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Core thread size must set less equal than Max thread size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Download thread size must set > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/util/concurrent/ThreadPoolExecutor;)Lgbsdk/common/host/abjq$ab;
    .locals 0

    .line 141
    iput-object p1, p0, Lgbsdk/common/host/abjq$ab;->hm:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public d(Ljava/util/concurrent/ThreadPoolExecutor;)Lgbsdk/common/host/abjq$ab;
    .locals 0

    .line 146
    iput-object p1, p0, Lgbsdk/common/host/abjq$ab;->hn:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public m(J)Lgbsdk/common/host/abjq$ab;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 192
    iput-wide p1, p0, Lgbsdk/common/host/abjq$ab;->hs:J

    return-object p0

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Api keep alive time must set > 0 when allow core thread timeout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Z)Lgbsdk/common/host/abjq$ab;
    .locals 0

    .line 215
    iput-boolean p1, p0, Lgbsdk/common/host/abjq$ab;->hv:Z

    return-object p0
.end method

.method public n(J)Lgbsdk/common/host/abjq$ab;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 201
    iput-wide p1, p0, Lgbsdk/common/host/abjq$ab;->ht:J

    return-object p0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Download keep alive time must set > 0 when allow core thread timeout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(J)Lgbsdk/common/host/abjq$ab;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 210
    iput-wide p1, p0, Lgbsdk/common/host/abjq$ab;->hu:J

    return-object p0

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Immediate keep alive time must set > 0 when allow core thread timeout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
