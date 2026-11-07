.class public final Lcom/bytedance/retrofit2/client/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/client/Request$Builder;
    }
.end annotation


# instance fields
.field public final addCommonParam:Z

.field public final body:Lcom/bytedance/retrofit2/mime/TypedOutput;

.field public extraInfo:Ljava/lang/Object;

.field public final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field public isBodyEncryptEnabled:Z

.field public isQueryEncryptEnabled:Z

.field public final maxLength:I

.field public final method:Ljava/lang/String;

.field public metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field public final priorityLevel:I

.field private queryFilterPriority:I

.field public final requestBody:Losdk/okhttp3/RequestBody;

.field public final requestPriorityLevel:I

.field public final responseStreaming:Z

.field public serviceType:Ljava/lang/String;

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/client/Request$Builder;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/bytedance/retrofit2/client/Request;->queryFilterPriority:I

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    .line 99
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->method:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->method:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->headers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    .line 112
    :goto_0
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 113
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->requestBody:Losdk/okhttp3/RequestBody;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->requestBody:Losdk/okhttp3/RequestBody;

    .line 114
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->priorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request;->priorityLevel:I

    .line 115
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->requestPriorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request;->requestPriorityLevel:I

    .line 116
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->responseStreaming:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->responseStreaming:Z

    .line 117
    iget v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->maxLength:I

    iput v0, p0, Lcom/bytedance/retrofit2/client/Request;->maxLength:I

    .line 118
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->addCommonParam:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->addCommonParam:Z

    .line 119
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->extraInfo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->extraInfo:Ljava/lang/Object;

    .line 120
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->serviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->serviceType:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    .line 122
    iget-object v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->tags:Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->tags:Ljava/util/Map;

    .line 123
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->isQueryEncryptEnabled:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    .line 124
    iget-boolean p1, p1, Lcom/bytedance/retrofit2/client/Request$Builder;->isBodyEncryptEnabled:Z

    iput-boolean p1, p0, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    return-void

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Method must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "URL must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedOutput;IZIZLjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Lcom/bytedance/retrofit2/mime/TypedOutput;",
            "IZIZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x3

    const-string v12, ""

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 64
    invoke-direct/range {v0 .. v13}, Lcom/bytedance/retrofit2/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;IIZIZLjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;IIZIZLjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Lcom/bytedance/retrofit2/mime/TypedOutput;",
            "Losdk/okhttp3/RequestBody;",
            "IIZIZ",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/bytedance/retrofit2/client/Request;->queryFilterPriority:I

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 77
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request;->method:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    .line 86
    :goto_0
    iput-object p4, p0, Lcom/bytedance/retrofit2/client/Request;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 87
    iput-object p5, p0, Lcom/bytedance/retrofit2/client/Request;->requestBody:Losdk/okhttp3/RequestBody;

    .line 88
    iput p6, p0, Lcom/bytedance/retrofit2/client/Request;->priorityLevel:I

    .line 89
    iput p7, p0, Lcom/bytedance/retrofit2/client/Request;->requestPriorityLevel:I

    .line 90
    iput-boolean p8, p0, Lcom/bytedance/retrofit2/client/Request;->responseStreaming:Z

    .line 91
    iput p9, p0, Lcom/bytedance/retrofit2/client/Request;->maxLength:I

    .line 92
    iput-boolean p10, p0, Lcom/bytedance/retrofit2/client/Request;->addCommonParam:Z

    .line 93
    iput-object p11, p0, Lcom/bytedance/retrofit2/client/Request;->extraInfo:Ljava/lang/Object;

    .line 94
    iput-object p12, p0, Lcom/bytedance/retrofit2/client/Request;->serviceType:Ljava/lang/String;

    .line 95
    iput-object p13, p0, Lcom/bytedance/retrofit2/client/Request;->tags:Ljava/util/Map;

    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "URL must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Method must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createUriWithOutQuery(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    if-eqz p0, :cond_2

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "?"

    .line 294
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 298
    :cond_1
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static safeCreateUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    if-eqz p0, :cond_1

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    const-string v0, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v1, ""

    .line 279
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 282
    :catch_1
    invoke-static {p0}, Lcom/bytedance/retrofit2/client/Request;->createUriWithOutQuery(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->requestBody:Losdk/okhttp3/RequestBody;

    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0}, Lcom/bytedance/retrofit2/Utils;->convert(Losdk/okhttp3/RequestBody;)Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/Object;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->extraInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcom/bytedance/retrofit2/client/Header;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/retrofit2/client/Header;

    .line 153
    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/retrofit2/client/Request;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/bytedance/retrofit2/client/Request;->maxLength:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/retrofit2/client/Request;->safeCreateUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriorityLevel()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/bytedance/retrofit2/client/Request;->priorityLevel:I

    return v0
.end method

.method public getQueryFilterPriority()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/bytedance/retrofit2/client/Request;->queryFilterPriority:I

    return v0
.end method

.method public getRequestBody()Losdk/okhttp3/RequestBody;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->requestBody:Losdk/okhttp3/RequestBody;

    return-object v0
.end method

.method public getRequestPriorityLevel()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/bytedance/retrofit2/client/Request;->requestPriorityLevel:I

    return v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/bytedance/retrofit2/client/Request;->headers:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/retrofit2/client/Header;

    .line 166
    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public isAddCommonParam()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->addCommonParam:Z

    return v0
.end method

.method public isBodyEncryptEnabled()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    return v0
.end method

.method public isQueryEncryptEnabled()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    return v0
.end method

.method public isResponseStreaming()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/client/Request;->responseStreaming:Z

    return v0
.end method

.method public newBuilder()Lcom/bytedance/retrofit2/client/Request$Builder;
    .locals 1

    .line 224
    new-instance v0, Lcom/bytedance/retrofit2/client/Request$Builder;

    invoke-direct {v0, p0}, Lcom/bytedance/retrofit2/client/Request$Builder;-><init>(Lcom/bytedance/retrofit2/client/Request;)V

    return-object v0
.end method

.method public setBodyEncryptEnabled(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/client/Request;->isBodyEncryptEnabled:Z

    return-void
.end method

.method public setExtraInfo(Ljava/lang/Object;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request;->extraInfo:Ljava/lang/Object;

    return-void
.end method

.method public setMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/bytedance/retrofit2/client/Request;->metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-void
.end method

.method public setQueryEncryptEnabled(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/client/Request;->isQueryEncryptEnabled:Z

    return-void
.end method

.method public setQueryFilterPriority(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/bytedance/retrofit2/client/Request;->queryFilterPriority:I

    return-void
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 313
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bytedance/retrofit2/client/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/bytedance/retrofit2/client/Request;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
