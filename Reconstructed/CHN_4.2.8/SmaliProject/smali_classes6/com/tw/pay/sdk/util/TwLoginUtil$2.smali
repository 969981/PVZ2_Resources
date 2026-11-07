.class Lcom/tw/pay/sdk/util/TwLoginUtil$2;
.super Ljava/lang/Object;
.source "TwLoginUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwLoginUtil;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "moblieRegBtn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 168
    new-instance p1, Lcom/tw/pay/sdk/util/TwRegUtil;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tw/pay/sdk/util/TwRegUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->doRegDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "findPwdTxt"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 177
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    .line 179
    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "findPassword"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webTitle"

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$400(Lcom/tw/pay/sdk/util/TwLoginUtil;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sput v2, Lcom/tw/pay/sdk/ui/WebActivity;->webType:I

    .line 182
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "closeImg"

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    new-instance v0, Lcom/tw/pay/sdk/bean/LoginResultBean;

    invoke-direct {v0}, Lcom/tw/pay/sdk/bean/LoginResultBean;-><init>()V

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$002(Lcom/tw/pay/sdk/util/TwLoginUtil;Lcom/tw/pay/sdk/bean/LoginResultBean;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    .line 188
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object p1

    const-string v0, "05"

    iput-object v0, p1, Lcom/tw/pay/sdk/bean/LoginResultBean;->code:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$300(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$000(Lcom/tw/pay/sdk/util/TwLoginUtil;)Lcom/tw/pay/sdk/bean/LoginResultBean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tw/pay/sdk/callback/TwCallback;->responseData(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$100(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "oneKeyRegBtn"

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$500(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    return-void

    .line 199
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "loginBtn"

    invoke-static {v1, v3}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$600(Lcom/tw/pay/sdk/util/TwLoginUtil;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 201
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u8bf7\u540c\u610f\u670d\u52a1\u6761\u6b3e\u548c\u9690\u79c1\u653f\u7b56\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$600(Lcom/tw/pay/sdk/util/TwLoginUtil;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->saveRegisterSelectPoliy(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 205
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$700(Lcom/tw/pay/sdk/util/TwLoginUtil;)V

    return-void

    .line 208
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$200(Lcom/tw/pay/sdk/util/TwLoginUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_login_selectpoliy"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 210
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$600(Lcom/tw/pay/sdk/util/TwLoginUtil;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$602(Lcom/tw/pay/sdk/util/TwLoginUtil;Z)Z

    .line 211
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwLoginUtil$2;->this$0:Lcom/tw/pay/sdk/util/TwLoginUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$600(Lcom/tw/pay/sdk/util/TwLoginUtil;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->access$800(Lcom/tw/pay/sdk/util/TwLoginUtil;Z)V

    :cond_6
    return-void
.end method
