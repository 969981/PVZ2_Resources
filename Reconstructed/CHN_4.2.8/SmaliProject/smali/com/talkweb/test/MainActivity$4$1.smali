.class Lcom/talkweb/test/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity$4;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$4$1;->this$1:Lcom/talkweb/test/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    .line 184
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    .line 187
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;

    .line 188
    iget p2, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->code:I

    const/16 v0, 0x3e8

    const-string v1, "failed error msg is "

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x270f

    if-eq p2, v0, :cond_0

    .line 212
    iget-object p2, p0, Lcom/talkweb/test/MainActivity$4$1;->this$1:Lcom/talkweb/test/MainActivity$4;

    iget-object p2, p2, Lcom/talkweb/test/MainActivity$4;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_0
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "\u652f\u4ed8\u6210\u529f\u4e86----------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/talkweb/test/MainActivity$4$1;->this$1:Lcom/talkweb/test/MainActivity$4;

    iget-object p2, p2, Lcom/talkweb/test/MainActivity$4;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "successful orderNumber is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->orderId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p2, p0, Lcom/talkweb/test/MainActivity$4$1;->this$1:Lcom/talkweb/test/MainActivity$4;

    iget-object p2, p2, Lcom/talkweb/test/MainActivity$4;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancer orderNumber is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->orderId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object p2, p0, Lcom/talkweb/test/MainActivity$4$1;->this$1:Lcom/talkweb/test/MainActivity$4;

    iget-object p2, p2, Lcom/talkweb/test/MainActivity$4;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/PayResultBean;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
