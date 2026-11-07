.class public Lcom/alipay/sdk/m/h0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/m/h0/b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/h0/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/m/h0/c;->a:Lcom/alipay/sdk/m/h0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/m/h0/c;->a:Lcom/alipay/sdk/m/h0/b;

    invoke-static {v0}, Lcom/alipay/sdk/m/h0/b;->a(Lcom/alipay/sdk/m/h0/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/sdk/m/h0/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
