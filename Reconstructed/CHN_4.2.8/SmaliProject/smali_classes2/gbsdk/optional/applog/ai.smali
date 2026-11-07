.class public final Lgbsdk/optional/applog/ai;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/ai$ag;,
        Lgbsdk/optional/applog/ai$ae;,
        Lgbsdk/optional/applog/ai$af;
    }
.end annotation


# static fields
.field public static a:Lgbsdk/optional/applog/ai$af;

.field public static b:Lgbsdk/optional/applog/ai$af;

.field public static c:Lgbsdk/optional/applog/ai$af;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/ai$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/ai$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/ai;->a:Lgbsdk/optional/applog/ai$af;

    new-instance v0, Lgbsdk/optional/applog/ai$ac;

    invoke-direct {v0}, Lgbsdk/optional/applog/ai$ac;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/ai;->b:Lgbsdk/optional/applog/ai$af;

    new-instance v0, Lgbsdk/optional/applog/ai$ad;

    invoke-direct {v0}, Lgbsdk/optional/applog/ai$ad;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/ai;->c:Lgbsdk/optional/applog/ai$af;

    return-void
.end method

.method public static a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInstance()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static a(Lgbsdk/optional/applog/abfu;Lgbsdk/optional/applog/ai$af;)V
    .locals 3

    .line 15
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p1, v1}, Lgbsdk/optional/applog/ai$af;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lgbsdk/optional/applog/ai$ae;)V
    .locals 2

    .line 7
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p0, v1}, Lgbsdk/optional/applog/ai$ae;->a(Lcom/bytedance/bdtracker/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lgbsdk/optional/applog/ai$ag;Lgbsdk/optional/applog/ai$af;)V
    .locals 4

    .line 13
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/d;

    invoke-interface {p1, v2}, Lgbsdk/optional/applog/ai$af;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    invoke-interface {p0}, Lgbsdk/optional/applog/ai$ag;->a()Lgbsdk/optional/applog/abfu;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lgbsdk/optional/applog/abfu;->o()Lgbsdk/optional/applog/abfu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/d;->receive(Lgbsdk/optional/applog/abfu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    .line 11
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d;->receive([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lgbsdk/optional/applog/ai$af;)Z
    .locals 2

    .line 9
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d;

    invoke-interface {p0, v1}, Lgbsdk/optional/applog/ai$af;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v3, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method
