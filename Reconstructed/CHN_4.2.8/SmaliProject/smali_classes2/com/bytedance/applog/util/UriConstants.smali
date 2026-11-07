.class public Lcom/bytedance/applog/util/UriConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:I

.field public static final REGION_DEFAULT:I

.field public static final TOB_CHINA_NEW:Lcom/bytedance/applog/UriConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    const-string v1, "https://klink.volceapplog.com/service/2/device_register/"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://klink.volceapplog.com/service/2/device_update"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setReportOaidUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://klink.volceapplog.com/service/2/app_alert_check/"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://toblog.volceapplog.com/service/2/app_log/"

    const-string v2, "https://tobapplog.volceapplog.com/service/2/app_log/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://toblog.volceapplog.com/service/2/profile/"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://toblog.volceapplog.com/service/2/log_settings/"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://abtest.volceapplog.com/service/2/abtest_config/"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://alink.volceapplog.com/service/2/attribution_data"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    const-string v1, "https://alink.volceapplog.com/service/2/alink_data"

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/util/UriConstants;->TOB_CHINA_NEW:Lcom/bytedance/applog/UriConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 0

    sget-object p0, Lcom/bytedance/applog/util/UriConstants;->TOB_CHINA_NEW:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method
