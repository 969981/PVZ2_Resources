.class public final enum Lgbsdk/common/host/abfd$ab;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abfd$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum fe:Lgbsdk/common/host/abfd$ab;

.field public static final enum ff:Lgbsdk/common/host/abfd$ab;

.field public static final enum fg:Lgbsdk/common/host/abfd$ab;

.field private static final synthetic fh:[Lgbsdk/common/host/abfd$ab;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgbsdk/common/host/abfd$ab;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgbsdk/common/host/abfd$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abfd$ab;->fe:Lgbsdk/common/host/abfd$ab;

    new-instance v0, Lgbsdk/common/host/abfd$ab;

    const-string v1, "GZIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lgbsdk/common/host/abfd$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abfd$ab;->ff:Lgbsdk/common/host/abfd$ab;

    new-instance v0, Lgbsdk/common/host/abfd$ab;

    const-string v1, "DEFLATER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lgbsdk/common/host/abfd$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abfd$ab;->fg:Lgbsdk/common/host/abfd$ab;

    const/4 v1, 0x3

    new-array v1, v1, [Lgbsdk/common/host/abfd$ab;

    sget-object v5, Lgbsdk/common/host/abfd$ab;->fe:Lgbsdk/common/host/abfd$ab;

    aput-object v5, v1, v2

    sget-object v2, Lgbsdk/common/host/abfd$ab;->ff:Lgbsdk/common/host/abfd$ab;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lgbsdk/common/host/abfd$ab;->fh:[Lgbsdk/common/host/abfd$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgbsdk/common/host/abfd$ab;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abfd$ab;
    .locals 1

    const-class v0, Lgbsdk/common/host/abfd$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abfd$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abfd$ab;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abfd$ab;->fh:[Lgbsdk/common/host/abfd$ab;

    invoke-virtual {v0}, [Lgbsdk/common/host/abfd$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abfd$ab;

    return-object v0
.end method
