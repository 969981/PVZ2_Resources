.class public Lgbsdk/common/host/abei$ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# static fields
.field public static final eF:Lgbsdk/common/host/abei;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abei;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abei;-><init>(Lgbsdk/common/host/abei$1;)V

    sput-object v0, Lgbsdk/common/host/abei$ac;->eF:Lgbsdk/common/host/abei;

    return-void
.end method
