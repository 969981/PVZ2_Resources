.class public Lcom/tw/pay/sdk/tool/DialogTool;
.super Ljava/lang/Object;
.source "DialogTool.java"


# static fields
.field private static dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dialogDimiss()V
    .locals 1

    .line 19
    sget-object v0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static dialogShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 14
    sget-object p0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 15
    sget-object p0, Lcom/tw/pay/sdk/tool/DialogTool;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
