.class public Lcom/bytedance/applog/log/LogUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EVENT_TYPE_EVENT_V3:Ljava/lang/String; = "EVENT_V3"

.field public static final EVENT_TYPE_LAUNCH:Ljava/lang/String; = "LAUNCH"

.field public static final EVENT_TYPE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final EVENT_TYPE_TERMINATE:Ljava/lang/String; = "TERMINATE"

.field public static final EVENT_TYPE_TRACE:Ljava/lang/String; = "TRACE"

.field public static volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "applog_"

    invoke-static {v0, p0}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/applog/log/LogUtils;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static sendJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lgbsdk/optional/applog/abfu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/bytedance/applog/log/LogUtils$a;

    invoke-direct {v1, p1}, Lcom/bytedance/applog/log/LogUtils$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static sendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lgbsdk/optional/applog/abce;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/AbsSingleton;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/log/EventBus;

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/log/EventBus;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/bytedance/applog/log/LogUtils;->a:Z

    return-void
.end method
