.class public Lcom/alipay/sdk/m/b0/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/b0/a$b;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final synthetic b:Lcom/alipay/sdk/m/b0/a$b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/b0/a$b;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/b0/a$b$a;->b:Lcom/alipay/sdk/m/b0/a$b;

    iput-object p2, p0, Lcom/alipay/sdk/m/b0/a$b$a;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/m/b0/a$b$a;->b:Lcom/alipay/sdk/m/b0/a$b;

    iget-object v0, v0, Lcom/alipay/sdk/m/b0/a$b;->a:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/alipay/sdk/m/b0/a$b$a;->a:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
