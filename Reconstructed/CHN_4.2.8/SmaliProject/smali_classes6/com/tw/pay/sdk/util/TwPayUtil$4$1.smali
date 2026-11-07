.class Lcom/tw/pay/sdk/util/TwPayUtil$4$1;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil$4;->onResponse(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/util/TwPayUtil$4;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil$4;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwPayUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwPayUtil$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/util/TwPayUtil$4;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$4$1;->this$1:Lcom/tw/pay/sdk/util/TwPayUtil$4;

    iget-object v1, v1, Lcom/tw/pay/sdk/util/TwPayUtil$4;->val$paywayInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$500(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V

    return-void
.end method
