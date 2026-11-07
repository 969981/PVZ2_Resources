.class public final synthetic Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/talkweb/network/ApiCallback;

.field public final synthetic f$1:Lcom/talkweb/network/model/ApiError;


# direct methods
.method public synthetic constructor <init>(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;->f$0:Lcom/talkweb/network/ApiCallback;

    iput-object p2, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;->f$1:Lcom/talkweb/network/model/ApiError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;->f$0:Lcom/talkweb/network/ApiCallback;

    iget-object v1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$UtOrTEb9k9yU9q8IsYeSZXqTgrg;->f$1:Lcom/talkweb/network/model/ApiError;

    invoke-static {v0, v1}, Lcom/talkweb/network/ApiClient;->lambda$deliverError$2(Lcom/talkweb/network/ApiCallback;Lcom/talkweb/network/model/ApiError;)V

    return-void
.end method
