.class public Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;
.super Ljava/lang/Object;
.source "SDKCloudInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private aKV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private dW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->a:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->b(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->b:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->c(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->c:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->d(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->d:Z

    .line 39
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->e(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->f:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->f(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->e:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->g(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->aKV:Ljava/util/List;

    .line 42
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->h(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->dW:Ljava/util/List;

    .line 43
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->i(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->i:Ljava/util/List;

    .line 44
    invoke-static {p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->j(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    move-result-object p1

    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;B)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;-><init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)V

    return-void
.end method

.method public static builder()Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;

    invoke-direct {v0}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudRequestUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->aKV:Ljava/util/List;

    return-object v0
.end method

.method public getCloudUploadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->dW:Ljava/util/List;

    return-object v0
.end method

.method public getCloudUserUploadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->i:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->f:Landroid/content/Context;

    return-object v0
.end method

.method public getDynamicParams()Lcom/monitor/cloudmessage/config/SDKIDynamicParams;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;->d:Z

    return v0
.end method
