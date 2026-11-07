.class public Lgbsdk/optional/applog/abbr;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lgbsdk/optional/applog/abca;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abca;

    invoke-direct {v0}, Lgbsdk/optional/applog/abca;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abbr;->a:Lgbsdk/optional/applog/abca;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abbr;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lgbsdk/optional/applog/abbr;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lgbsdk/optional/applog/abbr;->a:Lgbsdk/optional/applog/abca;

    invoke-virtual {v0, p0}, Lgbsdk/optional/applog/abca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lgbsdk/optional/applog/abbr;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
