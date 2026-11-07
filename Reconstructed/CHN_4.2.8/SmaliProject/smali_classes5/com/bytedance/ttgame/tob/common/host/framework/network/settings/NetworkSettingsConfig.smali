.class public Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;
.super Ljava/lang/Object;
.source "NetworkSettingsConfig.java"


# static fields
.field private static final BSDK_DOMAIN:Ljava/lang/String; = "bsdk_domain"

.field private static final BSDK_URL:Ljava/lang/String; = "https://usdk.dailygn.com/"

.field private static final GSDK_DOMAIN:Ljava/lang/String; = "gsdk_domain"

.field private static final GSDK_URL:Ljava/lang/String; = "https://usdk.dailygn.com/"

.field private static final OPEN_API_DOMAIN:Ljava/lang/String; = "open_api_domain"

.field private static final OPEN_API_URL:Ljava/lang/String; = "https://open.douyin.com/"

.field public static final SETTINGS_NAME:Ljava/lang/String; = "network_config"

.field private static final USDK_DOMAIN:Ljava/lang/String; = "usdk_domain"

.field private static final USDK_URL:Ljava/lang/String; = "https://usdk.dailygn.com/"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field private static final sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;


# instance fields
.field public bsdkDomain:Ljava/lang/String;

.field public cloudDomain:Ljava/lang/String;

.field public gsdkDomain:Ljava/lang/String;

.field public openApiDomain:Ljava/lang/String;

.field public usdkDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://usdk.dailygn.com/"

    .line 29
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->gsdkDomain:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->bsdkDomain:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->usdkDomain:Ljava/lang/String;

    const-string v1, "https://open.douyin.com/"

    .line 35
    iput-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->openApiDomain:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->cloudDomain:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;
    .locals 6

    const-string v0, "network_config"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "c4ebbd2331517b98da5f81d1cb330ffa"

    invoke-static {v1, v3, v2, v4, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    return-object v0

    .line 41
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/CachedDataUtils;->optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    const-string v3, "gsdk_domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->gsdkDomain:Ljava/lang/String;

    .line 43
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    const-string v3, "bsdk_domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->bsdkDomain:Ljava/lang/String;

    .line 44
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    const-string v3, "usdk_domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->usdkDomain:Ljava/lang/String;

    .line 45
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    const-string v3, "open_api_domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->openApiDomain:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Luffy get network_config fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->gsdkDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "https://usdk.dailygn.com/"

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iput-object v1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->gsdkDomain:Ljava/lang/String;

    .line 52
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->bsdkDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iput-object v1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->bsdkDomain:Ljava/lang/String;

    .line 55
    :cond_2
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->usdkDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iput-object v1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->usdkDomain:Ljava/lang/String;

    .line 58
    :cond_3
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    iget-object v0, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->openApiDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    const-string v1, "https://open.douyin.com/"

    iput-object v1, v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->openApiDomain:Ljava/lang/String;

    .line 61
    :cond_4
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;->sInstance:Lcom/bytedance/ttgame/tob/common/host/framework/network/settings/NetworkSettingsConfig;

    return-object v0
.end method
