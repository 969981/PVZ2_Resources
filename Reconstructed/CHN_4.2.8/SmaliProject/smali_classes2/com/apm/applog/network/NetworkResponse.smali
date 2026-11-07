.class public Lcom/apm/applog/network/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public responseBytes:[B

.field public statusCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/apm/applog/network/NetworkResponse;->statusCode:I

    .line 6
    iput-object p2, p0, Lcom/apm/applog/network/NetworkResponse;->headers:Ljava/util/Map;

    .line 7
    iput-object p3, p0, Lcom/apm/applog/network/NetworkResponse;->responseBytes:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/apm/applog/network/NetworkResponse;->statusCode:I

    .line 3
    iput-object p2, p0, Lcom/apm/applog/network/NetworkResponse;->responseBytes:[B

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/network/NetworkResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/network/NetworkResponse;->responseBytes:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apm/applog/network/NetworkResponse;->statusCode:I

    return v0
.end method
