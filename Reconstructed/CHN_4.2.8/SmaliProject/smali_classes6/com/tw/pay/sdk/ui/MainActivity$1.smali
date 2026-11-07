.class Lcom/tw/pay/sdk/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/MainActivity;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/ui/MainActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$1;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$1;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {p1}, Lcom/tw/pay/sdk/ui/MainActivity;->access$000(Lcom/tw/pay/sdk/ui/MainActivity;)V

    return-void
.end method
