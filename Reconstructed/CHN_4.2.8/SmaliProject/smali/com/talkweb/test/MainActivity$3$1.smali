.class Lcom/talkweb/test/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity$3;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$3$1;->this$1:Lcom/talkweb/test/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3

    .line 132
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 134
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;

    .line 135
    iget p2, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->code:I

    const/16 v0, 0xbbe

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$3$1;->this$1:Lcom/talkweb/test/MainActivity$3;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$3;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "login cancer"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$3$1;->this$1:Lcom/talkweb/test/MainActivity$3;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$3;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "login failed"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object p2, p0, Lcom/talkweb/test/MainActivity$3$1;->this$1:Lcom/talkweb/test/MainActivity$3;

    iget-object p2, p2, Lcom/talkweb/test/MainActivity$3;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login success--uid==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/LoginResultBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$3$1;->this$1:Lcom/talkweb/test/MainActivity$3;

    iget-object p1, p1, Lcom/talkweb/test/MainActivity$3;->this$0:Lcom/talkweb/test/MainActivity;

    const-string p2, "login success"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 145
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
