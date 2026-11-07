.class Lcom/heepay/plugin/c/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;Lcom/heepay/plugin/c/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/heepay/plugin/c/c;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/c/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/c/c$d;->b:Lcom/heepay/plugin/c/c;

    iput-object p2, p0, Lcom/heepay/plugin/c/c$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/heepay/plugin/c/c$d;->b:Lcom/heepay/plugin/c/c;

    iget-object v1, p0, Lcom/heepay/plugin/c/c$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    return-void
.end method
