.class Lcom/tw/pay/sdk/alipay/AlipayTool$AlixOnCancelListener;
.super Ljava/lang/Object;
.source "AlipayTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/alipay/AlipayTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlixOnCancelListener"
.end annotation


# instance fields
.field mcontext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$AlixOnCancelListener;->mcontext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 271
    iget-object p1, p0, Lcom/tw/pay/sdk/alipay/AlipayTool$AlixOnCancelListener;->mcontext:Landroid/app/Activity;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method
