.class public Lcn/sharesdk/framework/utils/e;
.super Ljava/lang/Object;
.source "PendingIntentUtils.java"


# direct methods
.method public static a(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 0

    const/high16 p3, 0x4000000

    .line 13
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
