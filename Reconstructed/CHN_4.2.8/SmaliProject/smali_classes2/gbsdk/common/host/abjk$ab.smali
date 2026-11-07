.class public Lgbsdk/common/host/abjk$ab;
.super Ljava/lang/Object;
.source "CronetSsCallConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field iI:Z

.field iJ:Z

.field public iv:Ljava/lang/String;

.field jA:I

.field jB:I

.field volatile jC:I

.field volatile jD:J

.field volatile jE:Z

.field jF:I

.field final ju:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final jv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field jw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field jx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field jy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field jz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lgbsdk/common/host/abjk$ab;->ju:Ljava/util/List;

    .line 178
    iput-object p2, p0, Lgbsdk/common/host/abjk$ab;->jv:Ljava/util/List;

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lgbsdk/common/host/abjk$ab;->jD:J

    const/4 p1, 0x0

    .line 180
    iput p1, p0, Lgbsdk/common/host/abjk$ab;->jC:I

    const p2, 0x7fffffff

    .line 181
    iput p2, p0, Lgbsdk/common/host/abjk$ab;->jB:I

    .line 182
    iput p1, p0, Lgbsdk/common/host/abjk$ab;->jA:I

    .line 183
    iput-boolean p1, p0, Lgbsdk/common/host/abjk$ab;->jE:Z

    .line 184
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lgbsdk/common/host/abjk$ab;->iv:Ljava/lang/String;

    .line 185
    iput-boolean p1, p0, Lgbsdk/common/host/abjk$ab;->iI:Z

    const/16 p1, 0xfa0

    .line 186
    iput p1, p0, Lgbsdk/common/host/abjk$ab;->jF:I

    const/4 p1, 0x1

    .line 187
    iput-boolean p1, p0, Lgbsdk/common/host/abjk$ab;->iJ:Z

    return-void
.end method
