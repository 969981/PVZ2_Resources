.class public Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;


# direct methods
.method public constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Token\u6821\u9a8c\u9519\u8bef"

    const-string v3, "Token\u6821\u9a8c\u5931\u8d25"

    const-string v4, "\u7248\u672c\u4fe1\u606f\u83b7\u53d6\u9519\u8bef"

    const-string v5, "\u8c03\u7528SubmitPay\u5931\u8d25"

    const-string v6, "\u7248\u672c\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    const-string v7, "\u652f\u4ed8\u9047\u5230\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u53d1\u8d77\u652f\u4ed8"

    const-string v8, "-2"

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v9, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    if-eqz v9, :cond_18

    :try_start_0
    iget v10, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v11, 0x1018

    const-string v12, "\u8fde\u63a5\u670d\u52a1\u5668\u51fa\u9519"

    if-eq v10, v11, :cond_17

    const/16 v11, 0x1019

    const-string v13, "--->"

    if-eq v10, v11, :cond_16

    const-string v14, "\u652f\u4ed8\u53d6\u6d88"

    const-string v15, "\u652f\u4ed8\u6210\u529f"

    const-string v11, "\u652f\u4ed8\u5931\u8d25"

    move-object/from16 v17, v8

    const-string v8, "-1"

    move-object/from16 v18, v3

    const-string v3, "0"

    move-object/from16 v19, v2

    const-string v2, "1"

    move-object/from16 v20, v12

    const/16 v12, 0x1020

    if-eq v10, v12, :cond_11

    const/16 v12, 0x1021

    if-eq v10, v12, :cond_f

    const-string v12, "http"

    move-object/from16 v16, v7

    const-string v7, "----->"

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    move-object/from16 v2, v16

    const-string v3, "---\u4e0a\u62a5\u65e5\u5fd7"

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_10

    :pswitch_0
    :try_start_1
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "\u8c03\u7528GetVersionInfo()\u5f02\u5e38"

    invoke-virtual {v0, v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b(Ljava/lang/String;)V

    invoke-static {v7, v4}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object/from16 v4, v16

    goto/16 :goto_e

    :pswitch_1
    invoke-static {v7, v6}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v2

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "\u8c03\u7528GetVersionInfo()\u5931\u8d25"

    invoke-virtual {v0, v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_2
    const-string v0, "\u7248\u672c\u4fe1\u606f\u83b7\u53d6\u6210\u529f"

    invoke-static {v7, v0}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a()V

    goto/16 :goto_10

    :cond_1
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    goto/16 :goto_10

    :pswitch_3
    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "QUERRY_STATUS_SUCCESS_02"

    invoke-static {v13, v0}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v3, v14}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v8, v11}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QUERRY_STATUS_SUCCESS_03"

    invoke-static {v13, v0}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_4
    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "QUERRY_STATUS_SUCCESS_01"

    invoke-static {v13, v0}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v2, v15}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_5
    invoke-static {v7, v5}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v2

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    const-string v2, "\u7cfb\u7edf\u7ef4\u62a4\u4e2d,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v9, v2}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v5}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_6
    const-string v2, "\u8c03\u7528SubmitPay\u6210\u529f"

    invoke-static {v7, v2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/heepay/plugin/domain/d;

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/d;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---->payType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---->param1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0x16

    const-string v4, ""

    const-string v5, "_"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_8

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_4

    :try_start_2
    const-string v0, "----->\u652f\u4ed8\u7c7b\u578b\u6709\u8bef"

    const-string v2, "----"

    invoke-static {v0, v2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_4
    const-string v2, "wei_xin:"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-boolean v6, v2, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    iput-boolean v7, v2, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->l:Z

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v2, v16

    :try_start_3
    invoke-virtual {v0, v9, v2}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v3, "\u5fae\u4fe1\u652f\u4ed8\u53d1\u8d77\u53c2\u6570\u9519\u8bef"

    :goto_2
    invoke-virtual {v0, v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_7
    :goto_3
    move-object/from16 v2, v16

    const-string v3, "----->\u8fdb\u5165\u4e2d\u4fe1\u8df3\u8f6c\u9875\u9762"

    const-string v4, "----1"

    invoke-static {v3, v4}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->m:Ljava/util/Timer;

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v3, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->m:Ljava/util/Timer;

    new-instance v4, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;

    invoke-direct {v4, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$a;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;)V

    const-wide/16 v8, 0x3a98

    invoke-virtual {v3, v4, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v3, "----->\u8fdb\u5165\u4e2d\u4fe1\u8df3\u8f6c\u9875\u9762"

    const-string v4, "----4"

    invoke-static {v3, v4}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-boolean v6, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->n:Z

    iget-object v3, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    :goto_4
    iput-boolean v7, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    goto :goto_6

    :cond_8
    move-object/from16 v2, v16

    const-string v3, "ali_payqr:"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "ali_pays:"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-boolean v7, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    iput-boolean v6, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->l:Z

    new-instance v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;

    invoke-direct {v3, v1, v9, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/heepay/plugin/e/i;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_10

    :cond_b
    :goto_5
    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->m:Ljava/util/Timer;

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v3, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->m:Ljava/util/Timer;

    new-instance v4, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;

    invoke-direct {v4, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$b;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;)V

    const-wide/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v3, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    goto :goto_4

    :goto_6
    iput-boolean v7, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->l:Z

    goto/16 :goto_10

    :cond_c
    :goto_7
    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-boolean v6, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->j:Z

    iput-boolean v7, v3, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->l:Z

    :goto_8
    invoke-virtual {v3, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_7
    const-string v3, "\u8c03\u7528SubmitPay\u9519\u8bef"

    invoke-static {v7, v3}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v3, "\u8c03\u7528SubmitPay\u5f02\u5e38"

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v3

    invoke-virtual {v3, v9, v0}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v3, "\u8c03\u7528CheckPayTokenID\u5f02\u5e38"

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v3, v18

    invoke-static {v7, v3}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v4}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v3

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v3, "\u8c03\u7528CheckPayTokenID\u5931\u8d25"

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "Token\u6821\u9a8c\u6210\u529f"

    invoke-static {v7, v0}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h()V

    goto/16 :goto_10

    :pswitch_b
    const-string v0, "\u6210\u529f"

    :goto_a
    invoke-static {v3, v0}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_c
    const-string v0, "\u5931\u8d25"

    goto :goto_a

    :cond_f
    move-object v2, v7

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iget-object v0, v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_10

    :cond_10
    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v3, "TODO"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v4, v2

    goto/16 :goto_e

    :cond_11
    move-object v4, v7

    :try_start_4
    iget-object v5, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v6, "\u652f\u4ed8\u5b9dAPP\u5524\u8d77\u6210\u529f"

    invoke-virtual {v5, v6}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->r:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    new-instance v5, Lcom/heepay/plugin/domain/b;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/heepay/plugin/domain/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "9000"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v2, v15}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    move-object/from16 v5, v17

    goto :goto_c

    :cond_12
    const-string v2, "8000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "-3"

    const-string v3, "\u652f\u4ed8\u5904\u7406\u4e2d"

    invoke-virtual {v0, v2, v3}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    const-string v2, "6001"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v3, v14}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    const-string v2, "6002"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v5, v17

    :try_start_5
    invoke-virtual {v0, v5, v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    move-object/from16 v5, v17

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0, v8, v11}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const-string v0, "\u652f\u4ed8\u5b9d\u539f\u751f"

    :goto_d
    invoke-static {v13, v0}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_2
    move-exception v0

    :goto_e
    move-object/from16 v5, v17

    goto :goto_f

    :cond_16
    move-object v4, v7

    move-object v5, v8

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "\u8bf7\u68c0\u67e5\u5546\u6237\u7aef\u63d2\u4ef6\u662f\u5426\u5b8c\u6574"

    invoke-virtual {v0, v5, v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u5b9d-2"

    goto :goto_d

    :cond_17
    move-object v4, v7

    move-object v5, v8

    move-object v3, v12

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    invoke-static {}, Lcom/heepay/plugin/e/j;->a()Lcom/heepay/plugin/e/j;

    move-result-object v0

    invoke-virtual {v0, v9, v3}, Lcom/heepay/plugin/e/j;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    const-string v2, "\u8c03\u7528QueryPayStatus\u5f02\u5e38"

    invoke-virtual {v0, v2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v4, v7

    move-object v5, v8

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---->"

    invoke-static {v3, v2}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->b:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    invoke-virtual {v2, v5, v4}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1005
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1011
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
