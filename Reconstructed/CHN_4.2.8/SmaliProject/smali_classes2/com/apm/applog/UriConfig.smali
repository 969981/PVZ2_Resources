.class public Lcom/apm/applog/UriConfig;
.super Ljava/lang/Object;
.source "UriConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/applog/UriConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = "https://apmplus.volces.com"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field public static final PATH_AB:Ljava/lang/String; = "/service/2/abtest_config/"

.field public static final PATH_ACTIVE:Ljava/lang/String; = "/service/2/app_alert_check/"

.field public static final PATH_ALINK_ATTRIBUTION:Ljava/lang/String; = "/service/2/attribution_data"

.field public static final PATH_ALINK_QUERY:Ljava/lang/String; = "/service/2/alink_data"

.field public static final PATH_CONFIG:Ljava/lang/String; = "/service/2/log_settings/"

.field public static final PATH_PROFILE:Ljava/lang/String; = "/service/2/profile/"

.field public static final PATH_REGISTER:Ljava/lang/String; = "/apm/device_register"

.field public static final PATH_SEND:Ljava/lang/String; = "/monitor/collect/c/session"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/apm/applog/UriConfig$Builder;Lcom/apm/applog/UriConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->b:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->c:[Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->c:[Ljava/lang/String;

    .line 8
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->d:[Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->d:[Ljava/lang/String;

    .line 10
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->e:Ljava/lang/String;

    .line 12
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->f:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->f:Ljava/lang/String;

    .line 14
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->g:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->h:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->h:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/apm/applog/UriConfig$Builder;->i:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/apm/applog/UriConfig;->i:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/apm/applog/UriConfig$Builder;->j:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/apm/applog/UriConfig;->j:Ljava/lang/String;

    return-void
.end method

.method public static createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/apm/applog/UriConfig;
    .locals 7

    .line 1
    new-instance v0, Lcom/apm/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/apm/applog/UriConfig$Builder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/apm/device_register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/app_alert_check/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/apm/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/attribution_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/apm/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/service/2/alink_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/apm/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    const/4 v1, 0x0

    const-string v2, "/monitor/collect/c/session"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 6
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    array-length v4, p1

    add-int/2addr v4, v3

    new-array v5, v4, [Ljava/lang/String;

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    :goto_0
    if-ge v3, v4, :cond_1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, -0x1

    aget-object v6, p1, v6

    invoke-static {v1, v6, v2}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    new-array p1, v3, [Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    .line 24
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/service/2/log_settings/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apm/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/abtest_config/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Lcom/apm/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/service/2/profile/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Lcom/apm/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    .line 27
    invoke-virtual {v0}, Lcom/apm/applog/UriConfig$Builder;->build()Lcom/apm/applog/UriConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createUriConfig(I)Lcom/apm/applog/UriConfig;
    .locals 0

    .line 1
    sget-object p0, Lgbsdk/common/host/abdm;->cd:Lcom/apm/applog/UriConfig;

    return-object p0
.end method


# virtual methods
.method public getAbUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAlinkAttributionUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAlinkQueryUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRealUris()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSendUris()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/UriConfig;->e:Ljava/lang/String;

    return-object v0
.end method
