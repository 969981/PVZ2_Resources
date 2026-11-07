.class public final Lcom/talkweb/network/model/ApiResult;
.super Ljava/lang/Object;
.source "ApiResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final error:Lcom/talkweb/network/model/ApiError;

.field private final success:Z


# direct methods
.method private constructor <init>(ZLjava/lang/Object;Lcom/talkweb/network/model/ApiError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lcom/talkweb/network/model/ApiError;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/talkweb/network/model/ApiResult;->success:Z

    .line 21
    iput-object p2, p0, Lcom/talkweb/network/model/ApiResult;->data:Ljava/lang/Object;

    .line 22
    iput-object p3, p0, Lcom/talkweb/network/model/ApiResult;->error:Lcom/talkweb/network/model/ApiError;

    return-void
.end method

.method public static failure(Lcom/talkweb/network/model/ApiError;)Lcom/talkweb/network/model/ApiResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/talkweb/network/model/ApiError;",
            ")",
            "Lcom/talkweb/network/model/ApiResult<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/talkweb/network/model/ApiResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/talkweb/network/model/ApiResult;-><init>(ZLjava/lang/Object;Lcom/talkweb/network/model/ApiError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/talkweb/network/model/ApiResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/talkweb/network/model/ApiResult<",
            "TT;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/talkweb/network/model/ApiResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/talkweb/network/model/ApiResult;-><init>(ZLjava/lang/Object;Lcom/talkweb/network/model/ApiError;)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/talkweb/network/model/ApiResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Lcom/talkweb/network/model/ApiError;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/talkweb/network/model/ApiResult;->error:Lcom/talkweb/network/model/ApiError;

    return-object v0
.end method

.method public isFailure()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/talkweb/network/model/ApiResult;->success:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/talkweb/network/model/ApiResult;->success:Z

    return v0
.end method
