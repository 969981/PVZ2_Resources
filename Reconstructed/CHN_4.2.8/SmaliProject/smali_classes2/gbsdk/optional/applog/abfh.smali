.class public final Lgbsdk/optional/applog/abfh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/ai$af;


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abbw;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abbw;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abfh;->a:Lgbsdk/optional/applog/abbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 3

    sget-object v0, Lgbsdk/optional/applog/ai;->b:Lgbsdk/optional/applog/ai$af;

    invoke-interface {v0, p1}, Lgbsdk/optional/applog/ai$af;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abfh;->a:Lgbsdk/optional/applog/abbw;

    iget-object v0, v0, Lgbsdk/optional/applog/abbw;->m:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->isAutoTrackPageIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abfh;->a:Lgbsdk/optional/applog/abbw;

    iget-boolean v0, v0, Lgbsdk/optional/applog/abbw;->l:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackFragmentEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v2
.end method
