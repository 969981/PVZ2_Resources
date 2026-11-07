.class public Lcom/tw/OnLinePaySdk/bean/LogoDialog;
.super Landroid/app/Dialog;
.source "LogoDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030005

    .line 11
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/tw/OnLinePaySdk/bean/LogoDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method
