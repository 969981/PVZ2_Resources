.class Lcom/tw/pay/sdk/ui/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tw/pay/sdk/ui/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/MainActivity$4;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$4$1;->this$1:Lcom/tw/pay/sdk/ui/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity$4$1;->this$1:Lcom/tw/pay/sdk/ui/MainActivity$4;

    iget-object v0, v0, Lcom/tw/pay/sdk/ui/MainActivity$4;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/ui/MainActivity;->dialog(Ljava/lang/String;)V

    return-void
.end method
