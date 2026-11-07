.class Lcom/tw/pay/sdk/ui/TwSdkInitActivity$1;
.super Landroid/os/Handler;
.source "TwSdkInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/ui/TwSdkInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/ui/TwSdkInitActivity;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/TwSdkInitActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkInitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/TwSdkInitActivity$1;->this$0:Lcom/tw/pay/sdk/ui/TwSdkInitActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/TwSdkInitActivity;->finish()V

    return-void
.end method
