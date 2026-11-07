.class public final Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
.super Ljava/lang/Object;
.source "SDKCloudInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

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

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private dW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

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
.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lgbsdk/common/host/abwi;->aKJ:Ljava/util/List;

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKV:Ljava/util/List;

    .line 103
    sget-object v0, Lgbsdk/common/host/abwi;->aKK:Ljava/util/List;

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->dW:Ljava/util/List;

    .line 104
    sget-object v0, Lgbsdk/common/host/abwi;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
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

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-virtual {v1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKV:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->dW:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;)Lcom/monitor/cloudmessage/config/SDKIDynamicParams;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    return-object p0
.end method


# virtual methods
.method public final aid(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig;-><init>(Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;B)V

    return-object v0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SDKIDynamicParams must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aid must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final channel(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final context(Landroid/content/Context;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->e:Landroid/content/Context;

    return-object p0
.end method

.method public final debugMode(Z)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->d:Z

    return-object p0
.end method

.method public final defaultReportDomain(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 2

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lgbsdk/common/host/abwi;->aKK:Ljava/util/List;

    sget-object v1, Lgbsdk/common/host/abwi;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->dW:Ljava/util/List;

    .line 185
    sget-object v0, Lgbsdk/common/host/abwi;->aKJ:Ljava/util/List;

    sget-object v1, Lgbsdk/common/host/abwi;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKV:Ljava/util/List;

    .line 186
    sget-object v0, Lgbsdk/common/host/abwi;->q:Ljava/util/List;

    sget-object v1, Lgbsdk/common/host/abwi;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->i:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public final setDynamicParams(Lcom/monitor/cloudmessage/config/SDKIDynamicParams;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->aKW:Lcom/monitor/cloudmessage/config/SDKIDynamicParams;

    return-object p0
.end method

.method public final token(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final updateVersionCode(Ljava/lang/String;)Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/monitor/cloudmessage/config/SDKCloudInitConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
