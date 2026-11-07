.class public Lcom/alipay/sdk/m/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/m/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/alipay/sdk/m/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/sdk/m/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/sdk/m/b/b;-><init>(Lcom/alipay/sdk/m/b/b$a;)V

    sput-object v0, Lcom/alipay/sdk/m/b/b$b;->a:Lcom/alipay/sdk/m/b/b;

    return-void
.end method
