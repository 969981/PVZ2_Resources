.class public final Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
.super Ljava/lang/Object;
.source "SDKEventInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apmplus/sdk/event/SDKEventInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

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
.method constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lgbsdk/common/host/aboc;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->i:Ljava/util/List;

    .line 111
    sget-object v0, Lgbsdk/common/host/aboc;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 235
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    invoke-virtual {v1, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;)Lcom/apmplus/sdk/event/SDKEventIDynamicParams;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    return-object p0
.end method


# virtual methods
.method public aid(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public appVersion(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/apmplus/sdk/event/SDKEventInitConfig;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/apmplus/sdk/event/SDKEventInitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apmplus/sdk/event/SDKEventInitConfig;-><init>(Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;Lcom/apmplus/sdk/event/SDKEventInitConfig$1;)V

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDKEventIDynamicParams must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aid must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public channel(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public context(Landroid/content/Context;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->f:Landroid/content/Context;

    return-object p0
.end method

.method public debugMode(Z)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->e:Z

    return-object p0
.end method

.method public defaultReportDomain(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 2

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lgbsdk/common/host/aboc;->a:Ljava/util/List;

    const-string v1, "https://apmplus.volces.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->i:Ljava/util/List;

    .line 215
    sget-object v0, Lgbsdk/common/host/aboc;->b:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->j:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public hostAid(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setDynamicParams(Lcom/apmplus/sdk/event/SDKEventIDynamicParams;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->k:Lcom/apmplus/sdk/event/SDKEventIDynamicParams;

    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public updateVersionCode(Ljava/lang/String;)Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/apmplus/sdk/event/SDKEventInitConfig$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
