.class public Lcom/tw/gamesdk/bean/SimpleHelpResponse;
.super Ljava/lang/Object;
.source "SimpleHelpResponse.java"


# instance fields
.field private code:I

.field private data:Lcom/tw/gamesdk/bean/SimpleHelpData;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/tw/gamesdk/bean/SimpleHelpData;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    .line 17
    iput-object p2, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    check-cast p1, Lcom/tw/gamesdk/bean/SimpleHelpResponse;

    .line 36
    iget v2, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    iget v3, p1, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    .line 37
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    iget-object p1, p1, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    .line 38
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    return v0
.end method

.method public getData()Lcom/tw/gamesdk/bean/SimpleHelpData;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    return-void
.end method

.method public setData(Lcom/tw/gamesdk/bean/SimpleHelpData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleApiResponse{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tw/gamesdk/bean/SimpleHelpResponse;->data:Lcom/tw/gamesdk/bean/SimpleHelpData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
