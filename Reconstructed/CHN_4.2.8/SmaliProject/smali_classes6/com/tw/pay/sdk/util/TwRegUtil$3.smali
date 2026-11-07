.class Lcom/tw/pay/sdk/util/TwRegUtil$3;
.super Ljava/lang/Object;
.source "TwRegUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwRegUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwRegUtil;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwRegUtil;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "backView"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "closeImg"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "regBtn"

    invoke-static {v1, v2}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u8bf7\u540c\u610f\u670d\u52a1\u6761\u6b3e\u548c\u9690\u79c1\u653f\u7b56\uff01"

    if-ne v0, v1, :cond_2

    .line 200
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$300(Lcom/tw/pay/sdk/util/TwRegUtil;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$300(Lcom/tw/pay/sdk/util/TwRegUtil;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->saveRegisterSelectPoliy(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 205
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$400(Lcom/tw/pay/sdk/util/TwRegUtil;)V

    return-void

    .line 209
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "verifyCodeBtn"

    invoke-static {v1, v4}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 210
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$300(Lcom/tw/pay/sdk/util/TwRegUtil;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 211
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$500(Lcom/tw/pay/sdk/util/TwRegUtil;)V

    return-void

    .line 217
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_register_selectpoliy"

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/tool/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 219
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$300(Lcom/tw/pay/sdk/util/TwRegUtil;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$302(Lcom/tw/pay/sdk/util/TwRegUtil;Z)Z

    .line 220
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$300(Lcom/tw/pay/sdk/util/TwRegUtil;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$600(Lcom/tw/pay/sdk/util/TwRegUtil;Z)V

    :cond_5
    return-void

    .line 195
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$100(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwLoginUtil;->getTwPayLoginUtil(Landroid/content/Context;)Lcom/tw/pay/sdk/util/TwLoginUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {v0}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$000(Lcom/tw/pay/sdk/util/TwRegUtil;)Lcom/tw/pay/sdk/callback/TwCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/pay/sdk/util/TwLoginUtil;->doLoginDialog(Lcom/tw/pay/sdk/callback/TwCallback;)V

    .line 196
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwRegUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwRegUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwRegUtil;->access$200(Lcom/tw/pay/sdk/util/TwRegUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
