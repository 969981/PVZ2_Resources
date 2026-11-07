.class public abstract Lgbsdk/common/host/abny;
.super Ljava/lang/Object;
.source "QueryFilterAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hL:Ljava/lang/String; = "host_group"

.field private static final hP:Ljava/lang/String; = "equal_group"

.field private static final hQ:Ljava/lang/String; = "prefix_group"

.field private static final hR:Ljava/lang/String; = "pattern_group"

.field private static final uf:Ljava/lang/String; = "rm"

.field private static final ug:Ljava/lang/String; = "encrypt"


# instance fields
.field public mPriority:I

.field public qK:I

.field protected ue:Z

.field private uh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ui:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lgbsdk/common/host/abny;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abny;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lgbsdk/common/host/abny;->ue:Z

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abny;->uh:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abny;->ui:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abny;->uj:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abny;->uk:Ljava/util/Set;

    .line 38
    iput p1, p0, Lgbsdk/common/host/abny;->mPriority:I

    .line 39
    iput p1, p0, Lgbsdk/common/host/abny;->qK:I

    return-void
.end method

.method public static a(Ljava/lang/String;IILorg/json/JSONObject;)Lgbsdk/common/host/abny;
    .locals 1

    const-string v0, "rm"

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance p0, Lgbsdk/common/host/abnu;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abnu;-><init>(I)V

    goto :goto_0

    :cond_0
    const-string v0, "encrypt"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 73
    new-instance p0, Lgbsdk/common/host/abnz;

    invoke-direct {p0, p1}, Lgbsdk/common/host/abnz;-><init>(I)V

    .line 78
    :goto_0
    invoke-virtual {p0, p3}, Lgbsdk/common/host/abny;->E(Lorg/json/JSONObject;)V

    .line 79
    iput p2, p0, Lgbsdk/common/host/abny;->qK:I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 159
    :try_start_1
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private b(Lorg/json/JSONArray;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 177
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private b(Lcom/bytedance/retrofit2/client/Request;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/client/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1}, Lgbsdk/common/host/abny;->h(Lcom/bytedance/retrofit2/client/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abny;->a(Lcom/bytedance/retrofit2/client/Request;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method private static c(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 208
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private h(Lcom/bytedance/retrofit2/client/Request;)Z
    .locals 1

    .line 192
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getQueryFilterPriority()I

    move-result p1

    iget v0, p0, Lgbsdk/common/host/abny;->mPriority:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected B(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "host_group"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abny;->uh:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abny;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string v0, "equal_group"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abny;->ui:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abny;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string v0, "prefix_group"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abny;->uj:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lgbsdk/common/host/abny;->b(Lorg/json/JSONArray;Ljava/util/Set;)V

    const-string v0, "pattern_group"

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abny;->uk:Ljava/util/Set;

    invoke-static {p1, v0}, Lgbsdk/common/host/abny;->a(Lorg/json/JSONArray;Ljava/util/Set;)V

    return-void
.end method

.method protected abstract E(Lorg/json/JSONObject;)V
.end method

.method protected abstract a(Lcom/bytedance/retrofit2/client/Request;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/client/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public a(Lcom/bytedance/retrofit2/client/Request;Ljava/util/Map;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/client/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abkz;",
            ">;)Z"
        }
    .end annotation

    .line 51
    new-instance v0, Lgbsdk/common/host/abkz;

    invoke-direct {v0}, Lgbsdk/common/host/abkz;-><init>()V

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgbsdk/common/host/abkz;->tZ:J

    .line 53
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abny;->b(Lcom/bytedance/retrofit2/client/Request;Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    iget v1, p0, Lgbsdk/common/host/abny;->qK:I

    invoke-virtual {p1, v1}, Lcom/bytedance/retrofit2/client/Request;->setQueryFilterPriority(I)V

    .line 58
    :cond_0
    iput-boolean p2, v0, Lgbsdk/common/host/abkz;->qX:Z

    .line 59
    iget p1, p0, Lgbsdk/common/host/abny;->mPriority:I

    iput p1, v0, Lgbsdk/common/host/abkz;->tY:I

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgbsdk/common/host/abkz;->ua:J

    .line 61
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method protected g(Lcom/bytedance/retrofit2/client/Request;)Z
    .locals 5

    .line 92
    iget-object v0, p0, Lgbsdk/common/host/abny;->uh:Ljava/util/Set;

    invoke-static {v0}, Lgbsdk/common/host/abny;->c(Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abny;->uh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 104
    sget-object v0, Lgbsdk/common/host/abny;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain not match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 108
    :cond_3
    iget-boolean v0, p0, Lgbsdk/common/host/abny;->ue:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lgbsdk/common/host/abnv;->cO()Lgbsdk/common/host/abnv;

    move-result-object v0

    iget-object v0, v0, Lgbsdk/common/host/abnv;->un:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 112
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    sget-object v0, Lgbsdk/common/host/abny;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path is empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 119
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    sub-int/2addr v0, v2

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_6
    iget-object v0, p0, Lgbsdk/common/host/abny;->ui:Ljava/util/Set;

    invoke-static {v0}, Lgbsdk/common/host/abny;->c(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    iget-object v0, p0, Lgbsdk/common/host/abny;->ui:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 130
    :cond_7
    iget-object v0, p0, Lgbsdk/common/host/abny;->uj:Ljava/util/Set;

    invoke-static {v0}, Lgbsdk/common/host/abny;->c(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 131
    iget-object v0, p0, Lgbsdk/common/host/abny;->uj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    .line 138
    :cond_9
    iget-object v0, p0, Lgbsdk/common/host/abny;->uk:Ljava/util/Set;

    invoke-static {v0}, Lgbsdk/common/host/abny;->c(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 139
    iget-object v0, p0, Lgbsdk/common/host/abny;->uk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    if-eqz v3, :cond_a

    .line 140
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_b
    return v1
.end method
