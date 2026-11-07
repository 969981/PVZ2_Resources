.class public final synthetic Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/talkweb/test/MainActivity1$8$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/talkweb/test/MainActivity1$8$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;->f$0:Lcom/talkweb/test/MainActivity1$8$1;

    iput-object p2, p0, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;->f$0:Lcom/talkweb/test/MainActivity1$8$1;

    iget-object v1, p0, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/talkweb/test/MainActivity1$8$1;->lambda$onResponse$0$MainActivity1$8$1(Ljava/lang/String;)V

    return-void
.end method
