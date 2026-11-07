.class public Lcom/talkweb/sdk/util/ErrorCodeException;
.super Ljava/lang/Exception;
.source "ErrorCodeException.java"


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/talkweb/sdk/util/ErrorCodeException;->code:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/talkweb/sdk/util/ErrorCodeException;->setCode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/talkweb/sdk/util/ErrorCodeException;->code:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/talkweb/sdk/util/ErrorCodeException;->setCode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/talkweb/sdk/util/ErrorCodeException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/talkweb/sdk/util/ErrorCodeException;->code:Ljava/lang/String;

    return-void
.end method
