.class public Lgbsdk/common/host/abjp;
.super Ljava/lang/Object;
.source "CommonParamManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonParamManager"

.field private static volatile hT:Lgbsdk/common/host/abjp; = null

.field private static final hW:I = 0x0

.field private static final hX:I = 0x1


# instance fields
.field public hU:Lgbsdk/common/host/abjm;

.field public volatile hV:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abjp;->hV:Z

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3f

    .line 153
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    const-string p2, "?"

    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, "&"

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    iget-object v2, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v2, v2, Lgbsdk/common/host/abjm;->hH:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p3, :cond_4

    .line 166
    invoke-static {v2}, Lgbsdk/common/host/abjp;->c(Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 170
    :cond_4
    new-instance v2, Landroid/util/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string p1, "UTF-8"

    .line 172
    invoke-static {p2, p1}, Lcom/bytedance/common/utility/NetworkUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addCommonParamsByQueryMap url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonParamManager"

    invoke-static {p2, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    return-object p2
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lgbsdk/common/host/abjp;->c(Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_1
    invoke-static {p2}, Lgbsdk/common/host/abjp;->c(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 129
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 130
    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 136
    :cond_3
    invoke-static {p3}, Lgbsdk/common/host/abjp;->c(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 137
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/regex/Pattern;

    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p2, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public static bx()Lgbsdk/common/host/abjp;
    .locals 2

    .line 28
    sget-object v0, Lgbsdk/common/host/abjp;->hT:Lgbsdk/common/host/abjp;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lgbsdk/common/host/abjp;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abjp;->hT:Lgbsdk/common/host/abjp;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lgbsdk/common/host/abjp;

    invoke-direct {v1}, Lgbsdk/common/host/abjp;-><init>()V

    sput-object v1, Lgbsdk/common/host/abjp;->hT:Lgbsdk/common/host/abjp;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abjp;->hT:Lgbsdk/common/host/abjp;

    return-object v0
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

    .line 178
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


# virtual methods
.method public a(Lcom/bytedance/retrofit2/client/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 62
    iget-object v0, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v0, v0, Lgbsdk/common/host/abjm;->hA:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 63
    invoke-static {v0}, Lgbsdk/common/host/abjp;->c(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/bytedance/frameworks/baselib/network/http/util/UrlUtils;->matchPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CommonParamManager"

    if-nez v0, :cond_3

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Domain not match: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path is empty: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 86
    :cond_4
    iget-boolean v0, p0, Lgbsdk/common/host/abjp;->hV:Z

    if-eqz v0, :cond_5

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ForceAddMinParams match url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Lgbsdk/common/host/abjp;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_5
    iget-object v0, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v0, v0, Lgbsdk/common/host/abjm;->hB:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    .line 92
    iget-object v4, v4, Lgbsdk/common/host/abjm;->hC:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v5, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v5, v5, Lgbsdk/common/host/abjm;->hD:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 93
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-direct {p0, v0, v4, v5, v6}, Lgbsdk/common/host/abjp;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AddMaxParamsPathFilterMap match: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lgbsdk/common/host/abjp;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_6
    iget-object v0, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v0, v0, Lgbsdk/common/host/abjm;->hE:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v4, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    .line 100
    iget-object v4, v4, Lgbsdk/common/host/abjm;->hF:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v5, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-object v5, v5, Lgbsdk/common/host/abjm;->hG:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 101
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {p0, v0, v4, v5, p1}, Lgbsdk/common/host/abjp;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AddMinParamsPathFilterMap match: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Lgbsdk/common/host/abjp;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_7
    iget-object p1, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    iget-boolean p1, p1, Lgbsdk/common/host/abjm;->hz:Z

    if-eqz p1, :cond_8

    const-string p1, "addMinCommonParamsWhenDomainMatch is enabled."

    .line 109
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v3}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Lgbsdk/common/host/abjp;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "add max common params by default."

    .line 113
    invoke-static {v1, p1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v2}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->getCommonParamsByLevel(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lgbsdk/common/host/abjp;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lgbsdk/common/host/abjm;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lgbsdk/common/host/abjp;->hU:Lgbsdk/common/host/abjm;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config is null, please init CommonParamConfig before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CommonParamConfig has been initialized before."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
