.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog$1;
.super Ljava/lang/Object;
.source "TwVerifyRewardDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->showVerifyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "\u7528\u6237\u5173\u95ed\u4e86\u5b9e\u540d\u5956\u52b1\u5217\u8868\u754c\u9762"

    .line 76
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyRewardDialog;->dismissDialog()V

    return-void
.end method
