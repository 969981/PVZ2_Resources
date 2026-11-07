.class public Lgbsdk/common/host/abce;
.super Ljava/lang/Object;


# static fields
.field public static cP:Lgbsdk/common/host/abct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abct;

    invoke-direct {v0}, Lgbsdk/common/host/abct;-><init>()V

    sput-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abce;->cP:Lgbsdk/common/host/abct;

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abct;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
