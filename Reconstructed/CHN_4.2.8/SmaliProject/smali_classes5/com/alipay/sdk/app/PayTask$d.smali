.class public Lcom/alipay/sdk/app/PayTask$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/app/PayTask;->c(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/m/w/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$d;->c:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Lcom/alipay/sdk/app/PayTask$d;->a:Lcom/alipay/sdk/m/w/a;

    iput-object p3, p0, Lcom/alipay/sdk/app/PayTask$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$d;->c:Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$d;->a:Lcom/alipay/sdk/m/w/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask$d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    return-void
.end method
