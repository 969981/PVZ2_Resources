.class Lcom/tw/pay/sdk/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/tw/pay/sdk/callback/TwLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/ui/MainActivity;->login()V
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

    .line 82
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/MainActivity$3;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 3

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "01"

    const-string v2, "code"

    .line 89
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity$3;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/MainActivity;->access$100(Lcom/tw/pay/sdk/ui/MainActivity;)V

    .line 91
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity$3;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/tw/pay/sdk/ui/MainActivity;->access$200(Lcom/tw/pay/sdk/ui/MainActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tw/pay/sdk/ui/MainActivity$3;->this$0:Lcom/tw/pay/sdk/ui/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tw/pay/sdk/ui/MainActivity;->dialog(Ljava/lang/String;)V

    return-void
.end method
