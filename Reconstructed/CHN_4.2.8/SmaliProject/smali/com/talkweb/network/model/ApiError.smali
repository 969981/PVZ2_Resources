.class public Lcom/talkweb/network/model/ApiError;
.super Ljava/lang/Object;
.source "ApiError.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final code:Ljava/lang/Integer;

.field private final data:Ljava/lang/Object;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/talkweb/network/model/ApiError;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/talkweb/network/model/ApiError;->code:Ljava/lang/Integer;

    .line 31
    iput-object p2, p0, Lcom/talkweb/network/model/ApiError;->message:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/talkweb/network/model/ApiError;->cause:Ljava/lang/Throwable;

    .line 33
    iput-object p4, p0, Lcom/talkweb/network/model/ApiError;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/talkweb/network/model/ApiError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/talkweb/network/model/ApiError;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/talkweb/network/model/ApiError;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/talkweb/network/model/ApiError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkError()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/talkweb/network/model/ApiError;->code:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiError{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/network/model/ApiError;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/network/model/ApiError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/talkweb/network/model/ApiError;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
