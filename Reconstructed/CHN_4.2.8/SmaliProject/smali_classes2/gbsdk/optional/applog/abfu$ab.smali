.class public final Lgbsdk/optional/applog/abfu$ab;
.super Lgbsdk/optional/applog/abcj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abfu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbsdk/optional/applog/abcj<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lgbsdk/optional/applog/abfu;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgbsdk/optional/applog/abcj;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lgbsdk/optional/applog/abfu;->k()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
