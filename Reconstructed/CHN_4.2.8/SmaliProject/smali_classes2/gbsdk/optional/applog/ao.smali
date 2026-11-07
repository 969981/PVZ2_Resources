.class public Lgbsdk/optional/applog/ao;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z

.field public static final b:Lgbsdk/optional/applog/abcj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abcj<",
            "Lcom/bytedance/applog/store/kv/IKVStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/ao$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/ao$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/ao;->b:Lgbsdk/optional/applog/abcj;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lgbsdk/optional/applog/ao;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1
    :cond_1
    sget-object v1, Lgbsdk/optional/applog/ao;->b:Lgbsdk/optional/applog/abcj;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lgbsdk/optional/applog/abcj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "_install_started_v2"

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
