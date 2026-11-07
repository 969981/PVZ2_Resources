.class Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil$3;->responseData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$3;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil$3;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$3;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$3;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$3$1;->this$1:Lcom/tw/pay/sdk/util/TwLoginUtil$3;

    iget-object v2, v2, Lcom/tw/pay/sdk/util/TwLoginUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v2}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$900(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$1400(Lcom/tw/pay/sdk/util/TwLoginUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
