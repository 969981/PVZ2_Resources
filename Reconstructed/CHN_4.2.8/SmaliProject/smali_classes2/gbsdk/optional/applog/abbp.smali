.class public Lgbsdk/optional/applog/abbp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lgbsdk/optional/applog/abcj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abcj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abbp$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abbp$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abbp;->a:Lgbsdk/optional/applog/abcj;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lgbsdk/optional/applog/abbp;->a:Lgbsdk/optional/applog/abcj;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
