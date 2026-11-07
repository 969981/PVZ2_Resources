.class final Lcom/talkweb/twOfflineSdk/TwOfflineSDK$19;
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

    .line 884
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$19;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 889
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TwOfflineSDK$19;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->access$300(Landroid/app/Activity;)V

    return-void
.end method
