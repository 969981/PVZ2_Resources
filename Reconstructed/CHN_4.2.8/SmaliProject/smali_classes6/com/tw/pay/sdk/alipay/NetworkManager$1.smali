.class Lcom/tw/pay/sdk/alipay/NetworkManager$1;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/alipay/NetworkManager;->setDefaultHostnameVerifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/alipay/NetworkManager;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/alipay/NetworkManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tw/pay/sdk/alipay/NetworkManager$1;->this$0:Lcom/tw/pay/sdk/alipay/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
