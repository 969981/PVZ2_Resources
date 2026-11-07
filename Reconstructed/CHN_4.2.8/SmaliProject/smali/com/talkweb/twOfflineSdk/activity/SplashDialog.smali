.class public Lcom/talkweb/twOfflineSdk/activity/SplashDialog;
.super Landroid/app/Dialog;
.source "SplashDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030005

    .line 17
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/activity/SplashDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method
