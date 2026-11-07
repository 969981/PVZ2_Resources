.class public Lgbsdk/optional/applog/abdo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/ILogProcessor;


# instance fields
.field public final a:Lcom/bytedance/applog/ILogger;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abdo;->a:Lcom/bytedance/applog/ILogger;

    return-void
.end method


# virtual methods
.method public onLog(Lcom/bytedance/applog/log/LogInfo;)V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abdo;->a:Lcom/bytedance/applog/ILogger;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/ILogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
