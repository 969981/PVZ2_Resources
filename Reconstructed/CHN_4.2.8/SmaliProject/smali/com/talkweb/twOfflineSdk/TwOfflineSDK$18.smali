.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$18;
.super Ljava/lang/Object;
.source "TwOfflineSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->showDialogTipUserGoToAppSettting(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$18;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 895
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$18;->val$activity:Landroid/app/Activity;

    const-string p2, "\u6743\u9650\u83b7\u53d6\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 896
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
