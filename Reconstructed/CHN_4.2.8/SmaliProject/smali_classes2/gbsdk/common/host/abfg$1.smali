.class public final Lgbsdk/common/host/abfg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/ICommonParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abfg;->a(Landroid/content/Context;Lcom/apm/insight/MonitorCrash;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic dX:Lcom/apm/insight/MonitorCrash;

.field final synthetic dY:Lgbsdk/common/host/abfg;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abfg;Lcom/apm/insight/MonitorCrash;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abfg$1;->dY:Lgbsdk/common/host/abfg;

    iput-object p2, p0, Lgbsdk/common/host/abfg$1;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgbsdk/common/host/abfg$1;->dY:Lgbsdk/common/host/abfg;

    invoke-static {v0}, Lgbsdk/common/host/abfg;->b(Lgbsdk/common/host/abfg;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abie;->r(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/abfg$1;->dX:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash$Config;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    invoke-static {v0}, Lcom/apm/insight/runtime/j;->a(Landroid/content/Context;)Lcom/apm/insight/runtime/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/d;->d()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPatchInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
