.class public final Lgbsdk/optional/applog/abfj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$af;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->isBavEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    move-result p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
