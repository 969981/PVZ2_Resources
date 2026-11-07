.class public final enum Lgbsdk/optional/applog/abfi;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/optional/applog/abfi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgbsdk/optional/applog/abfi;

.field public static final enum b:Lgbsdk/optional/applog/abfi;

.field public static final enum c:Lgbsdk/optional/applog/abfi;

.field public static final enum d:Lgbsdk/optional/applog/abfi;

.field public static final enum e:Lgbsdk/optional/applog/abfi;

.field public static final synthetic f:[Lgbsdk/optional/applog/abfi;


# instance fields
.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lgbsdk/optional/applog/abfi;

    new-instance v1, Lgbsdk/optional/applog/abfi;

    const-string v2, "EXPOSURE_ONCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lgbsdk/optional/applog/abfi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgbsdk/optional/applog/abfi;->a:Lgbsdk/optional/applog/abfi;

    aput-object v1, v0, v3

    new-instance v1, Lgbsdk/optional/applog/abfi;

    const-string v2, "EXPOSURE_MORE_THAN_ONCE"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lgbsdk/optional/applog/abfi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgbsdk/optional/applog/abfi;->b:Lgbsdk/optional/applog/abfi;

    aput-object v1, v0, v3

    new-instance v1, Lgbsdk/optional/applog/abfi;

    const-string v2, "RESUME_FORM_PAGE"

    const/4 v3, 0x2

    const/4 v5, 0x6

    invoke-direct {v1, v2, v3, v5}, Lgbsdk/optional/applog/abfi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgbsdk/optional/applog/abfi;->c:Lgbsdk/optional/applog/abfi;

    aput-object v1, v0, v3

    new-instance v1, Lgbsdk/optional/applog/abfi;

    const-string v2, "RESUME_FORM_BACK"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v4, v3}, Lgbsdk/optional/applog/abfi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgbsdk/optional/applog/abfi;->d:Lgbsdk/optional/applog/abfi;

    aput-object v1, v0, v4

    new-instance v1, Lgbsdk/optional/applog/abfi;

    const-string v2, "NOT_EXPOSURE"

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lgbsdk/optional/applog/abfi;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgbsdk/optional/applog/abfi;->e:Lgbsdk/optional/applog/abfi;

    aput-object v1, v0, v3

    sput-object v0, Lgbsdk/optional/applog/abfi;->f:[Lgbsdk/optional/applog/abfi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgbsdk/optional/applog/abfi;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/optional/applog/abfi;
    .locals 1

    const-class v0, Lgbsdk/optional/applog/abfi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/optional/applog/abfi;

    return-object p0
.end method

.method public static values()[Lgbsdk/optional/applog/abfi;
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abfi;->f:[Lgbsdk/optional/applog/abfi;

    invoke-virtual {v0}, [Lgbsdk/optional/applog/abfi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/optional/applog/abfi;

    return-object v0
.end method
