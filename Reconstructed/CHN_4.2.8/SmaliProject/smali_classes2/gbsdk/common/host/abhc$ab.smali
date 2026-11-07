.class public final enum Lgbsdk/common/host/abhc$ab;
.super Ljava/lang/Enum;
.source "TTDelayStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abhc$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum gh:Lgbsdk/common/host/abhc$ab;

.field public static final enum gi:Lgbsdk/common/host/abhc$ab;

.field public static final enum gj:Lgbsdk/common/host/abhc$ab;

.field public static final enum gk:Lgbsdk/common/host/abhc$ab;

.field private static final synthetic gl:[Lgbsdk/common/host/abhc$ab;


# instance fields
.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lgbsdk/common/host/abhc$ab;

    const-string v1, "NormalStart"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lgbsdk/common/host/abhc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    .line 22
    new-instance v0, Lgbsdk/common/host/abhc$ab;

    const-string v1, "ColdStart"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lgbsdk/common/host/abhc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abhc$ab;->gi:Lgbsdk/common/host/abhc$ab;

    .line 23
    new-instance v0, Lgbsdk/common/host/abhc$ab;

    const-string v1, "HotStart"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lgbsdk/common/host/abhc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abhc$ab;->gj:Lgbsdk/common/host/abhc$ab;

    .line 24
    new-instance v0, Lgbsdk/common/host/abhc$ab;

    const-string v1, "WarmStart"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lgbsdk/common/host/abhc$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abhc$ab;->gk:Lgbsdk/common/host/abhc$ab;

    const/4 v1, 0x4

    new-array v1, v1, [Lgbsdk/common/host/abhc$ab;

    .line 19
    sget-object v6, Lgbsdk/common/host/abhc$ab;->gh:Lgbsdk/common/host/abhc$ab;

    aput-object v6, v1, v2

    sget-object v2, Lgbsdk/common/host/abhc$ab;->gi:Lgbsdk/common/host/abhc$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abhc$ab;->gj:Lgbsdk/common/host/abhc$ab;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lgbsdk/common/host/abhc$ab;->gl:[Lgbsdk/common/host/abhc$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lgbsdk/common/host/abhc$ab;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abhc$ab;
    .locals 1

    .line 19
    const-class v0, Lgbsdk/common/host/abhc$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abhc$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abhc$ab;
    .locals 1

    .line 19
    sget-object v0, Lgbsdk/common/host/abhc$ab;->gl:[Lgbsdk/common/host/abhc$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abhc$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abhc$ab;

    return-object v0
.end method
