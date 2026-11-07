.class public Lgbsdk/optional/applog/abfx;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lgbsdk/optional/applog/abfw;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lgbsdk/optional/applog/abfx$ab;

    invoke-direct {v1, p0, p1}, Lgbsdk/optional/applog/abfx$ab;-><init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getGaidTimeOutMilliSeconds()I

    move-result p1

    int-to-long v0, p1

    .line 5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
