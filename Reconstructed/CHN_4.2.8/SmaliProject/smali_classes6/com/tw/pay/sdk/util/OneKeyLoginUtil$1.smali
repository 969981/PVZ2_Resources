.class Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;
.super Ljava/lang/Object;
.source "OneKeyLoginUtil.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/OneKeyLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "phone"

    .line 79
    check-cast p1, Lcom/talkweb/sdk/vo/ReturnObject;

    .line 80
    iget-object v1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    new-instance v2, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v2}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$002(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    const-string v1, "system_busy"

    const-string v2, "04"

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0000"

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-instance v4, Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v5

    const-string v6, "01"

    iput-object v6, v5, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tw/pay/sdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v5

    const-string v6, "userNick"

    .line 90
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tw/pay/sdk/bean/LoginResultBean;->nickName:Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v5}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tw/pay/sdk/bean/LoginResultBean;->token:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 94
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 100
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$200(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;Landroid/content/Context;)V

    .line 101
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$300(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "0086"

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$400(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;

    iget-object v4, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    .line 106
    invoke-static {v4}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v4, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1$1;

    invoke-direct {v4, p0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1$1;-><init>(Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;)V

    invoke-virtual {v0, p1, v4}, Lcom/tw/pay/sdk/tool/IndentifyCodeTools;->showIndentifyCodeDialog(Ljava/lang/String;Lcom/tw/pay/sdk/callback/TwCallback;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "999999"

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 119
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 120
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    .line 121
    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "interent_busy"

    invoke-static {v0, v4}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 124
    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    const-string v4, "02"

    iput-object v4, v0, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/talkweb/sdk/vo/ReturnObject;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 131
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    .line 132
    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$000(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    iput-object v2, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tw/pay/sdk/tool/Tools;->setLogined(Landroid/content/Context;Z)V

    .line 137
    iget-object p1, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/OneKeyLoginUtil$1;->this$0:Lcom/tw/pay/sdk/util/OneKeyLoginUtil;

    .line 138
    invoke-static {v0}, Lcom/tw/pay/sdk/util/OneKeyLoginUtil;->access$100(Lcom/tw/pay/sdk/util/OneKeyLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1, v0}, Lcom/tw/pay/sdk/tool/Tools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
