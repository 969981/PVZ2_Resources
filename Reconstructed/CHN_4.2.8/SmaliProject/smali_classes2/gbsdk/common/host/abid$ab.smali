.class public final enum Lgbsdk/common/host/abid$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abid$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum fA:Lgbsdk/common/host/abid$ab;

.field public static final enum fB:Lgbsdk/common/host/abid$ab;

.field public static final enum fC:Lgbsdk/common/host/abid$ab;

.field public static final enum fD:Lgbsdk/common/host/abid$ab;

.field public static final enum fE:Lgbsdk/common/host/abid$ab;

.field public static final enum fF:Lgbsdk/common/host/abid$ab;

.field private static final synthetic fG:[Lgbsdk/common/host/abid$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fA:Lgbsdk/common/host/abid$ab;

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fB:Lgbsdk/common/host/abid$ab;

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "EMPTY_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fC:Lgbsdk/common/host/abid$ab;

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "DANGLING_KEY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fD:Lgbsdk/common/host/abid$ab;

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fE:Lgbsdk/common/host/abid$ab;

    new-instance v0, Lgbsdk/common/host/abid$ab;

    const-string v1, "NULL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abid$ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abid$ab;->fF:Lgbsdk/common/host/abid$ab;

    const/4 v1, 0x6

    new-array v1, v1, [Lgbsdk/common/host/abid$ab;

    sget-object v8, Lgbsdk/common/host/abid$ab;->fA:Lgbsdk/common/host/abid$ab;

    aput-object v8, v1, v2

    sget-object v2, Lgbsdk/common/host/abid$ab;->fB:Lgbsdk/common/host/abid$ab;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abid$ab;->fC:Lgbsdk/common/host/abid$ab;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abid$ab;->fD:Lgbsdk/common/host/abid$ab;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abid$ab;->fE:Lgbsdk/common/host/abid$ab;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lgbsdk/common/host/abid$ab;->fG:[Lgbsdk/common/host/abid$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abid$ab;
    .locals 1

    const-class v0, Lgbsdk/common/host/abid$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abid$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abid$ab;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abid$ab;->fG:[Lgbsdk/common/host/abid$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abid$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abid$ab;

    return-object v0
.end method
