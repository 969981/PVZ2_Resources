.class Lcom/talkweb/test/MainActivity1$8$1;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity1$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity1$8;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity1$8;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResponse$0$MainActivity1$8$1(Ljava/lang/String;)V
    .locals 3

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    const-class v0, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 284
    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 285
    iget v0, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    const/16 v1, 0xbbe

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string v0, "login cancer"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string v0, "login failed"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    iget-object v0, v0, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login success--uid==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "\u767b\u9646\u6210\u529f-----!"

    .line 292
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string v0, "login success"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(ILjava/lang/String;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$8$1;->this$1:Lcom/talkweb/test/MainActivity1$8;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    new-instance v0, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;

    invoke-direct {v0, p0, p2}, Lcom/talkweb/test/-$$Lambda$MainActivity1$8$1$6TOUZwOVQnvtc96BqmU9ZtlcNL8;-><init>(Lcom/talkweb/test/MainActivity1$8$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/talkweb/test/MainActivity1;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
