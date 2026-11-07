.class public final Lgbsdk/optional/applog/abgb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfk;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgbsdk/optional/applog/abgb;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "data_storage_count"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgbsdk/optional/applog/abfn$ab;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lgbsdk/optional/applog/abce;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "data_statistics"

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lgbsdk/optional/applog/abgb;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {p0}, Lgbsdk/optional/applog/abfn$ab;->a(Lgbsdk/optional/applog/abfn;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lgbsdk/optional/applog/abce;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
