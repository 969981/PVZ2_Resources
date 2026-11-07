.class public Lgbsdk/common/host/abjk;
.super Ljava/lang/Object;
.source "CronetSsCallConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abjk$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hL:Ljava/lang/String; = "host_group"

.field private static volatile je:Lgbsdk/common/host/abjk; = null

.field private static final jg:I = 0xfa0

.field private static final ji:Ljava/lang/String; = "enabled_v2"

.field private static final jj:Ljava/lang/String; = "connect_interval_millis"

.field private static final jk:Ljava/lang/String; = "retry_for_not_2xx_code"

.field private static final jl:Ljava/lang/String; = "concurrent_hosts"

.field private static final jm:Ljava/lang/String; = "equal_group"

.field private static final jn:Ljava/lang/String; = "prefix_group"

.field private static final jo:Ljava/lang/String; = "pattern_group"

.field private static final jp:Ljava/lang/String; = "match_rules"

.field private static final jq:Ljava/lang/String; = "fail_count"

.field private static final jr:Ljava/lang/String; = "forbid_seconds"

.field private static final js:Ljava/lang/String; = "block_code_list"

.field private static final jt:Ljava/lang/String; = "bypass_rs_enabled"


# instance fields
.field private volatile jf:I

.field private jh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abjk$ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lgbsdk/common/host/abjk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lgbsdk/common/host/abjk;->jf:I

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    return-void
.end method

.method private P(Ljava/lang/String;)Lgbsdk/common/host/abjk$ab;
    .locals 3

    .line 82
    iget-object v0, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abjk$ab;

    .line 83
    iget-object v2, v1, Lgbsdk/common/host/abjk$ab;->iv:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lgbsdk/common/host/abjk$ab;Z)V
    .locals 5

    .line 298
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    const-string v1, " failed count: "

    const-string v2, "Forbidden: "

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lgbsdk/common/host/abjk$ab;->jB:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 305
    iget p2, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    if-nez p2, :cond_1

    iget-boolean p2, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 308
    iput p2, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    .line 309
    iput-boolean p2, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    return-void

    .line 313
    :cond_2
    iget p2, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    iget v3, p1, Lgbsdk/common/host/abjk$ab;->jB:I

    if-ge p2, v3, :cond_3

    return-void

    .line 317
    :cond_3
    iget-boolean p2, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    if-nez p2, :cond_4

    .line 318
    iput-boolean v0, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lgbsdk/common/host/abjk$ab;->jD:J

    .line 322
    :cond_4
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 323
    sget-object p2, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lgbsdk/common/host/abjk$ab;->jE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lgbsdk/common/host/abjk$ab;->jC:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/bytedance/retrofit2/client/Request;Lgbsdk/common/host/abjk$ab;)Z
    .locals 6

    .line 107
    iget v0, p2, Lgbsdk/common/host/abjk$ab;->jA:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p2, Lgbsdk/common/host/abjk$ab;->jE:Z

    if-eqz v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 115
    :cond_1
    iget-object v2, p2, Lgbsdk/common/host/abjk$ab;->ju:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 123
    sget-object p1, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host not match: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 127
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 132
    :cond_5
    iget-object v0, p2, Lgbsdk/common/host/abjk$ab;->jw:Ljava/util/List;

    invoke-static {v0}, Lgbsdk/common/host/abjk;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    iget-object v0, p2, Lgbsdk/common/host/abjk$ab;->jw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v4

    .line 140
    :cond_7
    iget-object v0, p2, Lgbsdk/common/host/abjk$ab;->jx:Ljava/util/List;

    invoke-static {v0}, Lgbsdk/common/host/abjk;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 141
    iget-object v0, p2, Lgbsdk/common/host/abjk$ab;->jx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    .line 148
    :cond_9
    iget-object v0, p2, Lgbsdk/common/host/abjk$ab;->jy:Ljava/util/List;

    invoke-static {v0}, Lgbsdk/common/host/abjk;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 149
    iget-object p2, p2, Lgbsdk/common/host/abjk$ab;->jy:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_b
    return v1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 226
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 227
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static bE()Lgbsdk/common/host/abjk;
    .locals 2

    .line 45
    sget-object v0, Lgbsdk/common/host/abjk;->je:Lgbsdk/common/host/abjk;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lgbsdk/common/host/abjk;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abjk;->je:Lgbsdk/common/host/abjk;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lgbsdk/common/host/abjk;

    invoke-direct {v1}, Lgbsdk/common/host/abjk;-><init>()V

    sput-object v1, Lgbsdk/common/host/abjk;->je:Lgbsdk/common/host/abjk;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abjk;->je:Lgbsdk/common/host/abjk;

    return-object v0
.end method

.method private bG()V
    .locals 7

    .line 91
    iget-object v0, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abjk$ab;

    .line 92
    iget-boolean v2, v1, Lgbsdk/common/host/abjk$ab;->jE:Z

    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lgbsdk/common/host/abjk$ab;->jD:J

    sub-long/2addr v2, v4

    .line 94
    iget v4, v1, Lgbsdk/common/host/abjk$ab;->jA:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v4, 0x0

    .line 95
    iput-boolean v4, v1, Lgbsdk/common/host/abjk$ab;->jE:Z

    .line 97
    :cond_1
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    sget-object v4, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rule id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lgbsdk/common/host/abjk$ab;->iv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has forbidden duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fail count: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lgbsdk/common/host/abjk$ab;->jC:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " forbidden duration: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lgbsdk/common/host/abjk$ab;->jA:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static isEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 290
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

.method private t(Lorg/json/JSONObject;)V
    .locals 8

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "host_group"

    .line 238
    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abjk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Z

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "concurrent_hosts"

    .line 241
    invoke-static {p1, v2, v1}, Lgbsdk/common/host/abjk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Z

    .line 242
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    .line 245
    :cond_0
    new-instance v2, Lgbsdk/common/host/abjk$ab;

    invoke-direct {v2, v0, v1}, Lgbsdk/common/host/abjk$ab;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "equal_group"

    .line 248
    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abjk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iput-object v0, v2, Lgbsdk/common/host/abjk$ab;->jw:Ljava/util/List;

    .line 251
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "prefix_group"

    .line 252
    invoke-static {p1, v1, v0}, Lgbsdk/common/host/abjk;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    iput-object v0, v2, Lgbsdk/common/host/abjk$ab;->jx:Ljava/util/List;

    .line 255
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pattern_group"

    .line 256
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const/4 v5, 0x0

    .line 258
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 259
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 262
    :try_start_0
    invoke-static {v6, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    :cond_4
    iput-object v0, v2, Lgbsdk/common/host/abjk$ab;->jy:Ljava/util/List;

    :cond_5
    const v0, 0x7fffffff

    const-string v1, "fail_count"

    .line 271
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lgbsdk/common/host/abjk$ab;->jB:I

    const-string v0, "forbid_seconds"

    .line 272
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lgbsdk/common/host/abjk$ab;->jA:I

    const/16 v0, 0xfa0

    const-string v1, "connect_interval_millis"

    .line 273
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lgbsdk/common/host/abjk$ab;->jF:I

    const-string v0, "bypass_rs_enabled"

    const/4 v1, 0x1

    .line 274
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v2, Lgbsdk/common/host/abjk$ab;->iJ:Z

    .line 275
    iget v0, v2, Lgbsdk/common/host/abjk$ab;->jF:I

    if-gtz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "retry_for_not_2xx_code"

    .line 276
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v2, Lgbsdk/common/host/abjk$ab;->iI:Z

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "block_code_list"

    .line 278
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 280
    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_9

    .line 281
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 284
    :cond_9
    iput-object v0, v2, Lgbsdk/common/host/abjk$ab;->jz:Ljava/util/Set;

    .line 286
    :cond_a
    iget-object p1, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lgbsdk/common/host/abjk;->P(Ljava/lang/String;)Lgbsdk/common/host/abjk$ab;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 331
    :cond_1
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/abjk;->a(Lgbsdk/common/host/abjk$ab;Z)V

    return-void
.end method

.method public b(Lcom/bytedance/retrofit2/client/Request;)Lgbsdk/common/host/abjk$ab;
    .locals 3

    .line 63
    invoke-direct {p0}, Lgbsdk/common/host/abjk;->bG()V

    .line 64
    iget-object v0, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abjk$ab;

    .line 65
    invoke-direct {p0, p1, v1}, Lgbsdk/common/host/abjk;->a(Lcom/bytedance/retrofit2/client/Request;Lgbsdk/common/host/abjk$ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bF()Z
    .locals 1

    .line 59
    iget v0, p0, Lgbsdk/common/host/abjk;->jf:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p2}, Lgbsdk/common/host/abjk;->P(Ljava/lang/String;)Lgbsdk/common/host/abjk$ab;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 76
    iget-object v1, p2, Lgbsdk/common/host/abjk$ab;->jz:Ljava/util/Set;

    if-nez v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object p2, p2, Lgbsdk/common/host/abjk$ab;->jz:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onNetConfigChanged(Ljava/lang/String;)V
    .locals 3

    .line 200
    sget-object v0, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetConfigChanged config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "enabled_v2"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgbsdk/common/host/abjk;->jf:I

    .line 208
    iget-object p1, p0, Lgbsdk/common/host/abjk;->jh:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "match_rules"

    .line 209
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 210
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 211
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 212
    invoke-direct {p0, v0}, Lgbsdk/common/host/abjk;->t(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :catchall_0
    sget-object p1, Lgbsdk/common/host/abjk;->TAG:Ljava/lang/String;

    const-string v0, "parse json config error"

    invoke-static {p1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
