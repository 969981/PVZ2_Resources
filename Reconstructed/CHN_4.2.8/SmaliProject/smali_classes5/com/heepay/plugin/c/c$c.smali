.class Lcom/heepay/plugin/c/c$c;
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
.field final synthetic a:Lcom/heepay/plugin/c/c;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/c/c$c;->a:Lcom/heepay/plugin/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/c/c$c;->a:Lcom/heepay/plugin/c/c;

    invoke-virtual {v0}, Lcom/heepay/plugin/c/c;->a()V

    return-void
.end method
