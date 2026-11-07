.class public final Lcom/talkweb/secondlock/core/UspCommonParams;
.super Ljava/lang/Object;
.source "UspCommonParams.java"


# instance fields
.field private final channelId:I

.field private final channelUid:Ljava/lang/String;

.field private final head:Ljava/lang/String;

.field private final loginInfo:Ljava/lang/String;

.field private final md5:Ljava/lang/String;

.field private final roleUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->head:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->loginInfo:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->md5:Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelId:I

    .line 42
    iput-object p5, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelUid:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->roleUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelId:I

    return v0
.end method

.method public getChannelUid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelUid:Ljava/lang/String;

    return-object v0
.end method

.method public getHead()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->head:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginInfo()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->loginInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleUid()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->roleUid:Ljava/lang/String;

    return-object v0
.end method

.method public into(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->head:Ljava/lang/String;

    const-string v1, "head"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->loginInfo:Ljava/lang/String;

    const-string v1, "loginInfo"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->md5:Ljava/lang/String;

    const-string v1, "md5"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "channelId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->channelUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "channelUid"

    .line 84
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/core/UspCommonParams;->roleUid:Ljava/lang/String;

    const-string v1, "roleUid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-virtual {p0, v0}, Lcom/talkweb/secondlock/core/UspCommonParams;->into(Ljava/util/Map;)V

    return-object v0
.end method
