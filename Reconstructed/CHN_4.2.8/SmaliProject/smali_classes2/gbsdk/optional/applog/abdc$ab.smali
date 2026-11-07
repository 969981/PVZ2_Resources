.class public final enum Lgbsdk/optional/applog/abdc$ab;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abdc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/optional/applog/abdc$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgbsdk/optional/applog/abdc$ab;

.field public static final enum b:Lgbsdk/optional/applog/abdc$ab;

.field public static final synthetic c:[Lgbsdk/optional/applog/abdc$ab;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lgbsdk/optional/applog/abdc$ab;

    new-instance v1, Lgbsdk/optional/applog/abdc$ab;

    const-string v2, "PROMOTION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgbsdk/optional/applog/abdc$ab;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgbsdk/optional/applog/abdc$ab;->a:Lgbsdk/optional/applog/abdc$ab;

    aput-object v1, v0, v3

    new-instance v1, Lgbsdk/optional/applog/abdc$ab;

    const-string v2, "ORGANIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lgbsdk/optional/applog/abdc$ab;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgbsdk/optional/applog/abdc$ab;->b:Lgbsdk/optional/applog/abdc$ab;

    aput-object v1, v0, v3

    sput-object v0, Lgbsdk/optional/applog/abdc$ab;->c:[Lgbsdk/optional/applog/abdc$ab;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/optional/applog/abdc$ab;
    .locals 1

    const-class v0, Lgbsdk/optional/applog/abdc$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/optional/applog/abdc$ab;

    return-object p0
.end method

.method public static values()[Lgbsdk/optional/applog/abdc$ab;
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abdc$ab;->c:[Lgbsdk/optional/applog/abdc$ab;

    invoke-virtual {v0}, [Lgbsdk/optional/applog/abdc$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/optional/applog/abdc$ab;

    return-object v0
.end method
