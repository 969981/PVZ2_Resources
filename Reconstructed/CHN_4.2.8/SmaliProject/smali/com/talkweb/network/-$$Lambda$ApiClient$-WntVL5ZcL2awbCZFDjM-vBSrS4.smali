.class public final synthetic Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/talkweb/network/ApiCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/talkweb/network/ApiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;->f$1:Lcom/talkweb/network/ApiCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/talkweb/network/-$$Lambda$ApiClient$-WntVL5ZcL2awbCZFDjM-vBSrS4;->f$1:Lcom/talkweb/network/ApiCallback;

    invoke-static {v0, v1}, Lcom/talkweb/network/ApiClient;->lambda$deliverSuccess$1(Ljava/lang/Object;Lcom/talkweb/network/ApiCallback;)V

    return-void
.end method
