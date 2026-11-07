.class public Lgbsdk/common/host/abdm;
.super Ljava/lang/Object;
.source "UriConstants.java"


# static fields
.field public static a:I

.field public static final cd:Lcom/apm/applog/UriConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apm/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/apm/applog/UriConfig$Builder;-><init>()V

    const-string v1, "https://log.snssdk.com/apm/device_register"

    .line 2
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://ichannel.snssdk.com/service/2/app_alert_check/"

    .line 3
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://log.snssdk.com/monitor/collect/c/session"

    const-string v2, "https://applog.snssdk.com/monitor/collect/c/session"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://rtlog.snssdk.com/monitor/collect/c/session"

    const-string v2, "https://rtapplog.snssdk.com/monitor/collect/c/session"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setRealUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://log.snssdk.com/service/2/log_settings/"

    .line 12
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://toblog-alink.ctobsnssdk.com/service/2/attribution_data"

    .line 13
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://toblog-alink.ctobsnssdk.com/service/2/alink_data"

    .line 14
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/apm/applog/UriConfig$Builder;->build()Lcom/apm/applog/UriConfig;

    .line 32
    new-instance v0, Lcom/apm/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/apm/applog/UriConfig$Builder;-><init>()V

    const-string v1, "https://apmplus.volces.com/apm/device_register"

    .line 33
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://apmplus.volces.com/monitor/collect/c/session"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/apm/applog/UriConfig$Builder;->build()Lcom/apm/applog/UriConfig;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abdm;->cd:Lcom/apm/applog/UriConfig;

    return-void
.end method
