.class public final Lgbsdk/optional/applog/abdn$ab;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abdn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lgbsdk/optional/applog/abdn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/optional/applog/abco;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lgbsdk/optional/applog/abdn<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lgbsdk/optional/applog/abdn;

    invoke-direct {p1}, Lgbsdk/optional/applog/abdn;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1
    iput-object v1, p1, Lgbsdk/optional/applog/abdn;->b:Ljava/lang/String;

    .line 2
    sget-object v1, Lgbsdk/optional/applog/abco;->H:Lgbsdk/optional/applog/abco$ab;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lgbsdk/optional/applog/abco$ab;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lgbsdk/optional/applog/abco;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lgbsdk/optional/applog/abdn;->c:Lgbsdk/optional/applog/abco;

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Lgbsdk/optional/applog/abdn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lgbsdk/optional/applog/abco;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lgbsdk/optional/applog/abdn<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgbsdk/optional/applog/abdn;

    invoke-direct {v0}, Lgbsdk/optional/applog/abdn;-><init>()V

    instance-of v1, p1, Lgbsdk/optional/applog/abae;

    if-eqz v1, :cond_0

    const-string p1, "DDL request timeout"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, v0, Lgbsdk/optional/applog/abdn;->b:Ljava/lang/String;

    return-object v0
.end method
