.class public Lcom/apmplus/sdk/event/SDKEventInitConfig;
.super Ljava/lang/Object;
.source "SDKEventInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;


# direct methods
.method private constructor <init>(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->a:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->b(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->b:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->c(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->c:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->d(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->d:Z

    .line 40
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->e(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->f:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->f(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->e:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->g(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->g:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->h(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->h:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->i(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->i:Ljava/util/List;

    .line 45
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->j(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->j:Ljava/util/List;

    .line 46
    invoke-static {p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->k(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    move-result-object p1

    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;Lcom/apmplus/sdk/event/SDKEventInitConfig$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/apmplus/sdk/event/SDKEventInitConfig;-><init>(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)V

    return-void
.end method

.method public static builder()Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 1

    .line 32
    new-instance v0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;

    invoke-direct {v0}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->f:Landroid/content/Context;

    return-object v0
.end method

.method public getDynamicParams()Lcom/apmplus/sdk/event/SDKEventIDynamicParams;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    return-object v0
.end method

.method public getEventRequestUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->i:Ljava/util/List;

    return-object v0
.end method

.method public getEventUploadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->j:Ljava/util/List;

    return-object v0
.end method

.method public getHostAid()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig;->d:Z

    return v0
.end method
